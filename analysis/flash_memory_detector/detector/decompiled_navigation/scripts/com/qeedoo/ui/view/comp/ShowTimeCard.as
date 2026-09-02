package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.event.GameDataEvent;
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
   import mx.controls.Image;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class ShowTimeCard extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _ShowTimeCard_BasicDelayButton1:BasicDelayButton;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _3002509area:RoundedLabel;
      
      mx_internal var _watchers:Array = [];
      
      private var _1872065246playerImg:Image;
      
      private var _2096610540playername:RoundedLabel;
      
      private var _cardIndex:int;
      
      private var _639303740voteNum:RoundedLabel;
      
      private var _name:String;
      
      private var _3492908rank:RoundedLabel;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":172.5,
               "height":226,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Image,
                  "id":"playerImg",
                  "stylesFactory":function():void
                  {
                     this.horizontalAlign = "center";
                     this.horizontalCenter = "0";
                     this.top = "3";
                     this.bottom = "3";
                     this.left = "3";
                     this.right = "3";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"scaleContent":true};
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.backgroundColor = 0;
                     this.backgroundAlpha = 0.41;
                     this.bottom = "2";
                     this.left = "2";
                     this.right = "2";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "height":69,
                        "verticalScrollPolicy":"off",
                        "horizontalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"area",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "text":"区服信息",
                                 "x":10,
                                 "y":7,
                                 "width":115
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"playername",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "text":"角色名",
                                 "x":10,
                                 "y":25,
                                 "width":150
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"rank",
                           "stylesFactory":function():void
                           {
                              this.right = "10";
                              this.color = 16711680;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "text":"排名",
                                 "y":7
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"voteNum",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 15;
                              this.color = 16711680;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":44,
                                 "width":110
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicDelayButton,
                           "id":"_ShowTimeCard_BasicDelayButton1",
                           "events":{"click":"___ShowTimeCard_BasicDelayButton1_click"},
                           "stylesFactory":function():void
                           {
                              this.right = "5";
                              this.bottom = "3";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "clickDelay":100,
                                 "styleName":"BtnStdGreen"
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      private var _cardData:Object;
      
      mx_internal var _bindings:Array = [];
      
      public function ShowTimeCard()
      {
         super();
         mx_internal::_document = this;
         this.width = 172.5;
         this.height = 226;
         this.styleName = "CanvasBorder";
         this.verticalScrollPolicy = "off";
         this.horizontalScrollPolicy = "off";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ShowTimeCard._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get rank() : RoundedLabel
      {
         return this._3492908rank;
      }
      
      [Bindable(event="propertyChange")]
      public function get voteNum() : RoundedLabel
      {
         return this._639303740voteNum;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:ShowTimeCard = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ShowTimeCard_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_ShowTimeCardWatcherSetupUtil");
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
      public function get playername() : RoundedLabel
      {
         return this._2096610540playername;
      }
      
      public function get cardData() : Object
      {
         return _cardData;
      }
      
      public function set playername(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._2096610540playername;
         if(_loc2_ !== param1)
         {
            this._2096610540playername = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"playername",_loc2_,param1));
         }
      }
      
      public function set area(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._3002509area;
         if(_loc2_ !== param1)
         {
            this._3002509area = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"area",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get area() : RoundedLabel
      {
         return this._3002509area;
      }
      
      public function set playerImg(param1:Image) : void
      {
         var _loc2_:Object = this._1872065246playerImg;
         if(_loc2_ !== param1)
         {
            this._1872065246playerImg = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"playerImg",_loc2_,param1));
         }
      }
      
      public function set rank(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._3492908rank;
         if(_loc2_ !== param1)
         {
            this._3492908rank = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rank",_loc2_,param1));
         }
      }
      
      public function ___ShowTimeCard_BasicDelayButton1_click(param1:MouseEvent) : void
      {
         vote();
      }
      
      private function _ShowTimeCard_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SHOW_TIME_PANEL[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            voteNum.text = param1;
         },"voteNum.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SHOW_TIME_PANEL[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ShowTimeCard_BasicDelayButton1.label = param1;
         },"_ShowTimeCard_BasicDelayButton1.label");
         result[1] = binding;
         return result;
      }
      
      private function vote() : void
      {
         var _loc1_:GameDataEvent = new GameDataEvent("showTimeCardClick",true);
         _loc1_.data = _cardData;
         this.dispatchEvent(_loc1_);
      }
      
      [Bindable(event="propertyChange")]
      public function get playerImg() : Image
      {
         return this._1872065246playerImg;
      }
      
      public function set cardData(param1:Object) : void
      {
         _cardData = param1;
         area.text = param1.a;
         playername.text = param1.n;
         rank.text = "排名: " + param1.r;
         voteNum.text = param1.v + " 票";
         playerImg.source = "../img/" + param1.i;
      }
      
      public function set voteNum(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._639303740voteNum;
         if(_loc2_ !== param1)
         {
            this._639303740voteNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"voteNum",_loc2_,param1));
         }
      }
      
      private function _ShowTimeCard_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.SHOW_TIME_PANEL[2];
         _loc1_ = Language.SHOW_TIME_PANEL[1];
      }
   }
}

