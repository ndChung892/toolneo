package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.effects.EnterFrameMove;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.comp.BasicDelayButton;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.IntroText;
   import com.qeedoo.ui.view.comp.ThreeDiabetesBox;
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
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.core.UIComponent;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class ThreeDiabetes extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public static var rects:Array = [];
      
      private static const EFFECT_BM_WIDTH:Number = 400;
      
      private static const EFFECT_BM_HEIGHT:Number = 400;
      
      public var _ThreeDiabetes_BasicGlowButton1:BasicGlowButton;
      
      private var diabetes:Boolean = false;
      
      mx_internal var _bindings:Array = [];
      
      public var effects:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":700,
               "height":500,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_ThreeDiabetes_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.left = "10";
                     this.right = "10";
                     this.top = "38";
                     this.bottom = "16";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "height":290,
                        "styleName":"CanvasBorder",
                        "mouseEnabled":false,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":320,
                                 "height":290,
                                 "x":8,
                                 "y":8,
                                 "styleName":"CanvasBorder",
                                 "mouseEnabled":false,
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_ThreeDiabetes_Image1"
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":320,
                                 "height":130,
                                 "x":8,
                                 "y":300,
                                 "styleName":"CanvasBorder",
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":IntroText,
                                    "id":"txt",
                                    "stylesFactory":function():void
                                    {
                                       this.left = "5";
                                       this.top = "5";
                                       this.right = "5";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "height":115,
                                          "mouseEnabled":false
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"panel",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":336,
                                 "height":422,
                                 "x":334,
                                 "y":8,
                                 "styleName":"CanvasBorder",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_ThreeDiabetes_Image2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":2,
                                          "y":2
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":UIComponent,
                                    "id":"container1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "buttonMode":true,
                                          "width":300,
                                          "height":300,
                                          "x":18,
                                          "y":49
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"leftNumTxt",
                                    "stylesFactory":function():void
                                    {
                                       this.top = "24";
                                       this.left = "140";
                                       this.color = 16777215;
                                       this.fontWeight = "bold";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"width":40};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicDelayButton,
                                    "events":{"click":"___ThreeDiabetes_BasicDelayButton1_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.top = "24";
                                       this.left = "163";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"styleName":"BtnAdd"};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_ThreeDiabetes_Label2",
                                    "stylesFactory":function():void
                                    {
                                       this.top = "24";
                                       this.left = "185";
                                       this.color = 65535;
                                       this.fontWeight = "bold";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"width":75};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"scoreTxt",
                                    "stylesFactory":function():void
                                    {
                                       this.top = "24";
                                       this.left = "260";
                                       this.color = 65535;
                                       this.fontWeight = "bold";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"width":70};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"_ThreeDiabetes_BasicGlowButton1",
                                    "events":{"click":"___ThreeDiabetes_BasicGlowButton1_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.right = "5";
                                       this.top = "15";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"styleName":"BtnStdRed"};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"refreshBtn",
                                    "events":{"click":"__refreshBtn_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":270,
                                          "y":362,
                                          "styleName":"BtnStdRed"
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
      
      private var rankData:Array;
      
      public var _ThreeDiabetes_Label2:Label;
      
      private var steps:Array;
      
      private var _115312txt:IntroText;
      
      private var moveBox1:ThreeDiabetesBox;
      
      private var moveBox2:ThreeDiabetesBox;
      
      public var _ThreeDiabetes_BasicTitleCanvas1:BasicTitleCanvas;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var moveHandlers:Array = [];
      
      private var _485512578scoreTxt:Label;
      
      private var _145245136container1:UIComponent;
      
      private var _core:Core = Core.getInstance();
      
      public var _ThreeDiabetes_Image1:Image;
      
      public var _ThreeDiabetes_Image2:Image;
      
      private var stepData:Object;
      
      mx_internal var _watchers:Array = [];
      
      private var _549570497canMove:Boolean = true;
      
      private var _106433028panel:Canvas;
      
      private var effect_arr:Array;
      
      private var boxes:Dictionary;
      
      private var _978091684rankTxt:ArrayCollection = new ArrayCollection();
      
      private var effect_bm:Bitmap;
      
      private var wData:Object;
      
      private var _1975768049leftNumTxt:Label;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var load:Loader;
      
      private var _321863295refreshBtn:BasicGlowButton;
      
      private var moveNum:int = 0;
      
      private var load_state:int = 0;
      
      public function ThreeDiabetes()
      {
         super();
         mx_internal::_document = this;
         this.width = 700;
         this.height = 500;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ThreeDiabetes._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get leftNumTxt() : Label
      {
         return this._1975768049leftNumTxt;
      }
      
      public function showPanel() : void
      {
         initView();
         visible = true;
      }
      
      public function set panel(param1:Canvas) : void
      {
         var _loc2_:Object = this._106433028panel;
         if(_loc2_ !== param1)
         {
            this._106433028panel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"panel",_loc2_,param1));
         }
      }
      
      private function init() : void
      {
         var _loc2_:Sprite = null;
         var _loc3_:UIComponent = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:ThreeDiabetesBox = null;
         txt.htmlText = Language.SUMMER_GAME_PANEL[19];
         boxes = new Dictionary();
         var _loc1_:int = 0;
         while(_loc1_ < 6 * 2)
         {
            _loc5_ = 0;
            while(_loc5_ < 6)
            {
               _loc6_ = _loc1_ * 6 + _loc5_;
               _loc7_ = new ThreeDiabetesBox();
               _loc7_.setIndex(_loc6_);
               _loc7_.setParam(false,1);
               _loc7_.setType(-1);
               _loc7_.x = 50 * _loc5_;
               _loc7_.y = 50 * _loc1_ - 300;
               boxes[_loc6_] = _loc7_;
               container1.addChild(_loc7_);
               _loc5_++;
            }
            _loc1_++;
         }
         _loc2_ = new Sprite();
         _loc2_.graphics.beginFill(16777215,1);
         _loc2_.graphics.drawRect(0,0,300,300);
         _loc2_.graphics.endFill();
         _loc3_ = new UIComponent();
         _loc3_.x = container1.x;
         _loc3_.y = container1.y;
         _loc3_.addChild(_loc2_);
         panel.addChild(_loc3_);
         container1.mask = _loc2_;
         effect_bm = new Bitmap(new BitmapData(EFFECT_BM_WIDTH,EFFECT_BM_HEIGHT,true,16777215));
         effect_bm.x = container1.x - 50;
         effect_bm.y = container1.y - 50;
         var _loc4_:UIComponent = new UIComponent();
         _loc4_.addChild(effect_bm);
         _loc4_.mouseChildren = false;
         _loc4_.mouseEnabled = false;
         panel.addChild(_loc4_);
      }
      
      public function set refreshBtn(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._321863295refreshBtn;
         if(_loc2_ !== param1)
         {
            this._321863295refreshBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"refreshBtn",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get panel() : Canvas
      {
         return this._106433028panel;
      }
      
      public function set scoreTxt(param1:Label) : void
      {
         var _loc2_:Object = this._485512578scoreTxt;
         if(_loc2_ !== param1)
         {
            this._485512578scoreTxt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scoreTxt",_loc2_,param1));
         }
      }
      
      private function _ThreeDiabetes_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.SUMMER_GAME_PANEL[9];
         _loc1_ = ResManager.getIconUrl(4130220000726);
         _loc1_ = ResManager.getIconUrl(4130220000478);
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Language.SUMMER_GAME_PANEL[18];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Language.SUMMER_GAME_PANEL[16];
         _loc1_ = canMove;
         _loc1_ = Language.SUMMER_GAME_PANEL[11];
      }
      
      private function onBuy(param1:Object) : void
      {
         if(!param1)
         {
            return;
         }
         var _loc2_:Boolean = Boolean(param1["flag"]);
         if(_loc2_)
         {
            wData.leftNum = param1["num"];
            leftNumTxt.text = wData.leftNum;
         }
         else
         {
            this.visible = false;
         }
      }
      
      public function __refreshBtn_click(param1:MouseEvent) : void
      {
         allRefresh();
      }
      
      public function checkDiabetes(param1:int, param2:int) : void
      {
         if(!canMove)
         {
            return;
         }
         if(Boolean(wData) && int(wData.leftNum) == 0)
         {
            _core.sysMidNote(Language.SUMMER_GAME_PANEL[13]);
            return;
         }
         if(moveBox1 != null || moveBox2 != null)
         {
            return;
         }
         moveBox1 = boxes[param1];
         moveBox2 = boxes[param2];
         swapBoxes(moveEndHandler);
      }
      
      private function dropDown() : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:ThreeDiabetesBox = null;
         var _loc8_:EnterFrameMove = null;
         var _loc1_:int = 0;
         while(_loc1_ < 6)
         {
            _loc2_ = 11 * 6 + _loc1_;
            _loc3_ = 11;
            _loc4_ = 0;
            _loc5_ = 0;
            while(_loc5_ < 12)
            {
               _loc6_ = _loc2_ - _loc5_ * 6;
               _loc7_ = boxes[_loc6_];
               if(!_loc7_)
               {
                  _loc4_++;
               }
               else if(_loc4_ > 0)
               {
                  ++moveNum;
                  _loc8_ = new EnterFrameMove();
                  _loc8_.target = _loc7_;
                  _loc8_.stepLength = 10;
                  _loc8_.xBy = 0;
                  _loc8_.yBy = 50 * _loc4_;
                  boxes[_loc6_] = null;
                  boxes[_loc6_ + _loc4_ * 6] = _loc7_;
                  _loc7_.setIndex(_loc6_ + _loc4_ * 6);
                  _loc8_.addEventListener(EnterFrameMove.EFFECT_END,stepMoveEnd);
                  _loc8_.play(true);
                  moveHandlers.push(_loc8_);
               }
               _loc5_++;
            }
            _loc1_++;
         }
      }
      
      private function loadComplete(param1:Event) : void
      {
         var _loc8_:Class = null;
         var _loc9_:MovieClip = null;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc2_:Array = ["yellow","blue","green","zi","red","bomb","num2"];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.length)
         {
            _loc8_ = load.contentLoaderInfo.applicationDomain.getDefinition(_loc2_[_loc3_]) as Class;
            _loc9_ = new _loc8_();
            _loc10_ = new BitmapData(_loc9_.width,_loc9_.height,true,16777215);
            _loc10_.draw(_loc9_);
            rects[_loc3_] = _loc10_;
            _loc3_++;
         }
         var _loc4_:Class = load.contentLoaderInfo.applicationDomain.getDefinition("bomb_eff") as Class;
         var _loc5_:MovieClip = new _loc4_();
         var _loc6_:Matrix = new Matrix();
         var _loc7_:int = 1;
         while(_loc7_ <= _loc5_.totalFrames)
         {
            _loc5_.gotoAndStop(_loc7_);
            if(_loc5_.width * _loc5_.height > 0)
            {
               _loc11_ = new BitmapData(_loc5_.width,_loc5_.height,true,16777215);
               _loc6_.tx = 200;
               _loc6_.ty = 200;
               _loc11_.draw(_loc5_,_loc6_);
               effects[_loc7_ - 1] = _loc11_;
            }
            _loc7_++;
         }
         load_state = 2;
         load.contentLoaderInfo.removeEventListener(Event.COMPLETE,loadComplete);
         load.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,loadError);
         init();
         _core.remote.call("summerGameDiabetes",null);
      }
      
      public function onGetData(param1:Object) : void
      {
         var _loc3_:String = null;
         var _loc4_:EnterFrameMove = null;
         if(!param1)
         {
            return;
         }
         if(!param1["data"])
         {
            visible = false;
            return;
         }
         clean();
         if(!param1["flag"])
         {
            _loc3_ = Language.SUMMER_GAME_PANEL[56];
            Alert.show(_loc3_,"",Alert.YES,null);
         }
         var _loc2_:int = 0;
         while(_loc2_ < moveHandlers.length)
         {
            _loc4_ = moveHandlers[_loc2_];
            if(_loc4_)
            {
               _loc4_.stop();
               _loc4_.destroy();
            }
            _loc2_++;
         }
         moveHandlers.length = 0;
         wData = param1["data"];
         leftNumTxt.text = wData.leftNum;
         scoreTxt.text = (Math.floor(int(wData.score) * 10) / 10).toString();
         canMove = true;
         refreshLand(wData["data"]);
         checkPosition();
      }
      
      private function checkDiabete(param1:int) : Boolean
      {
         var _loc4_:Object = null;
         var _loc2_:Object = wData["data"][param1];
         var _loc3_:int = 1;
         _loc4_ = wData["data"][param1 - 6];
         while(Boolean(_loc4_) && _loc4_.type == _loc2_.type)
         {
            _loc3_++;
            if(_loc4_.index - 6 < 36)
            {
               break;
            }
            _loc4_ = wData["data"][_loc4_.index - 6];
         }
         _loc4_ = wData["data"][param1 + 6];
         while(Boolean(_loc4_) && _loc4_.type == _loc2_.type)
         {
            _loc3_++;
            _loc4_ = wData["data"][_loc4_.index + 6];
         }
         if(_loc3_ >= 3)
         {
            return true;
         }
         _loc3_ = 1;
         _loc4_ = wData["data"][param1 - 1];
         while(Boolean(_loc4_) && Boolean(_loc4_.type == _loc2_.type) && (_loc4_.index + 1) % 6 != 0)
         {
            _loc3_++;
            _loc4_ = wData["data"][_loc4_.index - 1];
         }
         _loc4_ = wData["data"][param1 + 1];
         while(Boolean(_loc4_) && Boolean(_loc4_.type == _loc2_.type) && _loc4_.index % 6 != 0)
         {
            _loc3_++;
            _loc4_ = wData["data"][_loc4_.index + 1];
         }
         if(_loc3_ >= 3)
         {
            return true;
         }
         return false;
      }
      
      private function clean() : void
      {
         var _loc1_:ThreeDiabetesBox = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(!boxes)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < 6)
         {
            _loc3_ = 0;
            while(_loc3_ < 6)
            {
               _loc4_ = _loc2_ * 6 + _loc3_;
               _loc1_ = boxes[_loc4_];
               if(_loc1_)
               {
                  _loc1_.x = 50 * _loc3_;
                  _loc1_.y = 50 * _loc2_ - 300;
                  _loc1_.setParam(false,1);
                  _loc1_.setType(-1);
               }
               else
               {
                  _loc1_ = new ThreeDiabetesBox();
                  _loc1_.setIndex(_loc4_);
                  boxes[_loc4_] = _loc1_;
                  _loc1_.x = 50 * _loc3_;
                  _loc1_.y = 50 * _loc2_ - 300;
                  container1.addChild(_loc1_);
               }
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function askBuy(param1:CloseEvent) : void
      {
         if(param1.detail == Alert.YES)
         {
            _core.remote.call("diabetesBuy",new Responder(onBuy));
         }
      }
      
      private function set rankTxt(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._978091684rankTxt;
         if(_loc2_ !== param1)
         {
            this._978091684rankTxt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rankTxt",_loc2_,param1));
         }
      }
      
      private function checkPosition() : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:ThreeDiabetesBox = null;
         var _loc1_:int = 0;
         while(_loc1_ < 12)
         {
            _loc2_ = 0;
            while(_loc2_ < 6)
            {
               _loc3_ = _loc1_ * 6 + _loc2_;
               _loc4_ = boxes[_loc3_];
               if(_loc4_)
               {
                  _loc4_.x = 50 * _loc2_;
                  _loc4_.y = 50 * _loc1_ - 300;
               }
               _loc2_++;
            }
            _loc1_++;
         }
      }
      
      private function askAward(param1:CloseEvent) : void
      {
         if(param1.detail == Alert.YES)
         {
            _core.remote.call("diabetesRefresh",new Responder(onRefresh));
         }
      }
      
      private function getDiabetesRes() : void
      {
         if(load_state != 0)
         {
            _core.remote.call("summerGameDiabetes",null);
            return;
         }
         if(!load)
         {
            load = new Loader();
            load.contentLoaderInfo.addEventListener(Event.COMPLETE,loadComplete);
            load.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,loadError);
            load.load(new URLRequest(ResManager.getResUrl(2080130000467)));
            load_state = 1;
         }
      }
      
      private function showStep() : void
      {
         var _loc5_:int = 0;
         var _loc6_:ThreeDiabetesBox = null;
         if(!steps || steps.length == 0)
         {
            canMove = true;
            wData["data"] = stepData;
            wData.leftNum = int(wData.leftNum) - 1;
            leftNumTxt.text = wData.leftNum;
            return;
         }
         var _loc1_:Object = steps.shift();
         stepData = _loc1_["data"];
         wData.score = _loc1_["score"];
         scoreTxt.text = (Math.floor(int(wData.score) * 10) / 10).toString();
         effect_arr = [];
         if(!hasEventListener(Event.ENTER_FRAME))
         {
            addEventListener(Event.ENTER_FRAME,effectHandler);
         }
         var _loc2_:Matrix = new Matrix();
         var _loc3_:Array = _loc1_["remove"];
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_.length)
         {
            _loc5_ = int(_loc3_[_loc4_]);
            _loc6_ = boxes[_loc5_];
            if(_loc6_)
            {
               boxes[_loc5_] = null;
               _loc6_.destroy();
               effect_arr.push({
                  "_x":_loc6_.x,
                  "_y":_loc6_.y,
                  "counter":0
               });
            }
            _loc4_++;
         }
         dropDown();
      }
      
      private function refreshLand(param1:Array) : void
      {
         var _loc3_:ThreeDiabetesBox = null;
         var _loc4_:Object = null;
         if(!param1)
         {
            return;
         }
         clean();
         var _loc2_:int = 0;
         _loc2_ = 0;
         while(_loc2_ < param1.length)
         {
            _loc3_ = boxes[_loc2_];
            if(param1[_loc2_])
            {
               _loc4_ = param1[_loc2_];
               if(_loc3_)
               {
                  _loc3_.setParam(_loc4_.bomb,_loc4_.num);
                  _loc3_.setType(_loc4_.type);
                  _loc3_.setIndex(_loc2_);
               }
            }
            else if(_loc3_)
            {
               _loc3_.setParam(false,1);
               _loc3_.setType(-1);
            }
            _loc2_++;
         }
      }
      
      private function effectHandler(param1:Event) : void
      {
         var _loc4_:Object = null;
         var _loc5_:BitmapData = null;
         if(effect_arr.length == 0)
         {
            removeEventListener(Event.ENTER_FRAME,effectHandler);
            return;
         }
         effect_bm.bitmapData.fillRect(new Rectangle(0,0,EFFECT_BM_WIDTH,EFFECT_BM_HEIGHT),16777215);
         var _loc2_:Matrix = new Matrix();
         var _loc3_:* = 0;
         while(_loc3_ < effect_arr.length)
         {
            if(effects.length == 0)
            {
               break;
            }
            _loc4_ = effect_arr[_loc3_];
            if(_loc4_.counter >= effects.length)
            {
               effect_arr.splice(_loc3_,1);
               _loc3_--;
            }
            else
            {
               _loc5_ = effects[_loc4_.counter++];
               _loc2_.tx = _loc4_._x - 125;
               _loc2_.ty = _loc4_._y - 125;
               effect_bm.bitmapData.draw(_loc5_,_loc2_);
            }
            _loc3_++;
         }
      }
      
      private function clearPage() : void
      {
         rankTxt.removeAll();
      }
      
      [Bindable(event="propertyChange")]
      public function get txt() : IntroText
      {
         return this._115312txt;
      }
      
      private function buy() : void
      {
         var _loc1_:String = Language.SUMMER_GAME_PANEL[27];
         Alert.show(_loc1_,"",Alert.YES | Alert.NO,null,askBuy);
      }
      
      [Bindable(event="propertyChange")]
      public function get refreshBtn() : BasicGlowButton
      {
         return this._321863295refreshBtn;
      }
      
      private function set canMove(param1:Boolean) : void
      {
         var _loc2_:Object = this._549570497canMove;
         if(_loc2_ !== param1)
         {
            this._549570497canMove = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canMove",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get scoreTxt() : Label
      {
         return this._485512578scoreTxt;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:ThreeDiabetes = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ThreeDiabetes_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_ThreeDiabetesWatcherSetupUtil");
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
      
      private function moveEndHandler2(param1:Event) : void
      {
         moveBox1 = null;
         moveBox2 = null;
         checkPosition();
      }
      
      private function moveEndHandler(param1:Event) : void
      {
         var _loc2_:Array = wData["data"];
         diabetes = checkDiabete(moveBox1.index) || checkDiabete(moveBox2.index);
         if(diabetes)
         {
            canMove = false;
            Core.getInstance().remote.call("diabetesMoveBox",null,moveBox1.index,moveBox2.index);
            checkPosition();
            moveBox1 = null;
            moveBox2 = null;
            return;
         }
         swapBoxes(moveEndHandler2);
      }
      
      [Bindable(event="propertyChange")]
      private function get rankTxt() : ArrayCollection
      {
         return this._978091684rankTxt;
      }
      
      public function onGetAward(param1:Object) : void
      {
         if(!param1)
         {
            return;
         }
         if(!param1["flag"])
         {
            this.visible = false;
            return;
         }
         if(wData)
         {
            wData.state = 2;
         }
      }
      
      private function getAward() : void
      {
         if(Boolean(wData) && wData.state == 2)
         {
            _core.sysMidNote(Language.SUMMER_GAME_PANEL[7]);
            return;
         }
         if(int(wData.leftNum) > 0)
         {
            _core.sysMidNote(Language.SUMMER_GAME_PANEL[15]);
            return;
         }
         _core.remote.call("diaBetesGetAward",null);
      }
      
      private function refreshRank() : void
      {
         rankData.sort(sortByScore);
      }
      
      public function set container1(param1:UIComponent) : void
      {
         var _loc2_:Object = this._145245136container1;
         if(_loc2_ !== param1)
         {
            this._145245136container1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"container1",_loc2_,param1));
         }
      }
      
      private function _ThreeDiabetes_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SUMMER_GAME_PANEL[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ThreeDiabetes_BasicTitleCanvas1.text = param1;
         },"_ThreeDiabetes_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000726);
         },function(param1:Object):void
         {
            _ThreeDiabetes_Image1.source = param1;
         },"_ThreeDiabetes_Image1.source");
         result[1] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000478);
         },function(param1:Object):void
         {
            _ThreeDiabetes_Image2.source = param1;
         },"_ThreeDiabetes_Image2.source");
         result[2] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            leftNumTxt.filters = param1;
         },"leftNumTxt.filters");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SUMMER_GAME_PANEL[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ThreeDiabetes_Label2.text = param1;
         },"_ThreeDiabetes_Label2.text");
         result[4] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            _ThreeDiabetes_Label2.filters = param1;
         },"_ThreeDiabetes_Label2.filters");
         result[5] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            scoreTxt.filters = param1;
         },"scoreTxt.filters");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SUMMER_GAME_PANEL[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ThreeDiabetes_BasicGlowButton1.label = param1;
         },"_ThreeDiabetes_BasicGlowButton1.label");
         result[7] = binding;
         binding = new Binding(this,function():Boolean
         {
            return canMove;
         },function(param1:Boolean):void
         {
            refreshBtn.enabled = param1;
         },"refreshBtn.enabled");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SUMMER_GAME_PANEL[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            refreshBtn.label = param1;
         },"refreshBtn.label");
         result[9] = binding;
         return result;
      }
      
      public function ___ThreeDiabetes_BasicDelayButton1_click(param1:MouseEvent) : void
      {
         buy();
      }
      
      private function loadError(param1:IOErrorEvent) : void
      {
         trace(" diabetes load res Error ");
      }
      
      private function onPageChanged(param1:int, param2:int) : void
      {
         var _loc4_:Object = null;
         rankTxt.removeAll();
         var _loc3_:int = 0;
         while(_loc3_ < 10)
         {
            _loc4_ = rankData[_loc3_ + param1];
            if(_loc4_)
            {
               rankTxt.addItem(_loc4_);
            }
            _loc3_++;
         }
      }
      
      public function onSetBox(param1:Object) : void
      {
         if(!param1)
         {
            return;
         }
         var _loc2_:Boolean = Boolean(param1["flag"]);
         if(_loc2_)
         {
            steps = param1["steps"];
            showStep();
         }
         else
         {
            this.visible = false;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get container1() : UIComponent
      {
         return this._145245136container1;
      }
      
      override public function initView() : void
      {
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         getDiabetesRes();
      }
      
      [Bindable(event="propertyChange")]
      private function get canMove() : Boolean
      {
         return this._549570497canMove;
      }
      
      private function stepMoveEnd(param1:Event) : void
      {
         --moveNum;
         if(moveNum > 0)
         {
            return;
         }
         moveHandlers.length = 0;
         refreshQueue();
         checkPosition();
         showStep();
      }
      
      public function set leftNumTxt(param1:Label) : void
      {
         var _loc2_:Object = this._1975768049leftNumTxt;
         if(_loc2_ !== param1)
         {
            this._1975768049leftNumTxt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"leftNumTxt",_loc2_,param1));
         }
      }
      
      private function swapBoxes(param1:Function) : void
      {
         var _loc2_:Object = boxes[moveBox1.index];
         var _loc3_:int = moveBox1.index;
         var _loc4_:int = moveBox2.index;
         boxes[moveBox1.index] = boxes[moveBox2.index];
         boxes[moveBox2.index] = _loc2_;
         var _loc5_:int = moveBox1.index;
         moveBox1.index = moveBox2.index;
         moveBox2.index = _loc5_;
         var _loc6_:Object = wData["data"][moveBox1.index];
         wData["data"][moveBox1.index] = wData["data"][moveBox2.index];
         wData["data"][moveBox2.index] = _loc6_;
         var _loc7_:int = int(wData["data"][moveBox1.index].index);
         wData["data"][moveBox1.index].index = wData["data"][moveBox2.index].index;
         wData["data"][moveBox2.index].index = _loc7_;
         var _loc8_:EnterFrameMove = new EnterFrameMove();
         _loc8_.target = moveBox1;
         _loc8_.stepLength = 10;
         _loc8_.xBy = moveBox2.x - moveBox1.x;
         _loc8_.yBy = moveBox2.y - moveBox1.y;
         _loc8_.addEventListener(EnterFrameMove.EFFECT_END,param1);
         _loc8_.play(true);
         var _loc9_:EnterFrameMove = new EnterFrameMove();
         _loc9_.target = moveBox2;
         _loc9_.stepLength = 10;
         _loc9_.xBy = moveBox1.x - moveBox2.x;
         _loc9_.yBy = moveBox1.y - moveBox2.y;
         _loc9_.play(true);
      }
      
      public function set txt(param1:IntroText) : void
      {
         var _loc2_:Object = this._115312txt;
         if(_loc2_ !== param1)
         {
            this._115312txt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txt",_loc2_,param1));
         }
      }
      
      public function ___ThreeDiabetes_BasicGlowButton1_click(param1:MouseEvent) : void
      {
         getAward();
      }
      
      private function refreshQueue() : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:ThreeDiabetesBox = null;
         var _loc5_:Object = null;
         var _loc1_:int = 0;
         while(_loc1_ < 6)
         {
            _loc2_ = 0;
            while(_loc2_ < 6)
            {
               _loc3_ = _loc1_ * 6 + _loc2_;
               _loc4_ = boxes[_loc3_];
               if(!_loc4_)
               {
                  _loc4_ = new ThreeDiabetesBox();
                  _loc5_ = stepData[_loc3_];
                  _loc4_.setIndex(_loc3_);
                  _loc4_.setParam(_loc5_.bomb,_loc5_.num);
                  _loc4_.setType(_loc5_.type);
                  boxes[_loc3_] = _loc4_;
                  _loc4_.x = 50 * _loc2_;
                  _loc4_.y = 50 * _loc1_ - 300;
                  container1.addChild(_loc4_);
               }
               _loc2_++;
            }
            _loc1_++;
         }
      }
      
      private function allRefresh() : void
      {
         if(!canMove)
         {
            return;
         }
         if(Boolean(wData) && wData.state == 2)
         {
            _core.sysMidNote(Language.SUMMER_GAME_PANEL[7]);
            return;
         }
         var _loc1_:String = Language.SUMMER_GAME_PANEL[10];
         Alert.show(_loc1_,"",Alert.YES | Alert.NO,null,askAward);
      }
      
      private function onRefresh(param1:Object) : void
      {
         if(!param1)
         {
            return;
         }
         if(!param1["flag"])
         {
            this.visible = false;
            return;
         }
         wData = param1["data"];
         leftNumTxt.text = wData.leftNum;
         refreshLand(wData["data"]);
         checkPosition();
      }
      
      private function sortByScore(param1:Object, param2:Object) : Number
      {
         if(param1.rank == param2.rank)
         {
            return 0;
         }
         if(param1.rank > param2.rank)
         {
            return 1;
         }
         return -1;
      }
   }
}

