package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.effects.EnterFrameMove;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.IntroText;
   import com.qeedoo.ui.view.comp.Wasterlandbox;
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
   import mx.controls.CheckBox;
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
   
   public class Wasteland extends DragableCanvas implements IBindingClient
   {
      
      public static var picc_bmds:Object;
      
      public static var yellowBMD:BitmapData;
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public static var pic_bmds:Object;
      
      public static var backBMD:BitmapData;
      
      private static var _1931275169showAlert:Boolean = true;
      
      private static var _staticBindingEventDispatcher:EventDispatcher = new EventDispatcher();
      
      private var _763435276showAlertbox:CheckBox;
      
      private var moveSp:Sprite;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":700,
               "height":500,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_Wasteland_BasicTitleCanvas1"
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
                                 "width":265,
                                 "height":290,
                                 "x":8,
                                 "y":8,
                                 "styleName":"CanvasBorder",
                                 "mouseEnabled":false,
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_Wasteland_Image1"
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":265,
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
                                 "width":400,
                                 "height":430,
                                 "x":275,
                                 "y":8,
                                 "styleName":"CanvasBorder",
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_Wasteland_Image2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":2,
                                          "y":2
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"sour",
                                    "stylesFactory":function():void
                                    {
                                       this.left = "7";
                                       this.top = "13";
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":UIComponent,
                                    "id":"container1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "percentWidth":100,
                                          "percentHeight":100
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Wasterlandbox,
                                    "id":"queue0",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":330,
                                          "y":55
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "stylesFactory":function():void
                                    {
                                       this.top = "150";
                                       this.right = "0";
                                       this.color = 65535;
                                       this.fontWeight = "bold";
                                       this.textAlign = "center";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "text":"20 vàng/lần",
                                          "width":80
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"coverNum",
                                    "stylesFactory":function():void
                                    {
                                       this.top = "225";
                                       this.right = "0";
                                       this.color = 65535;
                                       this.fontWeight = "bold";
                                       this.textAlign = "center";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"width":80};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"score",
                                    "stylesFactory":function():void
                                    {
                                       this.top = "293";
                                       this.right = "0";
                                       this.color = 65535;
                                       this.fontWeight = "bold";
                                       this.textAlign = "center";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"width":80};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"_Wasteland_BasicGlowButton1",
                                    "events":{"click":"___Wasteland_BasicGlowButton1_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.horizontalCenter = "-80";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":20,
                                          "styleName":"BtnStdRed"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":CheckBox,
                                    "id":"showAlertbox",
                                    "events":{"click":"__showAlertbox_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":320,
                                          "y":340
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_Wasteland_Label4",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":338,
                                          "y":340
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
      
      private var _3536377sour:Image;
      
      private var _115312txt:IntroText;
      
      private var _948696769queue0:Wasterlandbox;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      public var _Wasteland_Image1:Image;
      
      public var _Wasteland_Image2:Image;
      
      private var moveMask:Sprite;
      
      private var wasteland_load_state:int = 0;
      
      private var _351784881coverNum:Label;
      
      private var _core:Core = Core.getInstance();
      
      private var _145245136container1:UIComponent;
      
      mx_internal var _watchers:Array = [];
      
      private var _106433028panel:Canvas;
      
      private var boxes:Dictionary;
      
      public var _Wasteland_BasicGlowButton1:BasicGlowButton;
      
      private var _978091684rankTxt:ArrayCollection = new ArrayCollection();
      
      private var wData:Object;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _109264530score:Label;
      
      public var _Wasteland_Label4:Label;
      
      private var load:Loader;
      
      mx_internal var _bindings:Array = [];
      
      public var _Wasteland_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var ddx:Number = 13;
      
      private var ddy:Number = 115;
      
      private var moveBm:Bitmap;
      
      public function Wasteland()
      {
         super();
         mx_internal::_document = this;
         this.width = 700;
         this.height = 500;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         Wasteland._watcherSetupUtil = param1;
      }
      
      public static function set showAlert(param1:Boolean) : void
      {
         var _loc3_:IEventDispatcher = null;
         var _loc2_:Object = Wasteland._1931275169showAlert;
         if(_loc2_ !== param1)
         {
            Wasteland._1931275169showAlert = param1;
            _loc3_ = Wasteland.staticEventDispatcher;
            if(_loc3_ != null)
            {
               _loc3_.dispatchEvent(PropertyChangeEvent.createUpdateEvent(Wasteland,"showAlert",_loc2_,param1));
            }
         }
      }
      
      public static function get staticEventDispatcher() : IEventDispatcher
      {
         return _staticBindingEventDispatcher;
      }
      
      [Bindable(event="propertyChange")]
      public static function get showAlert() : Boolean
      {
         return Wasteland._1931275169showAlert;
      }
      
      [Bindable(event="propertyChange")]
      public function get sour() : Image
      {
         return this._3536377sour;
      }
      
      public function set sour(param1:Image) : void
      {
         var _loc2_:Object = this._3536377sour;
         if(_loc2_ !== param1)
         {
            this._3536377sour = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sour",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get panel() : Canvas
      {
         return this._106433028panel;
      }
      
      private function refreshQueue(param1:Array) : void
      {
         var _loc3_:int = 0;
         if(!param1)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            _loc3_ = int(param1[param1.length - 1 - _loc2_]);
            this["queue" + _loc2_].setType(_loc3_,false);
            _loc2_++;
         }
      }
      
      public function showPanel() : void
      {
         initView();
         visible = true;
      }
      
      [Bindable(event="propertyChange")]
      public function get showAlertbox() : CheckBox
      {
         return this._763435276showAlertbox;
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
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:Wasterlandbox = null;
         coverNum.htmlText = "0/36";
         txt.htmlText = Language.SUMMER_GAME_PANEL[28];
         boxes = new Dictionary();
         var _loc1_:int = 0;
         while(_loc1_ < 6)
         {
            _loc2_ = 0;
            while(_loc2_ < 6)
            {
               _loc3_ = _loc1_ * 6 + _loc2_;
               _loc4_ = new Wasterlandbox();
               _loc4_.setIndex(_loc3_);
               _loc4_.setType(-1,false);
               _loc4_.register();
               _loc4_.buttonMode = true;
               _loc4_.x = ddx + 50 * _loc2_;
               _loc4_.y = ddy + 50 * _loc1_;
               boxes[_loc3_] = _loc4_;
               container1.addChild(_loc4_);
               _loc2_++;
            }
            _loc1_++;
         }
      }
      
      public function set showAlertbox(param1:CheckBox) : void
      {
         var _loc2_:Object = this._763435276showAlertbox;
         if(_loc2_ !== param1)
         {
            this._763435276showAlertbox = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showAlertbox",_loc2_,param1));
         }
      }
      
      public function set score(param1:Label) : void
      {
         var _loc2_:Object = this._109264530score;
         if(_loc2_ !== param1)
         {
            this._109264530score = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"score",_loc2_,param1));
         }
      }
      
      private function onBuy(param1:Object) : void
      {
         if(!param1)
         {
            return;
         }
         var _loc2_:Boolean = Boolean(param1["flag"]);
         if(!_loc2_)
         {
            this.visible = false;
         }
      }
      
      private function setAlertShow() : void
      {
         showAlert = !showAlertbox.selected;
      }
      
      [Bindable(event="propertyChange")]
      public function get queue0() : Wasterlandbox
      {
         return this._948696769queue0;
      }
      
      public function onGetData(param1:Object) : void
      {
         var _loc2_:String = null;
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
            _loc2_ = Language.SUMMER_GAME_PANEL[56];
            Alert.show(_loc2_,"",Alert.YES,null);
         }
         wData = param1["data"];
         refreshQueue(wData["queue"]);
         refreshLand(wData["data"]);
         score.text = wData["score"];
      }
      
      private function loadComplete(param1:Event) : void
      {
         var _loc7_:String = null;
         var _loc8_:Class = null;
         var _loc9_:MovieClip = null;
         var _loc10_:BitmapData = null;
         var _loc11_:Class = null;
         var _loc12_:MovieClip = null;
         var _loc13_:BitmapData = null;
         var _loc2_:Class = load.contentLoaderInfo.applicationDomain.getDefinition("pic_yellow") as Class;
         var _loc3_:MovieClip = new _loc2_();
         yellowBMD = new BitmapData(_loc3_.width,_loc3_.height,true,16777215);
         yellowBMD.draw(_loc3_);
         var _loc4_:Class = load.contentLoaderInfo.applicationDomain.getDefinition("back") as Class;
         var _loc5_:MovieClip = new _loc4_();
         backBMD = new BitmapData(_loc5_.width,_loc5_.height,true,16777215);
         backBMD.draw(_loc5_);
         pic_bmds = {};
         picc_bmds = {};
         var _loc6_:int = 0;
         while(_loc6_ < 11)
         {
            _loc7_ = "pic" + _loc6_;
            _loc8_ = load.contentLoaderInfo.applicationDomain.getDefinition(_loc7_) as Class;
            _loc9_ = new _loc8_();
            _loc10_ = new BitmapData(_loc9_.width,_loc9_.height,true,16777215);
            _loc10_.draw(_loc9_);
            pic_bmds[_loc6_] = _loc10_;
            _loc7_ = "picc" + _loc6_;
            _loc11_ = load.contentLoaderInfo.applicationDomain.getDefinition(_loc7_) as Class;
            _loc12_ = new _loc11_();
            _loc13_ = new BitmapData(_loc12_.width,_loc12_.height,true,16777215);
            _loc13_.draw(_loc12_);
            picc_bmds[_loc6_] = _loc13_;
            _loc6_++;
         }
         wasteland_load_state = 2;
         load.contentLoaderInfo.removeEventListener(Event.COMPLETE,loadComplete);
         load.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,loadError);
         init();
         _core.remote.call("summerGameWasteland",null);
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
      
      private function clean() : void
      {
         var _loc2_:Wasterlandbox = null;
         if(!boxes)
         {
            return;
         }
         var _loc1_:int = 0;
         _loc1_ = 0;
         while(_loc1_ < 36)
         {
            _loc2_ = boxes[_loc1_];
            if(_loc2_)
            {
               _loc2_.setType(-1,false);
            }
            _loc1_++;
         }
      }
      
      private function askBuy(param1:CloseEvent) : void
      {
         if(param1.detail == Alert.YES)
         {
            _core.remote.call("wastelandBuy",new Responder(onBuy));
         }
      }
      
      private function startMove() : void
      {
         var _loc1_:EnterFrameMove = new EnterFrameMove();
         _loc1_.target = moveMask;
         _loc1_.stepLength = 8;
         _loc1_.xBy = ddx - moveMask.x;
         _loc1_.yBy = ddy + 300 - moveMask.y;
         _loc1_.addEventListener(EnterFrameMove.EFFECT_END,moveEndHandler);
         _loc1_.play(true);
      }
      
      [Bindable(event="propertyChange")]
      public function get coverNum() : Label
      {
         return this._351784881coverNum;
      }
      
      private function askAward(param1:CloseEvent) : void
      {
         if(param1.detail == Alert.YES)
         {
            _core.remote.call("wastelandGetAward",null);
         }
      }
      
      private function refreshLand(param1:Array) : void
      {
         var _loc3_:Wasterlandbox = null;
         var _loc6_:Object = null;
         if(!param1)
         {
            return;
         }
         clean();
         var _loc2_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Boolean = false;
         _loc2_ = 0;
         while(_loc2_ < param1.length)
         {
            _loc3_ = boxes[_loc2_];
            if(param1[_loc2_])
            {
               _loc6_ = param1[_loc2_];
               if(_loc3_)
               {
                  _loc3_.setType(_loc6_.type,_loc6_.covered);
               }
               if(_loc6_.covered)
               {
                  _loc4_++;
                  if(!_loc5_)
                  {
                     _loc5_ = true;
                     sour.source = ResManager.getIconUrl(4130220000434);
                  }
               }
            }
            _loc2_++;
         }
         coverNum.htmlText = _loc4_ + "/36";
      }
      
      [Bindable(event="propertyChange")]
      public function get txt() : IntroText
      {
         return this._115312txt;
      }
      
      public function __showAlertbox_click(param1:MouseEvent) : void
      {
         setAlertShow();
      }
      
      private function _Wasteland_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SUMMER_GAME_PANEL[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _Wasteland_BasicTitleCanvas1.text = param1;
         },"_Wasteland_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000725);
         },function(param1:Object):void
         {
            _Wasteland_Image1.source = param1;
         },"_Wasteland_Image1.source");
         result[1] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000433);
         },function(param1:Object):void
         {
            _Wasteland_Image2.source = param1;
         },"_Wasteland_Image2.source");
         result[2] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000435);
         },function(param1:Object):void
         {
            sour.source = param1;
         },"sour.source");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SUMMER_GAME_PANEL[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _Wasteland_BasicGlowButton1.label = param1;
         },"_Wasteland_BasicGlowButton1.label");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SUMMER_GAME_PANEL[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _Wasteland_Label4.text = param1;
         },"_Wasteland_Label4.text");
         result[5] = binding;
         return result;
      }
      
      private function clearPage() : void
      {
         rankTxt.removeAll();
      }
      
      public function set queue0(param1:Wasterlandbox) : void
      {
         var _loc2_:Object = this._948696769queue0;
         if(_loc2_ !== param1)
         {
            this._948696769queue0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"queue0",_loc2_,param1));
         }
      }
      
      private function buy() : void
      {
         var _loc1_:String = Language.SUMMER_GAME_PANEL[29];
         Alert.show(_loc1_,"",Alert.YES | Alert.NO,null,askBuy);
      }
      
      public function onWastelandSetBox(param1:Object) : void
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
         refreshQueue(param1["queue"]);
         var _loc2_:int = int(param1["index"]);
         var _loc3_:int = int(param1["type"]);
         var _loc4_:Wasterlandbox = boxes[_loc2_];
         if(_loc4_)
         {
            _loc4_.setType(_loc3_,false);
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:Wasteland = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _Wasteland_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_WastelandWatcherSetupUtil");
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
      public function get score() : Label
      {
         return this._109264530score;
      }
      
      [Bindable(event="propertyChange")]
      private function get rankTxt() : ArrayCollection
      {
         return this._978091684rankTxt;
      }
      
      public function set coverNum(param1:Label) : void
      {
         var _loc2_:Object = this._351784881coverNum;
         if(_loc2_ !== param1)
         {
            this._351784881coverNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"coverNum",_loc2_,param1));
         }
      }
      
      public function onGetAward(param1:Object) : void
      {
         var _loc4_:Wasterlandbox = null;
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
         sour.source = ResManager.getIconUrl(4130220000434);
         if(!moveSp)
         {
            moveSp = new Sprite();
            moveBm = new Bitmap(new BitmapData(300,300,true,16777215));
            moveSp.addChild(moveBm);
            moveMask = new Sprite();
            moveMask.graphics.beginFill(16777215,0);
            moveMask.graphics.drawRect(0,0,300,300);
            moveMask.graphics.endFill();
         }
         moveMask.x = ddx;
         moveMask.y = ddy;
         moveSp.x = moveMask.x;
         moveSp.y = moveMask.y;
         container1.addChild(moveMask);
         container1.addChild(moveSp);
         moveSp.mask = moveMask;
         var _loc2_:Matrix = new Matrix();
         moveBm.bitmapData.fillRect(new Rectangle(0,0,300,300),16777215);
         var _loc3_:int = 0;
         while(_loc3_ < 36)
         {
            _loc4_ = boxes[_loc3_];
            if(_loc4_)
            {
               _loc2_.tx = _loc4_.x - moveMask.x;
               _loc2_.ty = _loc4_.y - moveMask.y;
               moveBm.bitmapData.draw(_loc4_,_loc2_);
            }
            _loc3_++;
         }
         refreshLand(param1["data"]);
         wData["score"] = param1["score"];
         score.text = wData["score"];
         startMove();
      }
      
      private function getAward() : void
      {
         var _loc1_:Object = null;
         var _loc2_:String = null;
         var _loc3_:Wasterlandbox = null;
         if(Boolean(wData) && wData.state == 2)
         {
            _core.sysMidNote(Language.SUMMER_GAME_PANEL[7]);
            return;
         }
         for(_loc1_ in boxes)
         {
            _loc3_ = boxes[_loc1_];
            if(!_loc3_ || _loc3_.type == -1)
            {
               _core.sysMidNote(Language.SUMMER_GAME_PANEL[3]);
               return;
            }
         }
         _loc2_ = Language.SUMMER_GAME_PANEL[6];
         Alert.show(_loc2_,"",Alert.YES | Alert.NO,null,askAward);
      }
      
      public function ___Wasteland_BasicGlowButton1_click(param1:MouseEvent) : void
      {
         getAward();
      }
      
      private function refreshRank() : void
      {
         rankData.sort(sortByScore);
      }
      
      private function moveEndHandler(param1:Event) : void
      {
         var _loc2_:EnterFrameMove = param1.currentTarget as EnterFrameMove;
         _loc2_.removeEventListener(EnterFrameMove.EFFECT_END,moveEndHandler);
         _loc2_.destroy();
         _loc2_ = null;
         if(Boolean(moveSp) && Boolean(moveSp.parent))
         {
            moveSp.parent.removeChild(moveSp);
            moveSp.mask = null;
         }
         if(Boolean(moveMask) && Boolean(moveMask.parent))
         {
            moveMask.parent.removeChild(moveMask);
         }
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
      
      private function loadError(param1:IOErrorEvent) : void
      {
         trace(" wasteland load res Error ");
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
      
      [Bindable(event="propertyChange")]
      public function get container1() : UIComponent
      {
         return this._145245136container1;
      }
      
      private function getWastelandRes() : void
      {
         if(wasteland_load_state != 0)
         {
            _core.remote.call("summerGameWasteland",null);
            return;
         }
         if(!load)
         {
            load = new Loader();
            load.contentLoaderInfo.addEventListener(Event.COMPLETE,loadComplete);
            load.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,loadError);
            load.load(new URLRequest(ResManager.getResUrl(2080130000466)));
            wasteland_load_state = 1;
         }
      }
      
      private function _Wasteland_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.SUMMER_GAME_PANEL[1];
         _loc1_ = ResManager.getIconUrl(4130220000725);
         _loc1_ = ResManager.getIconUrl(4130220000433);
         _loc1_ = ResManager.getIconUrl(4130220000435);
         _loc1_ = Language.SUMMER_GAME_PANEL[2];
         _loc1_ = Language.SUMMER_GAME_PANEL[8];
      }
      
      override public function initView() : void
      {
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         getWastelandRes();
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

