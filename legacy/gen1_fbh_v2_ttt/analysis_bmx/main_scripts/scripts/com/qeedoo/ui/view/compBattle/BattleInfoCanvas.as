package com.qeedoo.ui.view.compBattle
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.comp.BasicDelayButton;
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
   import mx.containers.Canvas;
   import mx.containers.ViewStack;
   import mx.controls.Image;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class BattleInfoCanvas extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1100041769lline7:BattleInfoSinglePlayer;
      
      private var _928266867rline3:BattleInfoSinglePlayer;
      
      private var _1100041772lline4:BattleInfoSinglePlayer;
      
      private var _928266863rline7:BattleInfoSinglePlayer;
      
      private var _3773vs:ViewStack;
      
      private var _1100041776lline0:BattleInfoSinglePlayer;
      
      private var _928266870rline0:BattleInfoSinglePlayer;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var leftData:Object = {};
      
      private var _928266864rline6:BattleInfoSinglePlayer;
      
      private var _1100041773lline3:BattleInfoSinglePlayer;
      
      private var _928266868rline2:BattleInfoSinglePlayer;
      
      private var yArr:Array = [175,115,235,55,295];
      
      private var _core:Core = Core.getInstance();
      
      private var _1100041767lline9:BattleInfoSinglePlayer;
      
      private var _928266869rline1:BattleInfoSinglePlayer;
      
      mx_internal var _watchers:Array = [];
      
      private var _1100041774lline2:BattleInfoSinglePlayer;
      
      private var _928266865rline5:BattleInfoSinglePlayer;
      
      private var _1100041770lline6:BattleInfoSinglePlayer;
      
      private var _1237460573groupB:BasicGlowButton;
      
      private var _928266861rline9:BattleInfoSinglePlayer;
      
      private var _1100041768lline8:BattleInfoSinglePlayer;
      
      private var _928266862rline8:BattleInfoSinglePlayer;
      
      private var _1100041775lline1:BattleInfoSinglePlayer;
      
      public var _BattleInfoCanvas_Image2:Image;
      
      public var _BattleInfoCanvas_Image5:Image;
      
      public var _BattleInfoCanvas_Image6:Image;
      
      private var _1100041771lline5:BattleInfoSinglePlayer;
      
      public var _BattleInfoCanvas_Image3:Image;
      
      public var _BattleInfoCanvas_Image4:Image;
      
      private var _928266866rline4:BattleInfoSinglePlayer;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _2053377414battleInfo:BasicTitleCanvas;
      
      private var rightData:Object = {};
      
      public var _BattleInfoCanvas_Image1:Image;
      
      private var _1237460574groupA:BasicGlowButton;
      
      private var _321863295refreshBtn:BasicDelayButton;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":550,
               "height":450,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"battleInfo"
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"groupA",
                  "events":{"click":"__groupA_click"},
                  "stylesFactory":function():void
                  {
                     this.left = "15";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "selected":true,
                        "styleName":"HorizontalTab",
                        "width":70,
                        "y":33
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"groupB",
                  "events":{"click":"__groupB_click"},
                  "stylesFactory":function():void
                  {
                     this.left = "85";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "selected":false,
                        "styleName":"HorizontalTab",
                        "width":70,
                        "y":33
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicDelayButton,
                  "id":"refreshBtn",
                  "events":{"click":"__refreshBtn_click"},
                  "stylesFactory":function():void
                  {
                     this.right = "45";
                     this.top = "33";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"styleName":"BtnNormalBlue"};
                  }
               }),new UIComponentDescriptor({
                  "type":ViewStack,
                  "id":"vs",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":540,
                        "height":375,
                        "x":5,
                        "y":55,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"CanvasBorder",
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_BattleInfoCanvas_Image1",
                                    "stylesFactory":function():void
                                    {
                                       this.left = "54";
                                       this.top = "25";
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_BattleInfoCanvas_Image2",
                                    "stylesFactory":function():void
                                    {
                                       this.right = "185";
                                       this.top = "25";
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_BattleInfoCanvas_Image3",
                                    "stylesFactory":function():void
                                    {
                                       this.horizontalCenter = "0";
                                       this.verticalCenter = "0";
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BattleInfoSinglePlayer,
                                    "id":"lline3",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":35,
                                          "y":25,
                                          "width":215
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BattleInfoSinglePlayer,
                                    "id":"lline1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":35,
                                          "y":85,
                                          "width":215
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BattleInfoSinglePlayer,
                                    "id":"lline0",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":35,
                                          "y":145,
                                          "width":215
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BattleInfoSinglePlayer,
                                    "id":"lline2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":35,
                                          "y":205,
                                          "width":215
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BattleInfoSinglePlayer,
                                    "id":"lline4",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":35,
                                          "y":265,
                                          "width":215
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BattleInfoSinglePlayer,
                                    "id":"lline8",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":290,
                                          "y":25,
                                          "width":215
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BattleInfoSinglePlayer,
                                    "id":"lline6",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":290,
                                          "y":85,
                                          "width":215
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BattleInfoSinglePlayer,
                                    "id":"lline5",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":290,
                                          "y":145,
                                          "width":215
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BattleInfoSinglePlayer,
                                    "id":"lline7",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":290,
                                          "y":205,
                                          "width":215
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BattleInfoSinglePlayer,
                                    "id":"lline9",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":290,
                                          "y":265,
                                          "width":215
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
                                 "styleName":"CanvasBorder",
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_BattleInfoCanvas_Image4",
                                    "stylesFactory":function():void
                                    {
                                       this.left = "54";
                                       this.top = "25";
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_BattleInfoCanvas_Image5",
                                    "stylesFactory":function():void
                                    {
                                       this.right = "185";
                                       this.top = "25";
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_BattleInfoCanvas_Image6",
                                    "stylesFactory":function():void
                                    {
                                       this.horizontalCenter = "0";
                                       this.verticalCenter = "0";
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BattleInfoSinglePlayer,
                                    "id":"rline3",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":35,
                                          "y":25,
                                          "width":215
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BattleInfoSinglePlayer,
                                    "id":"rline1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":35,
                                          "y":85,
                                          "width":215
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BattleInfoSinglePlayer,
                                    "id":"rline0",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":35,
                                          "y":145,
                                          "width":215
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BattleInfoSinglePlayer,
                                    "id":"rline2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":35,
                                          "y":205,
                                          "width":215
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BattleInfoSinglePlayer,
                                    "id":"rline4",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":35,
                                          "y":265,
                                          "width":215
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BattleInfoSinglePlayer,
                                    "id":"rline8",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":290,
                                          "y":25,
                                          "width":215
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BattleInfoSinglePlayer,
                                    "id":"rline6",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":290,
                                          "y":85,
                                          "width":215
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BattleInfoSinglePlayer,
                                    "id":"rline5",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":290,
                                          "y":145,
                                          "width":215
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BattleInfoSinglePlayer,
                                    "id":"rline7",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":290,
                                          "y":205,
                                          "width":215
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BattleInfoSinglePlayer,
                                    "id":"rline9",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":290,
                                          "y":265,
                                          "width":215
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
      
      private var checkMove:Boolean = true;
      
      public function BattleInfoCanvas()
      {
         super();
         mx_internal::_document = this;
         this.width = 550;
         this.height = 450;
         this.styleName = "StandardContent";
         this.cacheAsBitmap = false;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         BattleInfoCanvas._watcherSetupUtil = param1;
      }
      
      public function set lline6(param1:BattleInfoSinglePlayer) : void
      {
         var _loc2_:Object = this._1100041770lline6;
         if(_loc2_ !== param1)
         {
            this._1100041770lline6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lline6",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lline4() : BattleInfoSinglePlayer
      {
         return this._1100041772lline4;
      }
      
      public function set refreshBtn(param1:BasicDelayButton) : void
      {
         var _loc2_:Object = this._321863295refreshBtn;
         if(_loc2_ !== param1)
         {
            this._321863295refreshBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"refreshBtn",_loc2_,param1));
         }
      }
      
      public function set lline8(param1:BattleInfoSinglePlayer) : void
      {
         var _loc2_:Object = this._1100041768lline8;
         if(_loc2_ !== param1)
         {
            this._1100041768lline8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lline8",_loc2_,param1));
         }
      }
      
      public function set lline4(param1:BattleInfoSinglePlayer) : void
      {
         var _loc2_:Object = this._1100041772lline4;
         if(_loc2_ !== param1)
         {
            this._1100041772lline4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lline4",_loc2_,param1));
         }
      }
      
      public function set battleInfo(param1:BasicTitleCanvas) : void
      {
         var _loc2_:Object = this._2053377414battleInfo;
         if(_loc2_ !== param1)
         {
            this._2053377414battleInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"battleInfo",_loc2_,param1));
         }
      }
      
      public function init() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < 10)
         {
            this["lline" + _loc1_].init();
            this["rline" + _loc1_].init();
            _loc1_++;
         }
         checkMove = true;
      }
      
      [Bindable(event="propertyChange")]
      public function get vs() : ViewStack
      {
         return this._3773vs;
      }
      
      public function set rline1(param1:BattleInfoSinglePlayer) : void
      {
         var _loc2_:Object = this._928266869rline1;
         if(_loc2_ !== param1)
         {
            this._928266869rline1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rline1",_loc2_,param1));
         }
      }
      
      public function set rline3(param1:BattleInfoSinglePlayer) : void
      {
         var _loc2_:Object = this._928266867rline3;
         if(_loc2_ !== param1)
         {
            this._928266867rline3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rline3",_loc2_,param1));
         }
      }
      
      public function set rline5(param1:BattleInfoSinglePlayer) : void
      {
         var _loc2_:Object = this._928266865rline5;
         if(_loc2_ !== param1)
         {
            this._928266865rline5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rline5",_loc2_,param1));
         }
      }
      
      public function set rline6(param1:BattleInfoSinglePlayer) : void
      {
         var _loc2_:Object = this._928266864rline6;
         if(_loc2_ !== param1)
         {
            this._928266864rline6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rline6",_loc2_,param1));
         }
      }
      
      public function set rline7(param1:BattleInfoSinglePlayer) : void
      {
         var _loc2_:Object = this._928266863rline7;
         if(_loc2_ !== param1)
         {
            this._928266863rline7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rline7",_loc2_,param1));
         }
      }
      
      public function set rline0(param1:BattleInfoSinglePlayer) : void
      {
         var _loc2_:Object = this._928266870rline0;
         if(_loc2_ !== param1)
         {
            this._928266870rline0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rline0",_loc2_,param1));
         }
      }
      
      private function refreshPosition(param1:Object) : void
      {
         var _loc6_:int = 0;
         if(!checkMove || !param1)
         {
            return;
         }
         var _loc2_:Number = 60;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(!param1[3] && !param1[8])
         {
            _loc3_++;
            if(!param1[1] && !param1[6])
            {
               _loc3_++;
            }
         }
         if(!param1[18] && !param1[13])
         {
            _loc4_++;
            if(!param1[11] && !param1[16])
            {
               _loc4_++;
            }
         }
         var _loc5_:int = 0;
         while(_loc5_ < 10)
         {
            _loc6_ = (_loc5_ + 5) % 10;
            this["lline" + _loc5_].y = yArr[_loc5_ % 5] - _loc2_ * _loc3_;
            this["rline" + _loc5_].y = yArr[_loc5_ % 5] - _loc2_ * _loc4_;
            _loc5_++;
         }
         checkMove = false;
      }
      
      private function refreshData(param1:Object) : void
      {
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         leftData = {};
         rightData = {};
         var _loc2_:* = _core.view.getUI(ViewManager.STAGE_BATTLE);
         if(!_loc2_)
         {
            return;
         }
         var _loc3_:Object = _loc2_.cList;
         if(!_loc3_)
         {
            return;
         }
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = param1[_loc4_.battleId];
            if(_loc5_)
            {
               if(_loc4_.leftSide)
               {
                  leftData[_loc4_.battleId % 10] = {
                     "battleBuff":_loc5_.keepRound,
                     "data":_loc4_,
                     "color":_loc4_.getNameTextColor()
                  };
               }
               else
               {
                  rightData[_loc4_.battleId % 10] = {
                     "battleBuff":_loc5_.keepRound,
                     "data":_loc4_,
                     "color":_loc4_.getNameTextColor()
                  };
               }
            }
         }
      }
      
      public function set rline9(param1:BattleInfoSinglePlayer) : void
      {
         var _loc2_:Object = this._928266861rline9;
         if(_loc2_ !== param1)
         {
            this._928266861rline9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rline9",_loc2_,param1));
         }
      }
      
      public function set rline2(param1:BattleInfoSinglePlayer) : void
      {
         var _loc2_:Object = this._928266868rline2;
         if(_loc2_ !== param1)
         {
            this._928266868rline2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rline2",_loc2_,param1));
         }
      }
      
      public function __refreshBtn_click(param1:MouseEvent) : void
      {
         askBattleInfo();
      }
      
      public function set rline4(param1:BattleInfoSinglePlayer) : void
      {
         var _loc2_:Object = this._928266866rline4;
         if(_loc2_ !== param1)
         {
            this._928266866rline4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rline4",_loc2_,param1));
         }
      }
      
      private function refreshGroupData() : void
      {
         var _loc4_:int = 0;
         var _loc1_:Object = leftData;
         var _loc2_:Object = rightData;
         var _loc3_:int = 0;
         while(_loc3_ < 10)
         {
            _loc4_ = (_loc3_ + 5) % 10;
            this["lline" + _loc3_].refresh(_loc1_[_loc4_]);
            this["rline" + _loc3_].refresh(_loc2_[_loc4_]);
            _loc3_++;
         }
      }
      
      public function set rline8(param1:BattleInfoSinglePlayer) : void
      {
         var _loc2_:Object = this._928266862rline8;
         if(_loc2_ !== param1)
         {
            this._928266862rline8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rline8",_loc2_,param1));
         }
      }
      
      private function onAskBattleInfo(param1:Object) : void
      {
         if(!param1)
         {
            return;
         }
         refreshData(param1);
         refreshGroupData();
      }
      
      public function set groupA(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1237460574groupA;
         if(_loc2_ !== param1)
         {
            this._1237460574groupA = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"groupA",_loc2_,param1));
         }
      }
      
      public function set groupB(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1237460573groupB;
         if(_loc2_ !== param1)
         {
            this._1237460573groupB = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"groupB",_loc2_,param1));
         }
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
      public function get refreshBtn() : BasicDelayButton
      {
         return this._321863295refreshBtn;
      }
      
      [Bindable(event="propertyChange")]
      public function get battleInfo() : BasicTitleCanvas
      {
         return this._2053377414battleInfo;
      }
      
      [Bindable(event="propertyChange")]
      public function get rline0() : BattleInfoSinglePlayer
      {
         return this._928266870rline0;
      }
      
      public function __groupA_click(param1:MouseEvent) : void
      {
         changeGroup(0);
      }
      
      [Bindable(event="propertyChange")]
      public function get rline2() : BattleInfoSinglePlayer
      {
         return this._928266868rline2;
      }
      
      [Bindable(event="propertyChange")]
      public function get rline4() : BattleInfoSinglePlayer
      {
         return this._928266866rline4;
      }
      
      [Bindable(event="propertyChange")]
      public function get rline5() : BattleInfoSinglePlayer
      {
         return this._928266865rline5;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:BattleInfoCanvas = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _BattleInfoCanvas_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compBattle_BattleInfoCanvasWatcherSetupUtil");
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
      public function get rline7() : BattleInfoSinglePlayer
      {
         return this._928266863rline7;
      }
      
      [Bindable(event="propertyChange")]
      public function get rline1() : BattleInfoSinglePlayer
      {
         return this._928266869rline1;
      }
      
      [Bindable(event="propertyChange")]
      public function get rline9() : BattleInfoSinglePlayer
      {
         return this._928266861rline9;
      }
      
      [Bindable(event="propertyChange")]
      public function get rline8() : BattleInfoSinglePlayer
      {
         return this._928266862rline8;
      }
      
      [Bindable(event="propertyChange")]
      public function get rline3() : BattleInfoSinglePlayer
      {
         return this._928266867rline3;
      }
      
      public function set lline0(param1:BattleInfoSinglePlayer) : void
      {
         var _loc2_:Object = this._1100041776lline0;
         if(_loc2_ !== param1)
         {
            this._1100041776lline0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lline0",_loc2_,param1));
         }
      }
      
      public function set lline2(param1:BattleInfoSinglePlayer) : void
      {
         var _loc2_:Object = this._1100041774lline2;
         if(_loc2_ !== param1)
         {
            this._1100041774lline2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lline2",_loc2_,param1));
         }
      }
      
      public function set lline3(param1:BattleInfoSinglePlayer) : void
      {
         var _loc2_:Object = this._1100041773lline3;
         if(_loc2_ !== param1)
         {
            this._1100041773lline3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lline3",_loc2_,param1));
         }
      }
      
      public function changeVisible() : void
      {
         if(!_core.player.inBattle)
         {
            visible = false;
            return;
         }
         if(visible)
         {
            visible = false;
         }
         else
         {
            askBattleInfo();
         }
      }
      
      public function set lline7(param1:BattleInfoSinglePlayer) : void
      {
         var _loc2_:Object = this._1100041769lline7;
         if(_loc2_ !== param1)
         {
            this._1100041769lline7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lline7",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get groupA() : BasicGlowButton
      {
         return this._1237460574groupA;
      }
      
      private function _BattleInfoCanvas_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.BATTLESTAGE_S[17];
         _loc1_ = Language.BATTLESTAGE_S[18];
         _loc1_ = Language.BATTLESTAGE_S[19];
         _loc1_ = Language.BATTLESTAGE_S[22];
         _loc1_ = ResManager.getIconUrl(4130220000285);
         _loc1_ = ResManager.getIconUrl(4130220000284);
         _loc1_ = ResManager.getIconUrl(4130220000286);
         _loc1_ = ResManager.getIconUrl(4130220000285);
         _loc1_ = ResManager.getIconUrl(4130220000284);
         _loc1_ = ResManager.getIconUrl(4130220000286);
      }
      
      public function set lline5(param1:BattleInfoSinglePlayer) : void
      {
         var _loc2_:Object = this._1100041771lline5;
         if(_loc2_ !== param1)
         {
            this._1100041771lline5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lline5",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get groupB() : BasicGlowButton
      {
         return this._1237460573groupB;
      }
      
      [Bindable(event="propertyChange")]
      public function get rline6() : BattleInfoSinglePlayer
      {
         return this._928266864rline6;
      }
      
      private function changeGroup(param1:int) : void
      {
         groupA.selected = param1 == 0;
         groupB.selected = param1 == 1;
         vs.selectedIndex = param1;
      }
      
      public function set lline9(param1:BattleInfoSinglePlayer) : void
      {
         var _loc2_:Object = this._1100041767lline9;
         if(_loc2_ !== param1)
         {
            this._1100041767lline9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lline9",_loc2_,param1));
         }
      }
      
      public function set lline1(param1:BattleInfoSinglePlayer) : void
      {
         var _loc2_:Object = this._1100041775lline1;
         if(_loc2_ !== param1)
         {
            this._1100041775lline1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lline1",_loc2_,param1));
         }
      }
      
      private function _BattleInfoCanvas_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BATTLESTAGE_S[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            battleInfo.text = param1;
         },"battleInfo.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BATTLESTAGE_S[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            groupA.label = param1;
         },"groupA.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BATTLESTAGE_S[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            groupB.label = param1;
         },"groupB.label");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BATTLESTAGE_S[22];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            refreshBtn.label = param1;
         },"refreshBtn.label");
         result[3] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000285);
         },function(param1:Object):void
         {
            _BattleInfoCanvas_Image1.source = param1;
         },"_BattleInfoCanvas_Image1.source");
         result[4] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000284);
         },function(param1:Object):void
         {
            _BattleInfoCanvas_Image2.source = param1;
         },"_BattleInfoCanvas_Image2.source");
         result[5] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000286);
         },function(param1:Object):void
         {
            _BattleInfoCanvas_Image3.source = param1;
         },"_BattleInfoCanvas_Image3.source");
         result[6] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000285);
         },function(param1:Object):void
         {
            _BattleInfoCanvas_Image4.source = param1;
         },"_BattleInfoCanvas_Image4.source");
         result[7] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000284);
         },function(param1:Object):void
         {
            _BattleInfoCanvas_Image5.source = param1;
         },"_BattleInfoCanvas_Image5.source");
         result[8] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000286);
         },function(param1:Object):void
         {
            _BattleInfoCanvas_Image6.source = param1;
         },"_BattleInfoCanvas_Image6.source");
         result[9] = binding;
         return result;
      }
      
      public function initList(param1:Object) : void
      {
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc2_:Object = {};
         for(_loc3_ in param1.cList)
         {
            _loc4_ = param1.cList[_loc3_];
            if(_loc4_)
            {
               _loc2_[_loc3_] = {
                  "battleBuff":[],
                  "battleId":_loc4_.battleId
               };
            }
         }
         refreshData(_loc2_);
         refreshPosition(param1.cList);
         refreshGroupData();
      }
      
      [Bindable(event="propertyChange")]
      public function get lline0() : BattleInfoSinglePlayer
      {
         return this._1100041776lline0;
      }
      
      [Bindable(event="propertyChange")]
      public function get lline1() : BattleInfoSinglePlayer
      {
         return this._1100041775lline1;
      }
      
      [Bindable(event="propertyChange")]
      public function get lline2() : BattleInfoSinglePlayer
      {
         return this._1100041774lline2;
      }
      
      public function __groupB_click(param1:MouseEvent) : void
      {
         changeGroup(1);
      }
      
      [Bindable(event="propertyChange")]
      public function get lline6() : BattleInfoSinglePlayer
      {
         return this._1100041770lline6;
      }
      
      [Bindable(event="propertyChange")]
      public function get lline7() : BattleInfoSinglePlayer
      {
         return this._1100041769lline7;
      }
      
      [Bindable(event="propertyChange")]
      public function get lline9() : BattleInfoSinglePlayer
      {
         return this._1100041767lline9;
      }
      
      [Bindable(event="propertyChange")]
      public function get lline3() : BattleInfoSinglePlayer
      {
         return this._1100041773lline3;
      }
      
      private function askBattleInfo() : void
      {
         _core.remote.call("battleFieldGetInfo",new Responder(onAskBattleInfo));
         if(!visible)
         {
            visible = true;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lline8() : BattleInfoSinglePlayer
      {
         return this._1100041768lline8;
      }
      
      [Bindable(event="propertyChange")]
      public function get lline5() : BattleInfoSinglePlayer
      {
         return this._1100041771lline5;
      }
   }
}

