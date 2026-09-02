package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.ExtractCardAwardPanel;
   import com.qeedoo.ui.view.comp.ExtractCardMovePanel;
   import com.qeedoo.ui.view.comp.ExtractCharactor;
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
   import mx.containers.Box;
   import mx.containers.Canvas;
   import mx.containers.HBox;
   import mx.containers.VBox;
   import mx.containers.ViewStack;
   import mx.controls.CheckBox;
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class ExtractCardActivity extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public static var EXTRACT_DATE:String = "";
      
      public static var EXTRACT_CARD_FREE_TIME:int = 1;
      
      private var rule:Object = null;
      
      private var _3704tl:VBox;
      
      private var _360765025awardLine2:ExtractCardAwardPanel;
      
      private var charactors:Array = [];
      
      private var _3773vs:ViewStack;
      
      public var _ExtractCardActivity_IntroText1:IntroText;
      
      private var config:Object = null;
      
      private var _360765024awardLine1:ExtractCardAwardPanel;
      
      private var _3696td:HBox;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      public var _ExtractCardActivity_Label1:Label;
      
      private var _1554141559tabBtn0:BasicGlowButton;
      
      private var award:Object = null;
      
      private var _3710tr:VBox;
      
      public var _ExtractCardActivity_Label2:Label;
      
      private var _104087199moveP:ExtractCardMovePanel;
      
      public var flag:Object = null;
      
      private var _core:Core = Core.getInstance();
      
      private var _1287834292panelTitle:BasicTitleCanvas;
      
      private var _360765023awardLine0:ExtractCardAwardPanel;
      
      private var _1554141558tabBtn1:BasicGlowButton;
      
      mx_internal var _watchers:Array = [];
      
      private var _1554141557tabBtn2:BasicGlowButton;
      
      private var _1893917964alertCheck:CheckBox;
      
      private var _3713tu:HBox;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _360765026awardLine3:ExtractCardAwardPanel;
      
      private var _951530617content:Canvas;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":660,
               "height":580,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"panelTitle"
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"tabBtn0",
                  "events":{"click":"__tabBtn0_click"},
                  "stylesFactory":function():void
                  {
                     this.left = "15";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "selected":true,
                        "styleName":"HorizontalTab",
                        "width":68,
                        "y":49
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"tabBtn1",
                  "events":{"click":"__tabBtn1_click"},
                  "stylesFactory":function():void
                  {
                     this.left = "85";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "selected":false,
                        "styleName":"HorizontalTab",
                        "width":68,
                        "y":49
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"tabBtn2",
                  "events":{"click":"__tabBtn2_click"},
                  "stylesFactory":function():void
                  {
                     this.left = "155";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "selected":false,
                        "styleName":"HorizontalTab",
                        "width":68,
                        "y":49
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"content",
                  "stylesFactory":function():void
                  {
                     this.top = "50";
                     this.left = "5";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":650,
                        "height":520,
                        "horizontalScrollPolicy":"off",
                        "verticalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":ViewStack,
                           "id":"vs",
                           "stylesFactory":function():void
                           {
                              this.top = "19";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "percentWidth":100,
                                 "percentHeight":100,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "percentWidth":100,
                                          "percentHeight":100,
                                          "styleName":"RoundedGradientBorder",
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"title",
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "0";
                                                this.top = "10";
                                                this.fontSize = 28;
                                                this.textAlign = "center";
                                                this.fontWeight = "bold";
                                                this.fontFamily = "黑体";
                                                this.color = 16739179;
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":HBox,
                                             "id":"tu",
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "0";
                                                this.top = "15";
                                                this.horizontalAlign = "center";
                                                this.verticalAlign = "middle";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":420,
                                                   "height":60
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":HBox,
                                             "id":"td",
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "0";
                                                this.bottom = "15";
                                                this.horizontalAlign = "center";
                                                this.verticalAlign = "middle";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":420,
                                                   "height":60
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":VBox,
                                             "id":"tl",
                                             "stylesFactory":function():void
                                             {
                                                this.verticalCenter = "0";
                                                this.left = "15";
                                                this.verticalAlign = "middle";
                                                this.horizontalAlign = "center";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":60,
                                                   "height":420
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":VBox,
                                             "id":"tr",
                                             "stylesFactory":function():void
                                             {
                                                this.verticalCenter = "0";
                                                this.right = "15";
                                                this.verticalAlign = "middle";
                                                this.horizontalAlign = "center";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":60,
                                                   "height":420
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Canvas,
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "0";
                                                this.verticalCenter = "0";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":450,
                                                   "height":361,
                                                   "horizontalScrollPolicy":"off",
                                                   "verticalScrollPolicy":"off",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":ExtractCardMovePanel,
                                                      "id":"moveP",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.horizontalCenter = "0";
                                                         this.verticalCenter = "0";
                                                      }
                                                   })]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_ExtractCardActivity_Label1",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.left = "3";
                                                this.bottom = "3";
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"width":270};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":CheckBox,
                                             "id":"alertCheck",
                                             "stylesFactory":function():void
                                             {
                                                this.bottom = "3";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"x":270};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_ExtractCardActivity_Label2",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.left = "285";
                                                this.bottom = "3";
                                                this.color = 16777215;
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "percentWidth":100,
                                          "percentHeight":100,
                                          "styleName":"RoundedGradientBorder",
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":ExtractCardAwardPanel,
                                             "id":"awardLine0",
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "0";
                                                this.top = "3";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"lvl":0};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ExtractCardAwardPanel,
                                             "id":"awardLine1",
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "0";
                                                this.top = "127";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"lvl":1};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ExtractCardAwardPanel,
                                             "id":"awardLine2",
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "0";
                                                this.top = "252";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"lvl":2};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ExtractCardAwardPanel,
                                             "id":"awardLine3",
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "0";
                                                this.top = "377";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"lvl":3};
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "percentWidth":100,
                                          "percentHeight":100,
                                          "styleName":"RoundedGradientBorder",
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":IntroText,
                                             "id":"_ExtractCardActivity_IntroText1",
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "0";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "percentWidth":100,
                                                   "percentHeight":100,
                                                   "visible":true
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
      
      private var _110371416title:RoundedLabel;
      
      public function ExtractCardActivity()
      {
         super();
         mx_internal::_document = this;
         this.width = 660;
         this.height = 580;
         this.styleName = "StandardContent";
         this.addEventListener("creationComplete",___ExtractCardActivity_DragableCanvas1_creationComplete);
         this.addEventListener("removed",___ExtractCardActivity_DragableCanvas1_removed);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ExtractCardActivity._watcherSetupUtil = param1;
      }
      
      private function getStr(param1:Object) : Array
      {
         var _loc3_:Object = null;
         if(!param1)
         {
            return [];
         }
         var _loc2_:Array = [];
         for(_loc3_ in param1)
         {
            _loc2_.push({
               "key":param1[_loc3_],
               "c":rule[param1[_loc3_]]
            });
         }
         return _loc2_;
      }
      
      public function refreshPlayerNumber() : void
      {
         var _loc2_:ExtractCharactor = null;
         var _loc1_:int = 0;
         while(_loc1_ < charactors.length)
         {
            _loc2_ = charactors[_loc1_];
            if(_loc2_)
            {
               _loc2_.refreshNum(flag);
            }
            _loc1_++;
         }
      }
      
      public function showPanel() : void
      {
         initView();
         visible = true;
      }
      
      public function set tu(param1:HBox) : void
      {
         var _loc2_:Object = this._3713tu;
         if(_loc2_ !== param1)
         {
            this._3713tu = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tu",_loc2_,param1));
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
      
      [Bindable(event="propertyChange")]
      public function get alertCheck() : CheckBox
      {
         return this._1893917964alertCheck;
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
      
      private function init() : void
      {
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
      
      public function set tr(param1:VBox) : void
      {
         var _loc2_:Object = this._3710tr;
         if(_loc2_ !== param1)
         {
            this._3710tr = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tr",_loc2_,param1));
         }
      }
      
      public function set alertCheck(param1:CheckBox) : void
      {
         var _loc2_:Object = this._1893917964alertCheck;
         if(_loc2_ !== param1)
         {
            this._1893917964alertCheck = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"alertCheck",_loc2_,param1));
         }
      }
      
      private function refreshAwardNumber() : void
      {
         var _loc1_:Object = null;
         var _loc2_:Object = null;
         for(_loc1_ in award)
         {
            _loc2_ = award[_loc1_];
            if(_loc2_)
            {
               this["awardLine" + _loc1_].refreshAwardNumber(_loc2_);
            }
         }
      }
      
      private function refreshCharactors() : void
      {
         charactors.length = 0;
         var _loc1_:Array = getStr(config.str_up);
         addCharactor(tu,_loc1_);
         var _loc2_:Array = getStr(config.str_down);
         addCharactor(td,_loc2_);
         var _loc3_:Array = getStr(config.str_left);
         addCharactor(tl,_loc3_);
         var _loc4_:Array = getStr(config.str_right);
         addCharactor(tr,_loc4_);
      }
      
      public function set moveP(param1:ExtractCardMovePanel) : void
      {
         var _loc2_:Object = this._104087199moveP;
         if(_loc2_ !== param1)
         {
            this._104087199moveP = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moveP",_loc2_,param1));
         }
      }
      
      public function onGetData(param1:Object) : void
      {
         if(!param1 || !param1.flag || !param1.config || !param1.config.key)
         {
            return;
         }
         award = param1.award;
         EXTRACT_CARD_FREE_TIME = param1.freeTime;
         EXTRACT_DATE = param1.date;
         initAwardIndex();
         if(!config || !config.key || config.key != param1.config.key)
         {
            config = param1.config;
            rule = param1.rule;
            refreshCharactors();
            refreshPic();
            refreshAwardPanel();
         }
         refreshAwardNumber();
         flag = param1.flag;
         refreshPlayerNumber();
         visible = true;
      }
      
      private function _ExtractCardActivity_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.EXTRACT_CARD_PANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            panelTitle.text = param1;
         },"panelTitle.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.EXTRACT_CARD_PANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn0.label = param1;
         },"tabBtn0.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.EXTRACT_CARD_PANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn1.label = param1;
         },"tabBtn1.label");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.EXTRACT_CARD_PANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn2.label = param1;
         },"tabBtn2.label");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.EXTRACT_CARD_PANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ExtractCardActivity_Label1.text = param1;
         },"_ExtractCardActivity_Label1.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.EXTRACT_CARD_PANEL_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ExtractCardActivity_Label2.text = param1;
         },"_ExtractCardActivity_Label2.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.EXTRACT_CARD_PANEL_U[20];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ExtractCardActivity_IntroText1.htmlText = param1;
         },"_ExtractCardActivity_IntroText1.htmlText");
         result[6] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get title() : RoundedLabel
      {
         return this._110371416title;
      }
      
      [Bindable(event="propertyChange")]
      public function get awardLine0() : ExtractCardAwardPanel
      {
         return this._360765023awardLine0;
      }
      
      [Bindable(event="propertyChange")]
      public function get awardLine2() : ExtractCardAwardPanel
      {
         return this._360765025awardLine2;
      }
      
      [Bindable(event="propertyChange")]
      public function get awardLine3() : ExtractCardAwardPanel
      {
         return this._360765026awardLine3;
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
      public function get awardLine1() : ExtractCardAwardPanel
      {
         return this._360765024awardLine1;
      }
      
      [Bindable(event="propertyChange")]
      public function get td() : HBox
      {
         return this._3696td;
      }
      
      public function __tabBtn0_click(param1:MouseEvent) : void
      {
         viewChange(0);
      }
      
      [Bindable(event="propertyChange")]
      public function get tl() : VBox
      {
         return this._3704tl;
      }
      
      [Bindable(event="propertyChange")]
      public function get content() : Canvas
      {
         return this._951530617content;
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
      
      [Bindable(event="propertyChange")]
      public function get tu() : HBox
      {
         return this._3713tu;
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
      
      [Bindable(event="propertyChange")]
      public function get tabBtn2() : BasicGlowButton
      {
         return this._1554141557tabBtn2;
      }
      
      public function ___ExtractCardActivity_DragableCanvas1_removed(param1:Event) : void
      {
         close();
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:ExtractCardActivity = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ExtractCardActivity_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_ExtractCardActivityWatcherSetupUtil");
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
      
      public function checkFree() : Boolean
      {
         if(Boolean(flag && flag.free) && Boolean(flag.free.day == EXTRACT_DATE) && int(flag.free.num) < EXTRACT_CARD_FREE_TIME)
         {
            return true;
         }
         return false;
      }
      
      [Bindable(event="propertyChange")]
      public function get moveP() : ExtractCardMovePanel
      {
         return this._104087199moveP;
      }
      
      private function initAwardIndex() : void
      {
         var _loc1_:Object = null;
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         if(!award)
         {
            return;
         }
         for(_loc1_ in award)
         {
            _loc2_ = award[_loc1_];
            if(_loc2_)
            {
               for(_loc3_ in _loc2_)
               {
                  _loc4_ = _loc2_[_loc3_];
                  if(_loc4_)
                  {
                     _loc4_.awardId = int(_loc3_);
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tr() : VBox
      {
         return this._3710tr;
      }
      
      private function refreshPic() : void
      {
         moveP.getRes();
      }
      
      public function set title(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._110371416title;
         if(_loc2_ !== param1)
         {
            this._110371416title = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"title",_loc2_,param1));
         }
      }
      
      public function __tabBtn1_click(param1:MouseEvent) : void
      {
         viewChange(1);
      }
      
      [Bindable(event="propertyChange")]
      public function get panelTitle() : BasicTitleCanvas
      {
         return this._1287834292panelTitle;
      }
      
      private function viewChange(param1:int) : void
      {
         vs.selectedIndex = param1;
         this["tabBtn0"].selected = param1 == 0;
         this["tabBtn1"].selected = param1 == 1;
         this["tabBtn2"].selected = param1 == 2;
      }
      
      private function _ExtractCardActivity_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.EXTRACT_CARD_PANEL_U[0];
         _loc1_ = Language.EXTRACT_CARD_PANEL_U[1];
         _loc1_ = Language.EXTRACT_CARD_PANEL_U[2];
         _loc1_ = Language.EXTRACT_CARD_PANEL_U[3];
         _loc1_ = Language.EXTRACT_CARD_PANEL_U[4];
         _loc1_ = Language.EXTRACT_CARD_PANEL_U[5];
         _loc1_ = Language.EXTRACT_CARD_PANEL_U[20];
      }
      
      [Bindable(event="propertyChange")]
      public function get vs() : ViewStack
      {
         return this._3773vs;
      }
      
      private function addCharactor(param1:Box, param2:Array) : void
      {
         var _loc4_:ExtractCharactor = null;
         var _loc5_:Object = null;
         param1.removeAllChildren();
         if(!param2 || param2.length == 0)
         {
            return;
         }
         var _loc3_:int = 0;
         while(_loc3_ < param2.length)
         {
            _loc4_ = new ExtractCharactor();
            _loc5_ = param2[_loc3_];
            _loc4_.refresh(_loc5_["key"],_loc5_["c"],0);
            charactors.push(_loc4_);
            param1.addChild(_loc4_);
            _loc3_++;
         }
      }
      
      public function set awardLine2(param1:ExtractCardAwardPanel) : void
      {
         var _loc2_:Object = this._360765025awardLine2;
         if(_loc2_ !== param1)
         {
            this._360765025awardLine2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"awardLine2",_loc2_,param1));
         }
      }
      
      public function set awardLine3(param1:ExtractCardAwardPanel) : void
      {
         var _loc2_:Object = this._360765026awardLine3;
         if(_loc2_ !== param1)
         {
            this._360765026awardLine3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"awardLine3",_loc2_,param1));
         }
      }
      
      public function set awardLine0(param1:ExtractCardAwardPanel) : void
      {
         var _loc2_:Object = this._360765023awardLine0;
         if(_loc2_ !== param1)
         {
            this._360765023awardLine0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"awardLine0",_loc2_,param1));
         }
      }
      
      public function onEextractCardActivityExtract(param1:Object) : void
      {
         var _loc2_:String = null;
         if(Boolean(param1) && Boolean(param1.gid))
         {
            _loc2_ = rule[param1.gid];
            if(_loc2_)
            {
               _core.sysMsg(Language.EXTRACT_CARD_PANEL_U[7].toString().replace("{c}",_loc2_));
               if(Boolean(param1.type) && param1.type == 1)
               {
                  _core.sysMsg(Language.EXTRACT_CARD_PANEL_U[18].toString().replace("{num}",param1.left));
               }
               moveP.showGet(_loc2_,param1.index);
            }
            if(!flag["data"][param1.gid])
            {
               flag["data"][param1.gid] = 0;
            }
            flag["data"][param1.gid] = int(flag["data"][param1.gid]) + 1;
            if(flag.free)
            {
               ++flag.free.num;
            }
            refreshPlayerNumber();
         }
      }
      
      public function onExtractCardActivityGetAward(param1:Object) : void
      {
         if(!param1 || !param1.flag)
         {
            if(Boolean(param1) && int(param1.type) == 1)
            {
               if(param1.award)
               {
                  award = param1.award;
                  initAwardIndex();
                  refreshAwardNumber();
               }
               _core.sysMsg(Language.EXTRACT_CARD_PANEL_U[19]);
            }
            else
            {
               _core.sysMsg(Language.EXTRACT_CARD_PANEL_U[13]);
            }
            return;
         }
         _core.sysMsg(Language.EXTRACT_CARD_PANEL_U[14]);
         flag = param1.data;
         award = param1.award;
         initAwardIndex();
         refreshPlayerNumber();
         refreshAwardNumber();
      }
      
      public function ___ExtractCardActivity_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      public function set awardLine1(param1:ExtractCardAwardPanel) : void
      {
         var _loc2_:Object = this._360765024awardLine1;
         if(_loc2_ !== param1)
         {
            this._360765024awardLine1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"awardLine1",_loc2_,param1));
         }
      }
      
      override public function initView() : void
      {
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         _core.remote.call("extractCardActivityGetData",new Responder(onGetData));
      }
      
      public function set td(param1:HBox) : void
      {
         var _loc2_:Object = this._3696td;
         if(_loc2_ !== param1)
         {
            this._3696td = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"td",_loc2_,param1));
         }
      }
      
      private function refreshAwardPanel() : void
      {
         var _loc1_:Object = null;
         var _loc2_:Object = null;
         for(_loc1_ in award)
         {
            _loc2_ = award[_loc1_];
            if(_loc2_)
            {
               this["awardLine" + _loc1_].refreshAward(_loc2_);
            }
         }
      }
      
      public function set tl(param1:VBox) : void
      {
         var _loc2_:Object = this._3704tl;
         if(_loc2_ !== param1)
         {
            this._3704tl = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tl",_loc2_,param1));
         }
      }
      
      public function set content(param1:Canvas) : void
      {
         var _loc2_:Object = this._951530617content;
         if(_loc2_ !== param1)
         {
            this._951530617content = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"content",_loc2_,param1));
         }
      }
      
      public function __tabBtn2_click(param1:MouseEvent) : void
      {
         viewChange(2);
      }
      
      private function close() : void
      {
         moveP.close();
      }
   }
}

