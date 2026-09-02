package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.comp.BasicDelayButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.IntroText;
   import com.qeedoo.ui.view.comp.StoneMasterCube;
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
   import mx.controls.Button;
   import mx.controls.HRule;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.core.UIComponent;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class StoneMaster extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public static var stoneBMD:Object = {};
      
      public static var stoneBMDLight:Object = {};
      
      public static var stoneBMDGray:Object = {};
      
      private var _1278466497steelyardNum:Label;
      
      private var _1656874708stoneType3:Canvas;
      
      private var _176491618stoneType10:Canvas;
      
      private var goalNumBMD:BitmapData;
      
      public var _StoneMaster_IntroText1:IntroText;
      
      private var _1576922576stoneBox6:Canvas;
      
      private var loader:Loader;
      
      private var _564289872curLastNum:Label;
      
      private var _865535507goalNumCvs:Canvas;
      
      public var _StoneMaster_Image1:Image;
      
      public var _StoneMaster_Image2:Image;
      
      private var _1576922577stoneBox7:Canvas;
      
      private var _1656874711stoneType6:Canvas;
      
      private var _1835012049todayScore:Label;
      
      private var _1639959493stoneBox10:Canvas;
      
      private var _1656874707stoneType2:Canvas;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var loadCompleteFlag:Boolean = false;
      
      private var _1576922578stoneBox8:Canvas;
      
      public var _StoneMaster_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _1656874714stoneType9:Canvas;
      
      private var _2100909011currentNumCvs:Canvas;
      
      private var _1656874710stoneType5:Canvas;
      
      private var _865527485goalNumLbl:Label;
      
      private var _1576922571stoneBox1:Canvas;
      
      private var _core:Core = Core.getInstance();
      
      private var _1656874706stoneType1:Canvas;
      
      private var _1576922579stoneBox9:Canvas;
      
      private var _1576922572stoneBox2:Canvas;
      
      private var _2100917033currentNumLbl:Label;
      
      mx_internal var _watchers:Array = [];
      
      private var _176491617stoneType11:Canvas;
      
      private var _1656874713stoneType8:Canvas;
      
      private var _1576922573stoneBox3:Canvas;
      
      public var _StoneMaster_Label5:Label;
      
      private var _1656874709stoneType4:Canvas;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _1576922574stoneBox4:Canvas;
      
      private var _1656874712stoneType7:Canvas;
      
      mx_internal var _bindings:Array = [];
      
      private var _1576922575stoneBox5:Canvas;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":560,
               "height":430,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_StoneMaster_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"CanvasBorder",
                        "width":400,
                        "height":375,
                        "x":9,
                        "y":36,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Image,
                           "id":"_StoneMaster_Image1"
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"stoneType1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":27,
                                 "y":10,
                                 "width":50,
                                 "height":50
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"stoneType2",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":27,
                                 "y":74,
                                 "width":50,
                                 "height":50
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"stoneType3",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":27,
                                 "y":139,
                                 "width":50,
                                 "height":50
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"stoneType4",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":27,
                                 "y":204,
                                 "width":50,
                                 "height":50
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"stoneType5",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":27,
                                 "y":271,
                                 "width":50,
                                 "height":50
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"stoneType6",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":100,
                                 "y":300,
                                 "width":50,
                                 "height":50
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"stoneType7",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":100,
                                 "y":242,
                                 "width":50,
                                 "height":50
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"stoneType8",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":100,
                                 "y":184,
                                 "width":50,
                                 "height":50
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"stoneType9",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":100,
                                 "y":126,
                                 "width":50,
                                 "height":50
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"stoneType10",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":100,
                                 "y":68,
                                 "width":50,
                                 "height":50
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"stoneType11",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":100,
                                 "y":10,
                                 "width":50,
                                 "height":50
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"stoneBox1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":50,
                                 "height":50,
                                 "x":207,
                                 "y":170
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"stoneBox2",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":50,
                                 "height":50,
                                 "x":248,
                                 "y":170
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"stoneBox3",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":50,
                                 "height":50,
                                 "x":287,
                                 "y":171
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"stoneBox4",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":50,
                                 "height":50,
                                 "x":322,
                                 "y":171
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"stoneBox5",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":50,
                                 "height":50,
                                 "x":226,
                                 "y":137
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"stoneBox6",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":50,
                                 "height":50,
                                 "x":263,
                                 "y":137
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"stoneBox7",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":50,
                                 "height":50,
                                 "x":300,
                                 "y":137
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"stoneBox8",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":50,
                                 "height":50,
                                 "x":247,
                                 "y":97
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"stoneBox9",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":50,
                                 "height":50,
                                 "x":280,
                                 "y":97
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"stoneBox10",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":50,
                                 "height":50,
                                 "x":261,
                                 "y":64
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"goalNumCvs",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":155,
                                 "height":40,
                                 "x":207,
                                 "y":10
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"goalNumLbl",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 18;
                              this.color = 0;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "text":"0000",
                                 "x":272,
                                 "y":17
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"currentNumCvs",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":135,
                                 "height":130,
                                 "x":226,
                                 "y":230
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"currentNumLbl",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 18;
                              this.color = 0;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "text":"0000",
                                 "x":270,
                                 "y":282
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"steelyardNum",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 14;
                              this.color = 65535;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":243,
                                 "y":342
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "events":{"click":"___StoneMaster_Button1_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "label":"Xem",
                                 "styleName":"BtnStdGreen",
                                 "x":257,
                                 "y":315
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "events":{"click":"___StoneMaster_Button2_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "label":"Dừng",
                                 "styleName":"BtnStdGreen",
                                 "x":298,
                                 "y":315
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
                        "width":140,
                        "height":173,
                        "x":412,
                        "y":35,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Label,
                           "id":"todayScore",
                           "stylesFactory":function():void
                           {
                              this.color = 65535;
                              this.horizontalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"y":8};
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"_StoneMaster_Label5",
                           "stylesFactory":function():void
                           {
                              this.color = 16776960;
                              this.horizontalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"y":39};
                           }
                        }),new UIComponentDescriptor({
                           "type":HRule,
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":100,
                                 "height":1,
                                 "y":30
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"_StoneMaster_Image2",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":50,
                                 "height":50,
                                 "x":45,
                                 "y":65,
                                 "mouseEnabled":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"curLastNum",
                           "stylesFactory":function():void
                           {
                              this.color = 65535;
                              this.horizontalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"y":128};
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicDelayButton,
                           "events":{"click":"___StoneMaster_BasicDelayButton1_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"BtnAdd",
                                 "x":110,
                                 "y":128
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
                        "width":140,
                        "height":190,
                        "x":412,
                        "y":216,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":IntroText,
                           "id":"_StoneMaster_IntroText1",
                           "stylesFactory":function():void
                           {
                              this.left = "5";
                              this.top = "5";
                              this.right = "5";
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "height":180,
                                 "mouseEnabled":false
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      private var currentNumBMD:BitmapData;
      
      public function StoneMaster()
      {
         super();
         mx_internal::_document = this;
         this.width = 560;
         this.height = 430;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         StoneMaster._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get todayScore() : Label
      {
         return this._1835012049todayScore;
      }
      
      public function showPanel() : void
      {
         getStoneRes();
         if(loadCompleteFlag)
         {
            _core.remote.call("getWeightMasterData",new Responder(onGetData));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get stoneType2() : Canvas
      {
         return this._1656874707stoneType2;
      }
      
      private function addTimes() : void
      {
         var func:Function = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("addWeightMasterTimes",new Responder(onGetData));
            }
         };
         Alert.show(Language.ANNIVERSARY_LANG[15].toString(),"",Alert.YES | Alert.NO,null,func);
      }
      
      [Bindable(event="propertyChange")]
      public function get currentNumLbl() : Label
      {
         return this._2100917033currentNumLbl;
      }
      
      private function _StoneMaster_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.ANNIVERSARY_LANG[11];
         _loc1_ = ResManager.getIconUrl(4130220000721);
         _loc1_ = Language.ANNIVERSARY_LANG[14];
         _loc1_ = Language.ANNIVERSARY_LANG[8];
         _loc1_ = Language.ANNIVERSARY_LANG[25];
         _loc1_ = ResManager.getIconUrl(4130220000719);
         _loc1_ = Language.ANNIVERSARY_LANG[7];
         _loc1_ = Language.ANNIVERSARY_LANG[23];
      }
      
      private function seeThrTrueWeight() : void
      {
         var func:Function = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("seeTheTrueWeight",new Responder(onGetData));
            }
         };
         Alert.show(Language.ANNIVERSARY_LANG[16].toString(),"",Alert.YES | Alert.NO,null,func);
      }
      
      private function loadComplete(param1:Event) : void
      {
         var _loc10_:String = null;
         var _loc11_:Class = null;
         var _loc12_:MovieClip = null;
         var _loc13_:BitmapData = null;
         var _loc2_:int = 1;
         while(_loc2_ <= 11)
         {
            _loc10_ = "shitou" + _loc2_;
            _loc11_ = loader.contentLoaderInfo.applicationDomain.getDefinition(_loc10_) as Class;
            _loc12_ = new _loc11_();
            _loc13_ = new BitmapData(_loc12_.width,_loc12_.height,true,16777215);
            _loc13_.draw(_loc12_);
            stoneBMD[_loc2_] = _loc13_;
            _loc2_++;
         }
         var _loc3_:int = 1;
         while(_loc3_ <= 11)
         {
            _loc10_ = "shitou" + _loc3_ + "L";
            _loc11_ = loader.contentLoaderInfo.applicationDomain.getDefinition(_loc10_) as Class;
            _loc12_ = new _loc11_();
            _loc13_ = new BitmapData(_loc12_.width,_loc12_.height,true,16777215);
            _loc13_.draw(_loc12_);
            stoneBMDLight[_loc3_] = _loc13_;
            _loc3_++;
         }
         var _loc4_:Class = loader.contentLoaderInfo.applicationDomain.getDefinition("goalNum") as Class;
         var _loc5_:MovieClip = new _loc4_();
         var _loc6_:BitmapData = new BitmapData(_loc5_.width,_loc5_.height,true,16777215);
         _loc6_.draw(_loc5_);
         goalNumBMD = _loc6_;
         var _loc7_:Class = loader.contentLoaderInfo.applicationDomain.getDefinition("currentNum") as Class;
         var _loc8_:MovieClip = new _loc7_();
         var _loc9_:BitmapData = new BitmapData(_loc8_.width,_loc8_.height,true,16777215);
         _loc9_.draw(_loc8_);
         currentNumBMD = _loc9_;
         loader.contentLoaderInfo.removeEventListener(Event.COMPLETE,loadComplete);
         loader.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,loadError);
         loadCompleteFlag = true;
         _core.remote.call("getWeightMasterData",new Responder(onGetData));
      }
      
      public function set stoneType11(param1:Canvas) : void
      {
         var _loc2_:Object = this._176491617stoneType11;
         if(_loc2_ !== param1)
         {
            this._176491617stoneType11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stoneType11",_loc2_,param1));
         }
      }
      
      public function onGetData(param1:Object) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Array = null;
         var _loc4_:int = 0;
         var _loc5_:UIComponent = null;
         var _loc6_:Bitmap = null;
         var _loc7_:int = 0;
         var _loc8_:UIComponent = null;
         var _loc9_:Bitmap = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:Canvas = null;
         var _loc15_:StoneMasterCube = null;
         if(param1)
         {
            visible = true;
            _loc2_ = 1;
            while(_loc2_ <= 11)
            {
               _loc14_ = this["stoneType" + _loc2_] as Canvas;
               _loc15_ = new StoneMasterCube();
               _loc15_.register();
               _loc15_.type = 1;
               _loc15_.index = _loc2_;
               if(_loc14_.numChildren > 0)
               {
                  _loc14_.removeAllChildren();
               }
               _loc14_.addChild(_loc15_);
               _loc2_++;
            }
            _loc3_ = param1["steelyardArr"];
            _loc4_ = 1;
            while(_loc4_ <= 10)
            {
               _loc14_ = this["stoneBox" + _loc4_] as Canvas;
               if(_loc14_.numChildren > 0)
               {
                  _loc14_.removeAllChildren();
               }
               if(Number(_loc3_[_loc4_ - 1]))
               {
                  _loc15_ = new StoneMasterCube();
                  _loc15_.register();
                  _loc15_.type = 2;
                  _loc15_.position = _loc4_;
                  _loc15_.index = _loc3_[_loc4_ - 1];
                  _loc14_.addChild(_loc15_);
               }
               _loc4_++;
            }
            _loc5_ = new UIComponent();
            _loc6_ = new Bitmap(goalNumBMD);
            _loc5_.addChild(_loc6_);
            if(goalNumCvs.numChildren > 0)
            {
               goalNumCvs.removeAllChildren();
            }
            goalNumCvs.addChild(_loc5_);
            _loc7_ = int(param1["targetWeight"]);
            goalNumLbl.text = String(_loc7_);
            _loc8_ = new UIComponent();
            _loc9_ = new Bitmap(currentNumBMD);
            _loc8_.addChild(_loc9_);
            if(currentNumCvs.numChildren > 0)
            {
               currentNumCvs.removeAllChildren();
            }
            currentNumCvs.addChild(_loc8_);
            _loc10_ = int(param1["steelyardWeight"]);
            if(param1["openFlag"])
            {
               currentNumLbl.text = _loc10_ + "";
            }
            else
            {
               currentNumLbl.text = hideSomeNum(_loc10_);
            }
            if(param1["state"] == 0)
            {
               currentNumLbl.text = _loc10_ + "";
            }
            steelyardNum.text = Language.ANNIVERSARY_LANG[14].toString().replace("{cnum}",param1["stoneNum"]);
            _loc11_ = int(param1["lastNum"]);
            _loc12_ = int(param1["totalNum"]);
            curLastNum.text = Language.ANNIVERSARY_LANG[7].toString().replace("{cnum}",_loc11_).replace("{lnum}",_loc12_);
            _loc13_ = int(param1["score"]);
            todayScore.text = todayScore.text.replace("{num}",_loc13_);
         }
      }
      
      public function set currentNumLbl(param1:Label) : void
      {
         var _loc2_:Object = this._2100917033currentNumLbl;
         if(_loc2_ !== param1)
         {
            this._2100917033currentNumLbl = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currentNumLbl",_loc2_,param1));
         }
      }
      
      private function hideSomeNum(param1:int) : String
      {
         var _loc2_:String = "";
         var _loc3_:int = param1 / 1000;
         var _loc4_:int = (param1 - _loc3_ * 1000) / 100;
         var _loc5_:int = (param1 - _loc3_ * 1000 - _loc4_ * 100) / 10;
         var _loc6_:int = param1 - _loc3_ * 1000 - _loc4_ * 100 - _loc5_ * 10;
         if(param1 >= 2000 && param1 < 2500)
         {
            _loc2_ = _loc2_ + _loc3_ + _loc4_ + _loc5_ + "*";
         }
         else if(param1 >= 2500)
         {
            _loc2_ = _loc2_ + _loc3_ + _loc4_ + "*" + "*";
         }
         else
         {
            _loc2_ = _loc2_ + _loc3_ + _loc4_ + _loc5_ + _loc6_;
         }
         return _loc2_;
      }
      
      [Bindable(event="propertyChange")]
      public function get goalNumLbl() : Label
      {
         return this._865527485goalNumLbl;
      }
      
      public function ___StoneMaster_BasicDelayButton1_click(param1:MouseEvent) : void
      {
         addTimes();
      }
      
      public function set stoneType10(param1:Canvas) : void
      {
         var _loc2_:Object = this._176491618stoneType10;
         if(_loc2_ !== param1)
         {
            this._176491618stoneType10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stoneType10",_loc2_,param1));
         }
      }
      
      public function set curLastNum(param1:Label) : void
      {
         var _loc2_:Object = this._564289872curLastNum;
         if(_loc2_ !== param1)
         {
            this._564289872curLastNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"curLastNum",_loc2_,param1));
         }
      }
      
      private function getStoneRes() : void
      {
         var _loc1_:LoaderContext = null;
         if(!loader)
         {
            loader = new Loader();
            _loc1_ = new LoaderContext();
            _loc1_.applicationDomain = ApplicationDomain.currentDomain;
            loader.contentLoaderInfo.addEventListener(Event.COMPLETE,loadComplete);
            loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,loadError);
            loader.load(new URLRequest(ResManager.getResUrl(2080130106013)),_loc1_);
         }
      }
      
      public function endGame() : void
      {
         _core.remote.call("endWeightMasterGame",new Responder(onGetData));
      }
      
      public function set goalNumLbl(param1:Label) : void
      {
         var _loc2_:Object = this._865527485goalNumLbl;
         if(_loc2_ !== param1)
         {
            this._865527485goalNumLbl = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"goalNumLbl",_loc2_,param1));
         }
      }
      
      public function set steelyardNum(param1:Label) : void
      {
         var _loc2_:Object = this._1278466497steelyardNum;
         if(_loc2_ !== param1)
         {
            this._1278466497steelyardNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"steelyardNum",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:StoneMaster = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _StoneMaster_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_StoneMasterWatcherSetupUtil");
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
      
      public function ___StoneMaster_Button1_click(param1:MouseEvent) : void
      {
         seeThrTrueWeight();
      }
      
      public function set stoneBox10(param1:Canvas) : void
      {
         var _loc2_:Object = this._1639959493stoneBox10;
         if(_loc2_ !== param1)
         {
            this._1639959493stoneBox10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stoneBox10",_loc2_,param1));
         }
      }
      
      public function set stoneBox4(param1:Canvas) : void
      {
         var _loc2_:Object = this._1576922574stoneBox4;
         if(_loc2_ !== param1)
         {
            this._1576922574stoneBox4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stoneBox4",_loc2_,param1));
         }
      }
      
      public function set stoneBox2(param1:Canvas) : void
      {
         var _loc2_:Object = this._1576922572stoneBox2;
         if(_loc2_ !== param1)
         {
            this._1576922572stoneBox2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stoneBox2",_loc2_,param1));
         }
      }
      
      public function set stoneBox6(param1:Canvas) : void
      {
         var _loc2_:Object = this._1576922576stoneBox6;
         if(_loc2_ !== param1)
         {
            this._1576922576stoneBox6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stoneBox6",_loc2_,param1));
         }
      }
      
      public function set stoneBox3(param1:Canvas) : void
      {
         var _loc2_:Object = this._1576922573stoneBox3;
         if(_loc2_ !== param1)
         {
            this._1576922573stoneBox3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stoneBox3",_loc2_,param1));
         }
      }
      
      public function set stoneBox8(param1:Canvas) : void
      {
         var _loc2_:Object = this._1576922578stoneBox8;
         if(_loc2_ !== param1)
         {
            this._1576922578stoneBox8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stoneBox8",_loc2_,param1));
         }
      }
      
      public function set stoneBox1(param1:Canvas) : void
      {
         var _loc2_:Object = this._1576922571stoneBox1;
         if(_loc2_ !== param1)
         {
            this._1576922571stoneBox1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stoneBox1",_loc2_,param1));
         }
      }
      
      public function set stoneType3(param1:Canvas) : void
      {
         var _loc2_:Object = this._1656874708stoneType3;
         if(_loc2_ !== param1)
         {
            this._1656874708stoneType3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stoneType3",_loc2_,param1));
         }
      }
      
      public function set stoneBox7(param1:Canvas) : void
      {
         var _loc2_:Object = this._1576922577stoneBox7;
         if(_loc2_ !== param1)
         {
            this._1576922577stoneBox7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stoneBox7",_loc2_,param1));
         }
      }
      
      public function set stoneType4(param1:Canvas) : void
      {
         var _loc2_:Object = this._1656874709stoneType4;
         if(_loc2_ !== param1)
         {
            this._1656874709stoneType4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stoneType4",_loc2_,param1));
         }
      }
      
      public function set stoneType1(param1:Canvas) : void
      {
         var _loc2_:Object = this._1656874706stoneType1;
         if(_loc2_ !== param1)
         {
            this._1656874706stoneType1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stoneType1",_loc2_,param1));
         }
      }
      
      public function set stoneType5(param1:Canvas) : void
      {
         var _loc2_:Object = this._1656874710stoneType5;
         if(_loc2_ !== param1)
         {
            this._1656874710stoneType5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stoneType5",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get stoneType11() : Canvas
      {
         return this._176491617stoneType11;
      }
      
      public function set todayScore(param1:Label) : void
      {
         var _loc2_:Object = this._1835012049todayScore;
         if(_loc2_ !== param1)
         {
            this._1835012049todayScore = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"todayScore",_loc2_,param1));
         }
      }
      
      public function set stoneType8(param1:Canvas) : void
      {
         var _loc2_:Object = this._1656874713stoneType8;
         if(_loc2_ !== param1)
         {
            this._1656874713stoneType8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stoneType8",_loc2_,param1));
         }
      }
      
      public function set stoneType9(param1:Canvas) : void
      {
         var _loc2_:Object = this._1656874714stoneType9;
         if(_loc2_ !== param1)
         {
            this._1656874714stoneType9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stoneType9",_loc2_,param1));
         }
      }
      
      public function set currentNumCvs(param1:Canvas) : void
      {
         var _loc2_:Object = this._2100909011currentNumCvs;
         if(_loc2_ !== param1)
         {
            this._2100909011currentNumCvs = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currentNumCvs",_loc2_,param1));
         }
      }
      
      public function set stoneBox5(param1:Canvas) : void
      {
         var _loc2_:Object = this._1576922575stoneBox5;
         if(_loc2_ !== param1)
         {
            this._1576922575stoneBox5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stoneBox5",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get curLastNum() : Label
      {
         return this._564289872curLastNum;
      }
      
      public function set stoneType6(param1:Canvas) : void
      {
         var _loc2_:Object = this._1656874711stoneType6;
         if(_loc2_ !== param1)
         {
            this._1656874711stoneType6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stoneType6",_loc2_,param1));
         }
      }
      
      public function set stoneBox9(param1:Canvas) : void
      {
         var _loc2_:Object = this._1576922579stoneBox9;
         if(_loc2_ !== param1)
         {
            this._1576922579stoneBox9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stoneBox9",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get steelyardNum() : Label
      {
         return this._1278466497steelyardNum;
      }
      
      private function loadError(param1:IOErrorEvent) : void
      {
         trace(" stone master load res Error ");
      }
      
      [Bindable(event="propertyChange")]
      public function get stoneBox1() : Canvas
      {
         return this._1576922571stoneBox1;
      }
      
      [Bindable(event="propertyChange")]
      public function get stoneBox3() : Canvas
      {
         return this._1576922573stoneBox3;
      }
      
      [Bindable(event="propertyChange")]
      public function get stoneBox5() : Canvas
      {
         return this._1576922575stoneBox5;
      }
      
      [Bindable(event="propertyChange")]
      public function get stoneBox6() : Canvas
      {
         return this._1576922576stoneBox6;
      }
      
      [Bindable(event="propertyChange")]
      public function get stoneBox7() : Canvas
      {
         return this._1576922577stoneBox7;
      }
      
      public function ___StoneMaster_Button2_click(param1:MouseEvent) : void
      {
         endGame();
      }
      
      [Bindable(event="propertyChange")]
      public function get stoneBox10() : Canvas
      {
         return this._1639959493stoneBox10;
      }
      
      [Bindable(event="propertyChange")]
      public function get stoneBox4() : Canvas
      {
         return this._1576922574stoneBox4;
      }
      
      [Bindable(event="propertyChange")]
      public function get stoneType5() : Canvas
      {
         return this._1656874710stoneType5;
      }
      
      [Bindable(event="propertyChange")]
      public function get stoneType10() : Canvas
      {
         return this._176491618stoneType10;
      }
      
      [Bindable(event="propertyChange")]
      public function get stoneBox8() : Canvas
      {
         return this._1576922578stoneBox8;
      }
      
      [Bindable(event="propertyChange")]
      public function get stoneBox2() : Canvas
      {
         return this._1576922572stoneBox2;
      }
      
      [Bindable(event="propertyChange")]
      public function get stoneType4() : Canvas
      {
         return this._1656874709stoneType4;
      }
      
      public function set stoneType7(param1:Canvas) : void
      {
         var _loc2_:Object = this._1656874712stoneType7;
         if(_loc2_ !== param1)
         {
            this._1656874712stoneType7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stoneType7",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get stoneType6() : Canvas
      {
         return this._1656874711stoneType6;
      }
      
      private function _StoneMaster_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ANNIVERSARY_LANG[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _StoneMaster_BasicTitleCanvas1.text = param1;
         },"_StoneMaster_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000721);
         },function(param1:Object):void
         {
            _StoneMaster_Image1.source = param1;
         },"_StoneMaster_Image1.source");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ANNIVERSARY_LANG[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            steelyardNum.text = param1;
         },"steelyardNum.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ANNIVERSARY_LANG[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            todayScore.text = param1;
         },"todayScore.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ANNIVERSARY_LANG[25];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _StoneMaster_Label5.text = param1;
         },"_StoneMaster_Label5.text");
         result[4] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000719);
         },function(param1:Object):void
         {
            _StoneMaster_Image2.source = param1;
         },"_StoneMaster_Image2.source");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ANNIVERSARY_LANG[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            curLastNum.text = param1;
         },"curLastNum.text");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ANNIVERSARY_LANG[23];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _StoneMaster_IntroText1.htmlText = param1;
         },"_StoneMaster_IntroText1.htmlText");
         result[7] = binding;
         return result;
      }
      
      public function set goalNumCvs(param1:Canvas) : void
      {
         var _loc2_:Object = this._865535507goalNumCvs;
         if(_loc2_ !== param1)
         {
            this._865535507goalNumCvs = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"goalNumCvs",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get currentNumCvs() : Canvas
      {
         return this._2100909011currentNumCvs;
      }
      
      [Bindable(event="propertyChange")]
      public function get stoneType3() : Canvas
      {
         return this._1656874708stoneType3;
      }
      
      [Bindable(event="propertyChange")]
      public function get stoneType7() : Canvas
      {
         return this._1656874712stoneType7;
      }
      
      [Bindable(event="propertyChange")]
      public function get stoneType8() : Canvas
      {
         return this._1656874713stoneType8;
      }
      
      [Bindable(event="propertyChange")]
      public function get stoneType9() : Canvas
      {
         return this._1656874714stoneType9;
      }
      
      [Bindable(event="propertyChange")]
      public function get stoneType1() : Canvas
      {
         return this._1656874706stoneType1;
      }
      
      [Bindable(event="propertyChange")]
      public function get stoneBox9() : Canvas
      {
         return this._1576922579stoneBox9;
      }
      
      [Bindable(event="propertyChange")]
      public function get goalNumCvs() : Canvas
      {
         return this._865535507goalNumCvs;
      }
      
      public function set stoneType2(param1:Canvas) : void
      {
         var _loc2_:Object = this._1656874707stoneType2;
         if(_loc2_ !== param1)
         {
            this._1656874707stoneType2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stoneType2",_loc2_,param1));
         }
      }
   }
}

