package com.qeedoo.ui.view.compMain
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.logic.PetLogic;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.ui.IMainUI;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.comp.Property;
   import com.qeedoo.ui.view.comp.RoundedLabel;
   import com.qeedoo.ui.view.comp.SimpleCanvas;
   import com.qeedoo.ui.view.compDragable.PetManagerPanel;
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
   import mx.controls.Button;
   import mx.controls.Image;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class PetCanvas extends SimpleCanvas implements IMainUI, IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _104067513mpBtn:Button;
      
      private var _core:Core = Core.getInstance();
      
      public var _PetCanvas_RoundedLabel2:RoundedLabel;
      
      private var _104066928mpBar:Property;
      
      private var _681570103fairyTog:Image;
      
      private var _91108202_name:String;
      
      mx_internal var _watchers:Array = [];
      
      private var _2946224_url:*;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _99449323hpBar:Property;
      
      private var _307382965showCanvas:Image;
      
      private var _1472332155_level:String;
      
      public var _PetCanvas_RoundedLabel1:RoundedLabel;
      
      private var _2116177481itemBtn:Button;
      
      private var _99449908hpBtn:Button;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":SimpleCanvas,
         "propertiesFactory":function():Object
         {
            return {"childDescriptors":[new UIComponentDescriptor({
               "type":Canvas,
               "propertiesFactory":function():Object
               {
                  return {
                     "width":179,
                     "height":46,
                     "styleName":"CanvasPetPortrait",
                     "childDescriptors":[new UIComponentDescriptor({
                        "type":Canvas,
                        "stylesFactory":function():void
                        {
                           this.bottom = "2";
                           this.right = "0";
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "height":24,
                              "width":131,
                              "childDescriptors":[new UIComponentDescriptor({
                                 "type":Property,
                                 "id":"hpBar",
                                 "events":{"click":"__hpBar_click"},
                                 "stylesFactory":function():void
                                 {
                                    this.fontFamily = "Verdana";
                                    this.fontSize = 9;
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":19,
                                       "y":2,
                                       "width":89,
                                       "height":9,
                                       "styleName":"ProgressHp"
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Property,
                                 "id":"mpBar",
                                 "events":{"click":"__mpBar_click"},
                                 "stylesFactory":function():void
                                 {
                                    this.fontFamily = "Verdana";
                                    this.fontSize = 9;
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":19,
                                       "y":12,
                                       "width":89,
                                       "height":9,
                                       "styleName":"ProgressMp"
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Button,
                                 "id":"hpBtn",
                                 "events":{"click":"__hpBtn_click"},
                                 "stylesFactory":function():void
                                 {
                                    this.right = "7";
                                    this.cornerRadius = 0;
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "y":2,
                                       "width":10,
                                       "height":9,
                                       "visible":true
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Button,
                                 "id":"mpBtn",
                                 "events":{"click":"__mpBtn_click"},
                                 "stylesFactory":function():void
                                 {
                                    this.right = "7";
                                    this.cornerRadius = 0;
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "y":12,
                                       "width":10,
                                       "height":9,
                                       "visible":true
                                    };
                                 }
                              })]
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":Image,
                        "id":"showCanvas",
                        "events":{"click":"__showCanvas_click"},
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":4,
                              "y":4,
                              "width":38,
                              "height":38,
                              "useHandCursor":true,
                              "buttonMode":true
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":RoundedLabel,
                        "id":"_PetCanvas_RoundedLabel1",
                        "stylesFactory":function():void
                        {
                           this.textAlign = "center";
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":48,
                              "y":1,
                              "width":25,
                              "text":"99"
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":RoundedLabel,
                        "id":"_PetCanvas_RoundedLabel2",
                        "events":{"click":"___PetCanvas_RoundedLabel2_click"},
                        "stylesFactory":function():void
                        {
                           this.textAlign = "center";
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "width":90,
                              "height":19,
                              "text":"名字几个字",
                              "x":68.5,
                              "y":1
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":Button,
                        "id":"itemBtn",
                        "events":{"click":"__itemBtn_click"},
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":160,
                              "y":3,
                              "label":"",
                              "styleName":"BtnUseItem"
                           };
                        }
                     })]
                  };
               }
            }),new UIComponentDescriptor({
               "type":Image,
               "id":"fairyTog",
               "events":{"click":"__fairyTog_click"},
               "propertiesFactory":function():Object
               {
                  return {
                     "buttonMode":true,
                     "toolTip":"Mở/Ẩn bảng Tinh Linh",
                     "x":175,
                     "y":-5
                  };
               }
            })]};
         }
      });
      
      public function PetCanvas()
      {
         super();
         mx_internal::_document = this;
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
         this.cacheAsBitmap = true;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         PetCanvas._watcherSetupUtil = param1;
      }
      
      public function __hpBar_click(param1:MouseEvent) : void
      {
         recoverFullHp();
      }
      
      [Bindable(event="propertyChange")]
      public function get itemBtn() : Button
      {
         return this._2116177481itemBtn;
      }
      
      public function disableUI() : void
      {
         this.hpBtn.enabled = false;
         this.mpBtn.enabled = false;
      }
      
      private function showNullPet() : void
      {
         _name = "";
         _level = "";
         _url = ResManager.PET_DEFAULT_ICON;
         hpBar.setProgress(100,100);
         mpBar.setProgress(100,100);
         if(!visible && Core.getInstance().state == GamePredef.ST_NORMAL)
         {
            visible = true;
         }
         itemBtn.mouseEnabled = false;
      }
      
      private function set _level(param1:String) : void
      {
         var _loc2_:Object = this._1472332155_level;
         if(_loc2_ !== param1)
         {
            this._1472332155_level = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_level",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _name() : String
      {
         return this._91108202_name;
      }
      
      public function updateView() : void
      {
         if(_core.player.level >= 80)
         {
            fairyTog.visible = true;
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:PetCanvas = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _PetCanvas_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compMain_PetCanvasWatcherSetupUtil");
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
      
      private function changeAddStyleName() : void
      {
         var _loc1_:* = _core.view.getUI(ViewManager.PANEL_PETMANAGER);
         (_loc1_ as PetManagerPanel).setAddStyleName();
      }
      
      public function __mpBar_click(param1:MouseEvent) : void
      {
         recoverFullMp();
      }
      
      private function recoverFullMp() : void
      {
         if(_core.battlePet)
         {
            _core.view.getUI(ViewManager.MAIN_SELF).recoverFullMp(2,_core.battlePet.id);
         }
      }
      
      public function set itemBtn(param1:Button) : void
      {
         var _loc2_:Object = this._2116177481itemBtn;
         if(_loc2_ !== param1)
         {
            this._2116177481itemBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemBtn",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _level() : String
      {
         return this._1472332155_level;
      }
      
      private function set _name(param1:String) : void
      {
         var _loc2_:Object = this._91108202_name;
         if(_loc2_ !== param1)
         {
            this._91108202_name = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_name",_loc2_,param1));
         }
      }
      
      public function __mpBtn_click(param1:MouseEvent) : void
      {
         showBloodAdd(4);
      }
      
      public function __itemBtn_click(param1:MouseEvent) : void
      {
         mouseAction(param1,GamePredef.ACTION_ITEM);
      }
      
      [Bindable(event="propertyChange")]
      public function get hpBtn() : Button
      {
         return this._99449908hpBtn;
      }
      
      [Bindable(event="propertyChange")]
      public function get showCanvas() : Image
      {
         return this._307382965showCanvas;
      }
      
      [Bindable(event="propertyChange")]
      public function get fairyTog() : Image
      {
         return this._681570103fairyTog;
      }
      
      [Bindable(event="propertyChange")]
      public function get mpBtn() : Button
      {
         return this._104067513mpBtn;
      }
      
      private function mouseAction(param1:Event, param2:int) : void
      {
         if(Boolean(_core.player) && Boolean(_core.player.mapData) && Boolean(_core.player.mapData.templateId) && (int(_core.player.mapData.templateId) == 2007 || int(_core.player.mapData.templateId) == 2008 || int(_core.player.mapData.templateId) == 2009))
         {
            _core.sysMidMsg(Language.MAZE_INFO_PANEL_U[13]);
            return;
         }
         var _loc3_:Object = _core.view.getUI(ViewManager.PANEL_PETMANAGER);
         if(_loc3_.petDataList.selectedItem)
         {
            _core.view.getUI(ViewManager.PANEL_BAG).visible = true;
            param1.stopImmediatePropagation();
            if(_core.state == GamePredef.ST_BATTLE)
            {
               return;
            }
            _core.view.showMouse(ResManager.MOUSE_ACTION_IMG[param2]);
            _core.view.mouseState = param2;
            _core.view.mouseTargetType = GamePredef.MOUSE_TARGET_PET;
            _core.view.mousePetId = _core.battlePet != null ? Number(_core.battlePet.id) : -1;
         }
         _core.view.hide(ViewManager.CANVA_GUIDE);
      }
      
      [Bindable(event="propertyChange")]
      private function get _url() : *
      {
         return this._2946224_url;
      }
      
      private function _PetCanvas_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = "HP: " + hpBar.value + "/" + hpBar.maximum;
         _loc1_ = "MP: " + mpBar.value + "/" + mpBar.maximum;
         _loc1_ = _core.bloodBag[3] > 0 ? (_core.bloodBag[3] == _core.bagMax[3] ? "BtnHp2" : "BtnHp1") : "BtnHp0";
         _loc1_ = _core.bloodBag[4] > 0 ? (_core.bloodBag[4] == _core.bagMax[4] ? "BtnMp2" : "BtnMp1") : "BtnMp0";
         _loc1_ = _url;
         _loc1_ = Language.PETCANVAS_S[4];
         _loc1_ = _level;
         _loc1_ = _name;
         _loc1_ = Language.PETCANVAS_S[5];
         _loc1_ = ResManager.FAIRY_PANEL_BUTTON;
      }
      
      public function setHpMp() : void
      {
         if(!_core.bloodBag[3] || _core.bloodBag[3] <= 0)
         {
            hpBtn.toolTip = Language.PETCANVAS_S[0];
            hpBtn.styleName = "BtnHp0";
         }
         else
         {
            hpBtn.toolTip = Language.PETCANVAS_S[1] + _core.bloodBag[3] + "/10000000";
            if(_core.bloodBag[3] == _core.bagMax[3])
            {
               hpBtn.styleName = "BtnHp2";
            }
            else
            {
               hpBtn.styleName = "BtnHp1";
            }
         }
         if(!_core.bloodBag[4] || _core.bloodBag[4] <= 0)
         {
            mpBtn.toolTip = Language.PETCANVAS_S[2];
            mpBtn.styleName = "BtnMp0";
         }
         else
         {
            mpBtn.toolTip = Language.PETCANVAS_S[3] + _core.bloodBag[4] + "/10000000";
            if(_core.bloodBag[4] == _core.bagMax[4])
            {
               mpBtn.styleName = "BtnMp2";
            }
            else
            {
               mpBtn.styleName = "BtnMp1";
            }
         }
      }
      
      private function _PetCanvas_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = "HP: " + hpBar.value + "/" + hpBar.maximum;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            hpBar.toolTip = param1;
         },"hpBar.toolTip");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = "MP: " + mpBar.value + "/" + mpBar.maximum;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            mpBar.toolTip = param1;
         },"mpBar.toolTip");
         result[1] = binding;
         binding = new Binding(this,function():Object
         {
            return _core.bloodBag[3] > 0 ? (_core.bloodBag[3] == _core.bagMax[3] ? "BtnHp2" : "BtnHp1") : "BtnHp0";
         },function(param1:Object):void
         {
            hpBtn.styleName = param1;
         },"hpBtn.styleName");
         result[2] = binding;
         binding = new Binding(this,function():Object
         {
            return _core.bloodBag[4] > 0 ? (_core.bloodBag[4] == _core.bagMax[4] ? "BtnMp2" : "BtnMp1") : "BtnMp0";
         },function(param1:Object):void
         {
            mpBtn.styleName = param1;
         },"mpBtn.styleName");
         result[3] = binding;
         binding = new Binding(this,function():Object
         {
            return _url;
         },function(param1:Object):void
         {
            showCanvas.source = param1;
         },"showCanvas.source");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETCANVAS_S[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            showCanvas.toolTip = param1;
         },"showCanvas.toolTip");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _level;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetCanvas_RoundedLabel1.htmlText = param1;
         },"_PetCanvas_RoundedLabel1.htmlText");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _name;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetCanvas_RoundedLabel2.htmlText = param1;
         },"_PetCanvas_RoundedLabel2.htmlText");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETCANVAS_S[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            itemBtn.toolTip = param1;
         },"itemBtn.toolTip");
         result[8] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.FAIRY_PANEL_BUTTON;
         },function(param1:Object):void
         {
            fairyTog.source = param1;
         },"fairyTog.source");
         result[9] = binding;
         return result;
      }
      
      public function initView() : void
      {
      }
      
      public function set hpBar(param1:Property) : void
      {
         var _loc2_:Object = this._99449323hpBar;
         if(_loc2_ !== param1)
         {
            this._99449323hpBar = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hpBar",_loc2_,param1));
         }
      }
      
      public function enableUI() : void
      {
         this.hpBtn.enabled = true;
         this.mpBtn.enabled = true;
      }
      
      public function update() : void
      {
      }
      
      public function __hpBtn_click(param1:MouseEvent) : void
      {
         showBloodAdd(3);
      }
      
      public function __showCanvas_click(param1:MouseEvent) : void
      {
         _core.view.changeVisible(ViewManager.PANEL_PETMANAGER);
         changeAddStyleName();
      }
      
      public function __fairyTog_click(param1:MouseEvent) : void
      {
         _core.view.changeVisible(ViewManager.PANEL_FAIRY_MANAGER);
      }
      
      public function showPet(param1:*) : void
      {
         var _loc2_:Core = null;
         var _loc3_:int = 0;
         fairyTog.visible = Boolean(_core) && Boolean(_core.player) && _core.player.level >= 80;
         if(param1 == null && param1 == undefined)
         {
            showNullPet();
            return;
         }
         itemBtn.mouseEnabled = true;
         if(Boolean(param1) && param1 != undefined)
         {
            if(param1.creatureData)
            {
               _url = ResManager.getIconUrl(param1.creatureData.iconCode);
            }
            _loc2_ = Core.getInstance();
            _loc3_ = PetLogic.expToLv(param1.exp);
            _name = param1.petName;
            _level = _loc3_.toString();
            hpBar.setProgress(int(param1.currentHp),int(param1.property.finalHp));
            mpBar.setProgress(int(param1.currentMp),int(param1.property.finalMp));
            if(Core.getInstance().state == GamePredef.ST_NORMAL)
            {
               visible = true;
            }
         }
         else
         {
            _url = null;
            toolTip = "";
            visible = false;
         }
      }
      
      public function ___PetCanvas_RoundedLabel2_click(param1:MouseEvent) : void
      {
         recoverFullHpMp();
      }
      
      public function set mpBar(param1:Property) : void
      {
         var _loc2_:Object = this._104066928mpBar;
         if(_loc2_ !== param1)
         {
            this._104066928mpBar = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mpBar",_loc2_,param1));
         }
      }
      
      public function set hpBtn(param1:Button) : void
      {
         var _loc2_:Object = this._99449908hpBtn;
         if(_loc2_ !== param1)
         {
            this._99449908hpBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hpBtn",_loc2_,param1));
         }
      }
      
      private function showBloodAdd(param1:int) : void
      {
         _core.view.getUI(ViewManager.PANEL_BLOODADD).showPanel(param1);
      }
      
      public function set fairyTog(param1:Image) : void
      {
         var _loc2_:Object = this._681570103fairyTog;
         if(_loc2_ !== param1)
         {
            this._681570103fairyTog = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fairyTog",_loc2_,param1));
         }
      }
      
      private function set _url(param1:*) : void
      {
         var _loc2_:Object = this._2946224_url;
         if(_loc2_ !== param1)
         {
            this._2946224_url = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_url",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mpBar() : Property
      {
         return this._104066928mpBar;
      }
      
      public function set showCanvas(param1:Image) : void
      {
         var _loc2_:Object = this._307382965showCanvas;
         if(_loc2_ !== param1)
         {
            this._307382965showCanvas = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showCanvas",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hpBar() : Property
      {
         return this._99449323hpBar;
      }
      
      override public function set visible(param1:Boolean) : void
      {
         if(param1)
         {
            super.visible = true;
            if(_core.battlePet)
            {
               itemBtn.mouseEnabled = true;
            }
            else
            {
               showNullPet();
            }
         }
         else
         {
            super.visible = param1;
         }
      }
      
      public function set mpBtn(param1:Button) : void
      {
         var _loc2_:Object = this._104067513mpBtn;
         if(_loc2_ !== param1)
         {
            this._104067513mpBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mpBtn",_loc2_,param1));
         }
      }
      
      private function recoverFullHp() : void
      {
         if(Boolean(_core.player) && Boolean(_core.player.mapData) && Boolean(_core.player.mapData.templateId) && (int(_core.player.mapData.templateId) == 2007 || int(_core.player.mapData.templateId) == 2008 || int(_core.player.mapData.templateId) == 2009))
         {
            _core.sysMidMsg(Language.MAZE_INFO_PANEL_U[13]);
            return;
         }
         if(_core.battlePet)
         {
            _core.view.getUI(ViewManager.MAIN_SELF).recoverFullHp(2,_core.battlePet.id);
         }
      }
      
      private function recoverFullHpMp() : void
      {
         recoverFullHp();
         recoverFullMp();
      }
   }
}

