package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
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
   import mx.containers.Tile;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class MysTreBag extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var clickCall:Function;
      
      private var _1335219303clickSlot23:ClickSlot;
      
      private var _788212405clickSlot1:ClickSlot;
      
      public var _MysTreBag_BasicDelayButton1:BasicDelayButton;
      
      private var _788212401clickSlot5:ClickSlot;
      
      private var _1335219271clickSlot12:ClickSlot;
      
      private var _179436332_itemDic:Object;
      
      private var _1335219306clickSlot26:ClickSlot;
      
      private var _788212398clickSlot8:ClickSlot;
      
      private var _1335219274clickSlot15:ClickSlot;
      
      private var _1335219301clickSlot21:ClickSlot;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1335219309clickSlot29:ClickSlot;
      
      private var _788212404clickSlot2:ClickSlot;
      
      private var _1335219277clickSlot18:ClickSlot;
      
      private var _788212400clickSlot6:ClickSlot;
      
      private var _1335219304clickSlot24:ClickSlot;
      
      private var _788212397clickSlot9:ClickSlot;
      
      private var _1335219272clickSlot13:ClickSlot;
      
      private var _1335219269clickSlot10:ClickSlot;
      
      private var _1335219307clickSlot27:ClickSlot;
      
      private var _788212403clickSlot3:ClickSlot;
      
      private var _1335219275clickSlot16:ClickSlot;
      
      mx_internal var _watchers:Array = [];
      
      private var _607339634pageSelector:PageSelectorOnly;
      
      private var _1335219302clickSlot22:ClickSlot;
      
      private var _1335219270clickSlot11:ClickSlot;
      
      private var _1335219278clickSlot19:ClickSlot;
      
      private var _1335219305clickSlot25:ClickSlot;
      
      private var _788212402clickSlot4:ClickSlot;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _1335219273clickSlot14:ClickSlot;
      
      private var _mysTreBagData:Object;
      
      private var _1335219308clickSlot28:ClickSlot;
      
      private var _1335219331clickSlot30:ClickSlot;
      
      mx_internal var _bindings:Array = [];
      
      private var _1335219300clickSlot20:ClickSlot;
      
      private var _788212399clickSlot7:ClickSlot;
      
      private var _1335219276clickSlot17:ClickSlot;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":225,
               "height":248,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Tile,
                  "stylesFactory":function():void
                  {
                     this.horizontalGap = 4;
                     this.verticalGap = 6;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":224,
                        "height":196,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":ClickSlot,
                           "id":"clickSlot1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "clickCall":clickHandler
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ClickSlot,
                           "id":"clickSlot2",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "clickCall":clickHandler
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ClickSlot,
                           "id":"clickSlot3",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "clickCall":clickHandler
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ClickSlot,
                           "id":"clickSlot4",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "clickCall":clickHandler
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ClickSlot,
                           "id":"clickSlot5",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "clickCall":clickHandler
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ClickSlot,
                           "id":"clickSlot6",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "clickCall":clickHandler
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ClickSlot,
                           "id":"clickSlot7",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "clickCall":clickHandler
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ClickSlot,
                           "id":"clickSlot8",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "clickCall":clickHandler
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ClickSlot,
                           "id":"clickSlot9",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "clickCall":clickHandler
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ClickSlot,
                           "id":"clickSlot10",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "clickCall":clickHandler
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ClickSlot,
                           "id":"clickSlot11",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "clickCall":clickHandler
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ClickSlot,
                           "id":"clickSlot12",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "clickCall":clickHandler
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ClickSlot,
                           "id":"clickSlot13",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "clickCall":clickHandler
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ClickSlot,
                           "id":"clickSlot14",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "clickCall":clickHandler
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ClickSlot,
                           "id":"clickSlot15",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "clickCall":clickHandler
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ClickSlot,
                           "id":"clickSlot16",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "clickCall":clickHandler
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ClickSlot,
                           "id":"clickSlot17",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "clickCall":clickHandler
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ClickSlot,
                           "id":"clickSlot18",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "clickCall":clickHandler
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ClickSlot,
                           "id":"clickSlot19",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "clickCall":clickHandler
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ClickSlot,
                           "id":"clickSlot20",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "clickCall":clickHandler
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ClickSlot,
                           "id":"clickSlot21",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "clickCall":clickHandler
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ClickSlot,
                           "id":"clickSlot22",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "clickCall":clickHandler
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ClickSlot,
                           "id":"clickSlot23",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "clickCall":clickHandler
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ClickSlot,
                           "id":"clickSlot24",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "clickCall":clickHandler
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ClickSlot,
                           "id":"clickSlot25",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "clickCall":clickHandler
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ClickSlot,
                           "id":"clickSlot26",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "clickCall":clickHandler
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ClickSlot,
                           "id":"clickSlot27",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "clickCall":clickHandler
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ClickSlot,
                           "id":"clickSlot28",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "clickCall":clickHandler
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ClickSlot,
                           "id":"clickSlot29",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "clickCall":clickHandler
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ClickSlot,
                           "id":"clickSlot30",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "clickCall":clickHandler
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":PageSelectorOnly,
                  "id":"pageSelector",
                  "stylesFactory":function():void
                  {
                     this.bottom = "29";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":38,
                        "changeCall":updatePage
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicDelayButton,
                  "id":"_MysTreBag_BasicDelayButton1",
                  "events":{"click":"___MysTreBag_BasicDelayButton1_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"BtnStdGreen",
                        "x":84.5,
                        "y":220
                     };
                  }
               })]
            };
         }
      });
      
      public function MysTreBag()
      {
         super();
         mx_internal::_document = this;
         this.width = 225;
         this.height = 248;
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         MysTreBag._watcherSetupUtil = param1;
      }
      
      public function set clickSlot30(param1:ClickSlot) : void
      {
         var _loc2_:Object = this._1335219331clickSlot30;
         if(_loc2_ !== param1)
         {
            this._1335219331clickSlot30 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"clickSlot30",_loc2_,param1));
         }
      }
      
      public function updateView() : void
      {
         var _loc2_:* = undefined;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:ClickSlot = null;
         var _loc8_:Object = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:Object = null;
         var _loc1_:int = 0;
         for(_loc2_ in _mysTreBagData)
         {
            _loc1_++;
         }
         _loc3_ = pageSelector.totalPage = Math.ceil(_loc1_ / 30);
         _loc4_ = pageSelector.curPage;
         _loc5_ = (_loc4_ - 1) * 30;
         _loc6_ = 1;
         while(_loc6_ <= 30)
         {
            _loc7_ = this["clickSlot" + _loc6_] as ClickSlot;
            _loc8_ = _mysTreBagData[_loc6_ + _loc5_];
            _loc7_.clean();
            if(_loc8_)
            {
               _loc9_ = int(_loc8_["mid"]);
               _loc10_ = int(_loc8_["num"]);
               _loc11_ = GameData.d[GamePredef.TBL_MYSTRE][_loc9_];
               _loc7_.slotData = _loc11_;
               _loc7_.quality = int(_loc11_["level"]) - 1;
               _loc7_.type = GamePredef.TBL_MYSTRE;
               _loc7_.giid = _loc9_;
               _loc7_.stackNum = _loc10_;
            }
            _loc6_++;
         }
      }
      
      public function set pageSelector(param1:PageSelectorOnly) : void
      {
         var _loc2_:Object = this._607339634pageSelector;
         if(_loc2_ !== param1)
         {
            this._607339634pageSelector = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageSelector",_loc2_,param1));
         }
      }
      
      private function _MysTreBag_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DECORATE_PANEL[111];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MysTreBag_BasicDelayButton1.label = param1;
         },"_MysTreBag_BasicDelayButton1.label");
         result[0] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      private function get _itemDic() : Object
      {
         return this._179436332_itemDic;
      }
      
      [Bindable(event="propertyChange")]
      public function get clickSlot10() : ClickSlot
      {
         return this._1335219269clickSlot10;
      }
      
      [Bindable(event="propertyChange")]
      public function get clickSlot11() : ClickSlot
      {
         return this._1335219270clickSlot11;
      }
      
      [Bindable(event="propertyChange")]
      public function get clickSlot12() : ClickSlot
      {
         return this._1335219271clickSlot12;
      }
      
      public function clean() : void
      {
         _itemDic = null;
         var _loc1_:int = 1;
         while(_loc1_ <= 30)
         {
            this["clickSlot" + _loc1_].clean();
            _loc1_++;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get clickSlot1() : ClickSlot
      {
         return this._788212405clickSlot1;
      }
      
      [Bindable(event="propertyChange")]
      public function get clickSlot17() : ClickSlot
      {
         return this._1335219276clickSlot17;
      }
      
      [Bindable(event="propertyChange")]
      public function get clickSlot18() : ClickSlot
      {
         return this._1335219277clickSlot18;
      }
      
      [Bindable(event="propertyChange")]
      public function get clickSlot19() : ClickSlot
      {
         return this._1335219278clickSlot19;
      }
      
      [Bindable(event="propertyChange")]
      public function get clickSlot15() : ClickSlot
      {
         return this._1335219274clickSlot15;
      }
      
      [Bindable(event="propertyChange")]
      public function get clickSlot2() : ClickSlot
      {
         return this._788212404clickSlot2;
      }
      
      [Bindable(event="propertyChange")]
      public function get clickSlot4() : ClickSlot
      {
         return this._788212402clickSlot4;
      }
      
      [Bindable(event="propertyChange")]
      public function get clickSlot5() : ClickSlot
      {
         return this._788212401clickSlot5;
      }
      
      [Bindable(event="propertyChange")]
      public function get clickSlot16() : ClickSlot
      {
         return this._1335219275clickSlot16;
      }
      
      [Bindable(event="propertyChange")]
      public function get clickSlot3() : ClickSlot
      {
         return this._788212403clickSlot3;
      }
      
      [Bindable(event="propertyChange")]
      public function get clickSlot13() : ClickSlot
      {
         return this._1335219272clickSlot13;
      }
      
      [Bindable(event="propertyChange")]
      public function get clickSlot14() : ClickSlot
      {
         return this._1335219273clickSlot14;
      }
      
      [Bindable(event="propertyChange")]
      public function get clickSlot9() : ClickSlot
      {
         return this._788212397clickSlot9;
      }
      
      [Bindable(event="propertyChange")]
      public function get clickSlot21() : ClickSlot
      {
         return this._1335219301clickSlot21;
      }
      
      [Bindable(event="propertyChange")]
      public function get clickSlot22() : ClickSlot
      {
         return this._1335219302clickSlot22;
      }
      
      [Bindable(event="propertyChange")]
      public function get clickSlot23() : ClickSlot
      {
         return this._1335219303clickSlot23;
      }
      
      [Bindable(event="propertyChange")]
      public function get clickSlot26() : ClickSlot
      {
         return this._1335219306clickSlot26;
      }
      
      [Bindable(event="propertyChange")]
      public function get clickSlot28() : ClickSlot
      {
         return this._1335219308clickSlot28;
      }
      
      [Bindable(event="propertyChange")]
      public function get clickSlot29() : ClickSlot
      {
         return this._1335219309clickSlot29;
      }
      
      [Bindable(event="propertyChange")]
      public function get clickSlot24() : ClickSlot
      {
         return this._1335219304clickSlot24;
      }
      
      [Bindable(event="propertyChange")]
      public function get clickSlot25() : ClickSlot
      {
         return this._1335219305clickSlot25;
      }
      
      [Bindable(event="propertyChange")]
      public function get clickSlot8() : ClickSlot
      {
         return this._788212398clickSlot8;
      }
      
      public function get itemDic() : Object
      {
         return _itemDic;
      }
      
      [Bindable(event="propertyChange")]
      public function get clickSlot20() : ClickSlot
      {
         return this._1335219300clickSlot20;
      }
      
      public function ___MysTreBag_BasicDelayButton1_click(param1:MouseEvent) : void
      {
         selecteAll();
      }
      
      [Bindable(event="propertyChange")]
      public function get clickSlot7() : ClickSlot
      {
         return this._788212399clickSlot7;
      }
      
      [Bindable(event="propertyChange")]
      public function get clickSlot27() : ClickSlot
      {
         return this._1335219307clickSlot27;
      }
      
      private function set _itemDic(param1:Object) : void
      {
         var _loc2_:Object = this._179436332_itemDic;
         if(_loc2_ !== param1)
         {
            this._179436332_itemDic = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_itemDic",_loc2_,param1));
         }
      }
      
      public function set clickSlot10(param1:ClickSlot) : void
      {
         var _loc2_:Object = this._1335219269clickSlot10;
         if(_loc2_ !== param1)
         {
            this._1335219269clickSlot10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"clickSlot10",_loc2_,param1));
         }
      }
      
      public function set clickSlot11(param1:ClickSlot) : void
      {
         var _loc2_:Object = this._1335219270clickSlot11;
         if(_loc2_ !== param1)
         {
            this._1335219270clickSlot11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"clickSlot11",_loc2_,param1));
         }
      }
      
      public function set clickSlot12(param1:ClickSlot) : void
      {
         var _loc2_:Object = this._1335219271clickSlot12;
         if(_loc2_ !== param1)
         {
            this._1335219271clickSlot12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"clickSlot12",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:MysTreBag = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _MysTreBag_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_MysTreBagWatcherSetupUtil");
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
      public function get pageSelector() : PageSelectorOnly
      {
         return this._607339634pageSelector;
      }
      
      public function set clickSlot18(param1:ClickSlot) : void
      {
         var _loc2_:Object = this._1335219277clickSlot18;
         if(_loc2_ !== param1)
         {
            this._1335219277clickSlot18 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"clickSlot18",_loc2_,param1));
         }
      }
      
      public function set clickSlot15(param1:ClickSlot) : void
      {
         var _loc2_:Object = this._1335219274clickSlot15;
         if(_loc2_ !== param1)
         {
            this._1335219274clickSlot15 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"clickSlot15",_loc2_,param1));
         }
      }
      
      public function set clickSlot19(param1:ClickSlot) : void
      {
         var _loc2_:Object = this._1335219278clickSlot19;
         if(_loc2_ !== param1)
         {
            this._1335219278clickSlot19 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"clickSlot19",_loc2_,param1));
         }
      }
      
      public function set clickSlot1(param1:ClickSlot) : void
      {
         var _loc2_:Object = this._788212405clickSlot1;
         if(_loc2_ !== param1)
         {
            this._788212405clickSlot1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"clickSlot1",_loc2_,param1));
         }
      }
      
      public function set clickSlot5(param1:ClickSlot) : void
      {
         var _loc2_:Object = this._788212401clickSlot5;
         if(_loc2_ !== param1)
         {
            this._788212401clickSlot5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"clickSlot5",_loc2_,param1));
         }
      }
      
      public function set clickSlot6(param1:ClickSlot) : void
      {
         var _loc2_:Object = this._788212400clickSlot6;
         if(_loc2_ !== param1)
         {
            this._788212400clickSlot6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"clickSlot6",_loc2_,param1));
         }
      }
      
      public function clickHandler(param1:ClickSlot) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Object = null;
         if(!_itemDic)
         {
            _itemDic = {};
         }
         if(param1.slotData)
         {
            _loc2_ = int(param1.id.substr(9));
            _loc2_ = (pageSelector.curPage - 1) * 30 + _loc2_;
            if(!_itemDic[_loc2_])
            {
               _loc3_ = {};
               _loc3_["mid"] = param1.giid;
               _loc3_["num"] = param1.stackNum;
               _itemDic[_loc2_] = _loc3_;
            }
            else
            {
               delete _itemDic[_loc2_];
            }
            clickCall && clickCall();
         }
      }
      
      public function set clickSlot4(param1:ClickSlot) : void
      {
         var _loc2_:Object = this._788212402clickSlot4;
         if(_loc2_ !== param1)
         {
            this._788212402clickSlot4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"clickSlot4",_loc2_,param1));
         }
      }
      
      public function set clickSlot16(param1:ClickSlot) : void
      {
         var _loc2_:Object = this._1335219275clickSlot16;
         if(_loc2_ !== param1)
         {
            this._1335219275clickSlot16 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"clickSlot16",_loc2_,param1));
         }
      }
      
      public function set clickSlot17(param1:ClickSlot) : void
      {
         var _loc2_:Object = this._1335219276clickSlot17;
         if(_loc2_ !== param1)
         {
            this._1335219276clickSlot17 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"clickSlot17",_loc2_,param1));
         }
      }
      
      public function set clickSlot3(param1:ClickSlot) : void
      {
         var _loc2_:Object = this._788212403clickSlot3;
         if(_loc2_ !== param1)
         {
            this._788212403clickSlot3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"clickSlot3",_loc2_,param1));
         }
      }
      
      public function set clickSlot9(param1:ClickSlot) : void
      {
         var _loc2_:Object = this._788212397clickSlot9;
         if(_loc2_ !== param1)
         {
            this._788212397clickSlot9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"clickSlot9",_loc2_,param1));
         }
      }
      
      public function set clickSlot2(param1:ClickSlot) : void
      {
         var _loc2_:Object = this._788212404clickSlot2;
         if(_loc2_ !== param1)
         {
            this._788212404clickSlot2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"clickSlot2",_loc2_,param1));
         }
      }
      
      public function set clickSlot7(param1:ClickSlot) : void
      {
         var _loc2_:Object = this._788212399clickSlot7;
         if(_loc2_ !== param1)
         {
            this._788212399clickSlot7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"clickSlot7",_loc2_,param1));
         }
      }
      
      public function set mysTreBagData(param1:Object) : void
      {
         _mysTreBagData = param1;
      }
      
      private function _MysTreBag_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.DECORATE_PANEL[111];
      }
      
      [Bindable(event="propertyChange")]
      public function get clickSlot30() : ClickSlot
      {
         return this._1335219331clickSlot30;
      }
      
      public function set clickSlot14(param1:ClickSlot) : void
      {
         var _loc2_:Object = this._1335219273clickSlot14;
         if(_loc2_ !== param1)
         {
            this._1335219273clickSlot14 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"clickSlot14",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get clickSlot6() : ClickSlot
      {
         return this._788212400clickSlot6;
      }
      
      public function set clickSlot8(param1:ClickSlot) : void
      {
         var _loc2_:Object = this._788212398clickSlot8;
         if(_loc2_ !== param1)
         {
            this._788212398clickSlot8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"clickSlot8",_loc2_,param1));
         }
      }
      
      public function set clickSlot21(param1:ClickSlot) : void
      {
         var _loc2_:Object = this._1335219301clickSlot21;
         if(_loc2_ !== param1)
         {
            this._1335219301clickSlot21 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"clickSlot21",_loc2_,param1));
         }
      }
      
      public function set clickSlot23(param1:ClickSlot) : void
      {
         var _loc2_:Object = this._1335219303clickSlot23;
         if(_loc2_ !== param1)
         {
            this._1335219303clickSlot23 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"clickSlot23",_loc2_,param1));
         }
      }
      
      public function set clickSlot20(param1:ClickSlot) : void
      {
         var _loc2_:Object = this._1335219300clickSlot20;
         if(_loc2_ !== param1)
         {
            this._1335219300clickSlot20 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"clickSlot20",_loc2_,param1));
         }
      }
      
      public function set clickSlot26(param1:ClickSlot) : void
      {
         var _loc2_:Object = this._1335219306clickSlot26;
         if(_loc2_ !== param1)
         {
            this._1335219306clickSlot26 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"clickSlot26",_loc2_,param1));
         }
      }
      
      public function set clickSlot13(param1:ClickSlot) : void
      {
         var _loc2_:Object = this._1335219272clickSlot13;
         if(_loc2_ !== param1)
         {
            this._1335219272clickSlot13 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"clickSlot13",_loc2_,param1));
         }
      }
      
      public function set clickSlot28(param1:ClickSlot) : void
      {
         var _loc2_:Object = this._1335219308clickSlot28;
         if(_loc2_ !== param1)
         {
            this._1335219308clickSlot28 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"clickSlot28",_loc2_,param1));
         }
      }
      
      public function set clickSlot22(param1:ClickSlot) : void
      {
         var _loc2_:Object = this._1335219302clickSlot22;
         if(_loc2_ !== param1)
         {
            this._1335219302clickSlot22 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"clickSlot22",_loc2_,param1));
         }
      }
      
      public function set clickSlot27(param1:ClickSlot) : void
      {
         var _loc2_:Object = this._1335219307clickSlot27;
         if(_loc2_ !== param1)
         {
            this._1335219307clickSlot27 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"clickSlot27",_loc2_,param1));
         }
      }
      
      public function set clickSlot25(param1:ClickSlot) : void
      {
         var _loc2_:Object = this._1335219305clickSlot25;
         if(_loc2_ !== param1)
         {
            this._1335219305clickSlot25 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"clickSlot25",_loc2_,param1));
         }
      }
      
      public function updatePage() : void
      {
         clean();
         updateView();
         clickCall && clickCall();
      }
      
      public function set clickSlot29(param1:ClickSlot) : void
      {
         var _loc2_:Object = this._1335219309clickSlot29;
         if(_loc2_ !== param1)
         {
            this._1335219309clickSlot29 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"clickSlot29",_loc2_,param1));
         }
      }
      
      public function set clickSlot24(param1:ClickSlot) : void
      {
         var _loc2_:Object = this._1335219304clickSlot24;
         if(_loc2_ !== param1)
         {
            this._1335219304clickSlot24 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"clickSlot24",_loc2_,param1));
         }
      }
      
      public function selecteAll() : void
      {
         var _loc1_:int = 1;
         while(_loc1_ <= 30)
         {
            if(this["clickSlot" + _loc1_].slotData)
            {
               (this["clickSlot" + _loc1_] as ClickSlot).fakeClick();
            }
            _loc1_++;
         }
      }
   }
}

