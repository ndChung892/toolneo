package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.object.Creature;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.view.compGameStage.CreatureShowView;
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
   import mx.controls.Label;
   import mx.core.UIComponent;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class PRSShowCvs extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private static const PAGE_NUM:uint = 3;
      
      private static const NOTACTIVED:uint = 1;
      
      private static const ACTIVED:uint = 2;
      
      private static const EQUIPTED:uint = 3;
      
      private var _2086414968stateBtn3:BasicGlowButton;
      
      private var _creShowArr:Array = new Array();
      
      private var _2086134420stateLbl1:Label;
      
      public var tab:int;
      
      mx_internal var _watchers:Array = [];
      
      private var _2086414969stateBtn2:BasicGlowButton;
      
      private var _417806515showViewContainer2:UIComponent;
      
      private var _607339634pageSelector:PageSelectorOnly;
      
      private var _339324305showCvs2:Canvas;
      
      private var _curPage:int = 1;
      
      private var _339324306showCvs1:Canvas;
      
      private var _339324304showCvs3:Canvas;
      
      private var _prsInfo:Object;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _2086414970stateBtn1:BasicGlowButton;
      
      private var _2086134418stateLbl3:Label;
      
      private var _showIdArr:Array = [0,0,0];
      
      private var _creObjArr:Array = new Array();
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _showArr:Array = new Array();
      
      private var _417806514showViewContainer1:UIComponent;
      
      public var _PRSShowCvs_Label1:Label;
      
      mx_internal var _bindings:Array = [];
      
      private var _417806516showViewContainer3:UIComponent;
      
      private var _btnState:Array = [0,0,0];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":430,
               "height":250,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Label,
                  "id":"_PRSShowCvs_Label1",
                  "stylesFactory":function():void
                  {
                     this.color = 16776960;
                     this.fontSize = 12;
                     this.horizontalCenter = "100";
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"showCvs1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":135,
                        "height":180,
                        "x":18,
                        "y":22,
                        "verticalScrollPolicy":"off",
                        "horizontalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":UIComponent,
                           "id":"showViewContainer1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":60,
                                 "y":123
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"stateLbl1",
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                              this.textAlign = "center";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"y":152};
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"stateBtn1",
                  "events":{"click":"__stateBtn1_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"BtnStdGreen",
                        "x":50,
                        "y":205
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"showCvs2",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":135,
                        "height":180,
                        "x":158,
                        "y":23,
                        "verticalScrollPolicy":"off",
                        "horizontalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":UIComponent,
                           "id":"showViewContainer2",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":60,
                                 "y":123
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"stateLbl2",
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                              this.textAlign = "center";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"y":152};
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"stateBtn2",
                  "events":{"click":"__stateBtn2_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"BtnStdGreen",
                        "x":195,
                        "y":206
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"showCvs3",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":135,
                        "height":180,
                        "x":298,
                        "y":23,
                        "verticalScrollPolicy":"off",
                        "horizontalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":UIComponent,
                           "id":"showViewContainer3",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":60,
                                 "y":123
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"stateLbl3",
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                              this.textAlign = "center";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"y":152};
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"stateBtn3",
                  "events":{"click":"__stateBtn3_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"BtnStdGreen",
                        "x":336,
                        "y":206
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":PageSelectorOnly,
                  "id":"pageSelector",
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                     this.bottom = "1";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"changeCall":updatePage};
                  }
               })]
            };
         }
      });
      
      private var _2086134419stateLbl2:Label;
      
      private var _totalPage:int;
      
      private var _showAllArr:Array;
      
      private var _core:Core = Core.getInstance();
      
      public function PRSShowCvs()
      {
         super();
         mx_internal::_document = this;
         this.width = 430;
         this.height = 250;
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
         this.addEventListener("creationComplete",___PRSShowCvs_Canvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         PRSShowCvs._watcherSetupUtil = param1;
      }
      
      public function set showCvs3(param1:Canvas) : void
      {
         var _loc2_:Object = this._339324304showCvs3;
         if(_loc2_ !== param1)
         {
            this._339324304showCvs3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showCvs3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get stateLbl1() : Label
      {
         return this._2086134420stateLbl1;
      }
      
      [Bindable(event="propertyChange")]
      public function get stateLbl2() : Label
      {
         return this._2086134419stateLbl2;
      }
      
      [Bindable(event="propertyChange")]
      public function get stateBtn1() : BasicGlowButton
      {
         return this._2086414970stateBtn1;
      }
      
      private function clickHandlerByState(param1:Number) : void
      {
         var _loc2_:uint = uint(_btnState[param1 - 1]);
         var _loc3_:Number = Number(_showIdArr[param1 - 1]);
         switch(_loc2_)
         {
            case NOTACTIVED:
               if(tab == 0)
               {
                  _core.remote.call("activePRSShow",null,_core.cid,_loc3_);
               }
               else
               {
                  _core.remote.call("activePRSShowSpe",null,_core.cid,_loc3_);
               }
               break;
            case ACTIVED:
               _core.remote.call("replacePRSShow",null,_core.cid,_loc3_);
               break;
            case EQUIPTED:
               _core.remote.call("cancelPRSShow",null,_core.cid,_loc3_);
         }
      }
      
      public function __stateBtn2_click(param1:MouseEvent) : void
      {
         clickHandlerByState(2);
      }
      
      public function set showViewContainer3(param1:UIComponent) : void
      {
         var _loc2_:Object = this._417806516showViewContainer3;
         if(_loc2_ !== param1)
         {
            this._417806516showViewContainer3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showViewContainer3",_loc2_,param1));
         }
      }
      
      public function set stateBtn1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._2086414970stateBtn1;
         if(_loc2_ !== param1)
         {
            this._2086414970stateBtn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stateBtn1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pageSelector() : PageSelectorOnly
      {
         return this._607339634pageSelector;
      }
      
      [Bindable(event="propertyChange")]
      public function get stateBtn3() : BasicGlowButton
      {
         return this._2086414968stateBtn3;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:PRSShowCvs = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _PRSShowCvs_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_PRSShowCvsWatcherSetupUtil");
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
      
      public function set pageSelector(param1:PageSelectorOnly) : void
      {
         var _loc2_:Object = this._607339634pageSelector;
         if(_loc2_ !== param1)
         {
            this._607339634pageSelector = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageSelector",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showCvs3() : Canvas
      {
         return this._339324304showCvs3;
      }
      
      private function init() : void
      {
         var _loc1_:Object = null;
         _showAllArr = (GameData.d[GamePredef.TBL_PRS_SHOW] as Array).slice(1);
         for(_loc1_ in _showAllArr)
         {
            if(_showAllArr[_loc1_]["tab"] == tab)
            {
               _showArr.push(_showAllArr[_loc1_]);
            }
         }
         _showArr.sortOn("position",Array.NUMERIC);
      }
      
      public function set stateBtn2(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._2086414969stateBtn2;
         if(_loc2_ !== param1)
         {
            this._2086414969stateBtn2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stateBtn2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showCvs2() : Canvas
      {
         return this._339324305showCvs2;
      }
      
      private function _PRSShowCvs_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.PRS_PANEL[9];
      }
      
      public function __stateBtn1_click(param1:MouseEvent) : void
      {
         clickHandlerByState(1);
      }
      
      [Bindable(event="propertyChange")]
      public function get showViewContainer1() : UIComponent
      {
         return this._417806514showViewContainer1;
      }
      
      [Bindable(event="propertyChange")]
      public function get showViewContainer3() : UIComponent
      {
         return this._417806516showViewContainer3;
      }
      
      public function __stateBtn3_click(param1:MouseEvent) : void
      {
         clickHandlerByState(3);
      }
      
      public function set stateBtn3(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._2086414968stateBtn3;
         if(_loc2_ !== param1)
         {
            this._2086414968stateBtn3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stateBtn3",_loc2_,param1));
         }
      }
      
      private function _PRSShowCvs_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PRS_PANEL[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PRSShowCvs_Label1.text = param1;
         },"_PRSShowCvs_Label1.text");
         result[0] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get showViewContainer2() : UIComponent
      {
         return this._417806515showViewContainer2;
      }
      
      [Bindable(event="propertyChange")]
      public function get stateBtn2() : BasicGlowButton
      {
         return this._2086414969stateBtn2;
      }
      
      public function set showCvs1(param1:Canvas) : void
      {
         var _loc2_:Object = this._339324306showCvs1;
         if(_loc2_ !== param1)
         {
            this._339324306showCvs1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showCvs1",_loc2_,param1));
         }
      }
      
      public function set showCvs2(param1:Canvas) : void
      {
         var _loc2_:Object = this._339324305showCvs2;
         if(_loc2_ !== param1)
         {
            this._339324305showCvs2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showCvs2",_loc2_,param1));
         }
      }
      
      public function set stateLbl3(param1:Label) : void
      {
         var _loc2_:Object = this._2086134418stateLbl3;
         if(_loc2_ !== param1)
         {
            this._2086134418stateLbl3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stateLbl3",_loc2_,param1));
         }
      }
      
      public function set showViewContainer1(param1:UIComponent) : void
      {
         var _loc2_:Object = this._417806514showViewContainer1;
         if(_loc2_ !== param1)
         {
            this._417806514showViewContainer1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showViewContainer1",_loc2_,param1));
         }
      }
      
      public function set showViewContainer2(param1:UIComponent) : void
      {
         var _loc2_:Object = this._417806515showViewContainer2;
         if(_loc2_ !== param1)
         {
            this._417806515showViewContainer2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showViewContainer2",_loc2_,param1));
         }
      }
      
      public function set stateLbl2(param1:Label) : void
      {
         var _loc2_:Object = this._2086134419stateLbl2;
         if(_loc2_ !== param1)
         {
            this._2086134419stateLbl2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stateLbl2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showCvs1() : Canvas
      {
         return this._339324306showCvs1;
      }
      
      public function ___PRSShowCvs_Canvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      [Bindable(event="propertyChange")]
      public function get stateLbl3() : Label
      {
         return this._2086134418stateLbl3;
      }
      
      public function set stateLbl1(param1:Label) : void
      {
         var _loc2_:Object = this._2086134420stateLbl1;
         if(_loc2_ !== param1)
         {
            this._2086134420stateLbl1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stateLbl1",_loc2_,param1));
         }
      }
      
      public function updatePRSInfo(param1:Object) : void
      {
         _prsInfo = param1;
         updatePage();
      }
      
      public function updatePage() : void
      {
         var _loc7_:String = null;
         var _loc8_:Number = NaN;
         var _loc9_:Object = null;
         var _loc10_:UIComponent = null;
         var _loc11_:Boolean = false;
         var _loc12_:Object = null;
         var _loc13_:uint = 0;
         var _loc14_:CreatureShowView = null;
         var _loc15_:Creature = null;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Object = null;
         var _loc19_:Object = null;
         var _loc20_:Number = NaN;
         var _loc21_:String = null;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:int = 0;
         var _loc25_:int = 0;
         var _loc26_:int = 0;
         var _loc27_:int = 0;
         var _loc1_:* = _showArr.length;
         _totalPage = pageSelector.totalPage = Math.ceil(_loc1_ / PAGE_NUM);
         _curPage = pageSelector.curPage;
         var _loc2_:Number = (_curPage - 1) * PAGE_NUM;
         var _loc3_:Object = _prsInfo["actArr"];
         var _loc4_:Object = _prsInfo["actLimitObj"];
         var _loc5_:Number = Number(_prsInfo["useSid"]);
         var _loc6_:int = 1;
         while(_loc6_ <= PAGE_NUM)
         {
            if(_loc2_ + _loc6_ > _showArr.length)
            {
               (this["showCvs" + _loc6_] as UIComponent).visible = false;
               (this["stateLbl" + _loc6_] as UIComponent).visible = false;
               (this["stateBtn" + _loc6_] as UIComponent).visible = false;
            }
            else
            {
               _loc7_ = "";
               _loc8_ = Number(_showArr[_loc2_ + _loc6_ - 1].id);
               _showIdArr[_loc6_ - 1] = _loc8_;
               _loc9_ = GameData.d[GamePredef.TBL_PRS_SHOW][_loc8_];
               if(!_creShowArr[_loc6_ - 1])
               {
                  _loc14_ = new CreatureShowView();
                  _creShowArr[_loc6_ - 1] = _loc14_;
               }
               _loc10_ = this["showViewContainer" + _loc6_] as UIComponent;
               if(_loc10_.numChildren > 0)
               {
                  _loc10_.removeChild(_creShowArr[_loc6_ - 1]);
               }
               if(!_creObjArr[_loc6_ - 1])
               {
                  _loc15_ = new Creature();
                  _loc15_.resCode = _loc9_["resCode"];
                  _creObjArr[_loc6_ - 1] = _loc15_;
               }
               else
               {
                  _creObjArr[_loc6_ - 1].resCode = _loc9_["resCode"];
               }
               _creShowArr[_loc6_ - 1].gameObject = _creObjArr[_loc6_ - 1];
               _loc10_.addChild(_creShowArr[_loc6_ - 1]);
               _loc11_ = false;
               for(_loc12_ in _loc3_)
               {
                  if(Number(_loc3_[_loc12_]) == _loc8_)
                  {
                     _loc11_ = true;
                     break;
                  }
               }
               if(_loc4_[_loc8_])
               {
                  _loc11_ = true;
               }
               _loc7_ = "<font color=\'#FF00FF\'>" + _loc9_["name"] + "</font>";
               if(_loc11_)
               {
                  if(Boolean(_loc5_) && _loc5_ == _loc8_)
                  {
                     (this["stateBtn" + _loc6_] as BasicGlowButton).label = Language.PRS_PANEL[10];
                     _btnState[_loc6_ - 1] = EQUIPTED;
                     (this["stateLbl" + _loc6_] as Label).htmlText = "<font color=\'#00FFFF\'>" + Language.PRS_PANEL[25] + "</font>";
                     _loc7_ += "\n" + "<font color=\'#00FFFF\'>" + Language.PRS_PANEL[25] + "</font>";
                  }
                  else
                  {
                     (this["stateBtn" + _loc6_] as BasicGlowButton).label = Language.PRS_PANEL[11];
                     _btnState[_loc6_ - 1] = ACTIVED;
                     (this["stateLbl" + _loc6_] as Label).htmlText = "<font color=\'#00FF00\'>" + Language.PRS_PANEL[26] + "</font>";
                     _loc7_ += "\n" + "<font color=\'#00FF00\'>" + Language.PRS_PANEL[22] + "</font>";
                  }
               }
               else
               {
                  (this["stateBtn" + _loc6_] as BasicGlowButton).label = Language.PRS_PANEL[12];
                  _btnState[_loc6_ - 1] = NOTACTIVED;
                  if(tab == 0)
                  {
                     _loc16_ = Number(_loc9_["needNum"]);
                     _loc17_ = 0;
                     _loc18_ = _prsInfo["chipBag"];
                     for(_loc19_ in _loc18_)
                     {
                        if(Boolean(_loc18_[_loc19_]) && Number(_loc18_[_loc19_]["chipId"]) == Number(_loc9_["needChipId"]))
                        {
                           _loc17_ = Number(_loc18_[_loc19_]["chipNum"]);
                        }
                     }
                     (this["stateLbl" + _loc6_] as Label).htmlText = Language.PRS_PANEL[27].toString().replace("{hasNum}",String(_loc17_)).replace("{needNum}",String(_loc16_));
                  }
                  else
                  {
                     _loc16_ = Number(_loc9_["needNum"]);
                     _loc20_ = Number(_loc9_["needChipId"]);
                     _loc17_ = Number(_core.getItemNum(GamePredef.TBL_ITEM_TEMPLATE,_loc20_).num);
                     _loc21_ = GameData.d[GamePredef.TBL_ITEM_TEMPLATE][_loc20_]["name"];
                     (this["stateLbl" + _loc6_] as Label).htmlText = Language.PRS_PANEL[41].toString().replace("{hasNum}",String(_loc17_)).replace("{needNum}",String(_loc16_)).replace("{name}",_loc21_);
                  }
                  _loc7_ += "\n" + "<font color=\'#FF0000\'>" + Language.PRS_PANEL[23] + "</font>";
               }
               if(!(this["showCvs" + _loc6_] as UIComponent).visible)
               {
                  (this["showCvs" + _loc6_] as UIComponent).visible = true;
               }
               if(!(this["stateLbl" + _loc6_] as UIComponent).visible)
               {
                  (this["stateLbl" + _loc6_] as UIComponent).visible = true;
               }
               if(!(this["stateBtn" + _loc6_] as UIComponent).visible)
               {
                  (this["stateBtn" + _loc6_] as UIComponent).visible = true;
               }
               _loc13_ = 1;
               while(_loc13_ <= 8)
               {
                  if(Number(_loc9_["pT" + _loc13_]))
                  {
                     if(Number(_loc9_["pT" + _loc13_]) == 59 || Number(_loc9_["pT" + _loc13_]) == 60 || Number(_loc9_["pT" + _loc13_]) == 62 || Number(_loc9_["pT" + _loc13_]) == 63)
                     {
                        _loc7_ += "\n" + Language.PRS_PROP_TIP[Number(_loc9_["pT" + _loc13_])] + Number(_loc9_["pN" + _loc13_]) / 100 + "%";
                     }
                     else if(Number(_loc9_["pT" + _loc13_]) == 1 || Number(_loc9_["pT" + _loc13_]) == 4 || Number(_loc9_["pT" + _loc13_]) == 5 || Number(_loc9_["pT" + _loc13_]) == 6 || Number(_loc9_["pT" + _loc13_]) == 7 || Number(_loc9_["pT" + _loc13_]) == 11)
                     {
                        _loc7_ += "\n" + Language.PRS_PROP_TIP[Number(_loc9_["pT" + _loc13_])] + Number(_loc9_["pN" + _loc13_]);
                     }
                     else
                     {
                        _loc7_ += "\n" + Language.PRS_PROP_TIP[Number(_loc9_["pT" + _loc13_])] + Number(_loc9_["pN" + _loc13_]) / 100;
                     }
                  }
                  _loc13_++;
               }
               if(_loc4_[_loc8_])
               {
                  _loc22_ = Number(_loc4_[_loc8_]);
                  _loc23_ = new Date().getTime();
                  _loc24_ = Math.ceil((_loc22_ - _loc23_) / 1000 / 60);
                  _loc25_ = _loc24_ / (60 * 24);
                  _loc26_ = _loc24_ % (60 * 24) / 60;
                  _loc27_ = _loc24_ % (60 * 24) % 60;
                  _loc7_ += "\n" + "<font color=\'#00FFFF\'>" + Language.PRS_PANEL[24].toString().replace("{min}",_loc27_).replace("{day}",_loc25_).replace("{hour}",_loc26_) + "</font>";
               }
               (this["showCvs" + _loc6_] as UIComponent).toolTip = _loc7_;
            }
            _loc6_++;
         }
      }
   }
}

