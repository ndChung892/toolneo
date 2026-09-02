package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.ItemConfig;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.logic.PetLogic;
   import com.qeedoo.game.object.Charactor;
   import com.qeedoo.game.object.Player;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.BasicTxtButton;
   import com.qeedoo.ui.view.comp.BoxLabel;
   import com.qeedoo.ui.view.comp.CharactorShowCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.SimpleCanvas;
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
   import mx.containers.HBox;
   import mx.controls.Alert;
   import mx.controls.Button;
   import mx.controls.HSlider;
   import mx.controls.List;
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.ListEvent;
   import mx.events.PropertyChangeEvent;
   import mx.events.SliderEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class ChangeColorPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1980426224colorCode:Number;
      
      private var _991692313petNum:BoxLabel;
      
      private var _188974544levelLabel:BasicTxtButton;
      
      private var changeObj:Object;
      
      private var _1848420007colorCodeHSlider:HSlider;
      
      private var _1680475757changeColor:BasicGlowButton;
      
      private var _486099079targetChar:BasicGlowButton;
      
      private var isChangePet:Boolean;
      
      private var _1215755049nameLabel:BasicTxtButton;
      
      private var _1348199777cvsPet:SimpleCanvas;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _350425604oldShowCVS:SimpleCanvas;
      
      public var isRebirthDress:String = "";
      
      private var _core:Core = Core.getInstance();
      
      private var _815590962targetPet:BasicGlowButton;
      
      mx_internal var _watchers:Array = [];
      
      private var petId:Number;
      
      private var _486576174targetShow:CharactorShowCanvas;
      
      private var _205980803btnLeft:Button;
      
      private var targetObj:Object;
      
      private var resCode:Number;
      
      private var _2096098592btnRight:Button;
      
      public var _ChangeColorPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var petArr:Array;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _ChangeColorPanel_BasicTxtButton2:BasicTxtButton;
      
      public var _ChangeColorPanel_BasicTxtButton4:BasicTxtButton;
      
      public var _ChangeColorPanel_BasicTxtButton5:BasicTxtButton;
      
      private var _579057063petDataList:List;
      
      private var _1379429948oldShow:CharactorShowCanvas;
      
      mx_internal var _bindings:Array = [];
      
      private const CHANG_ITEM_COST:int = 3;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":305,
               "height":260,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_ChangeColorPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":HBox,
                  "stylesFactory":function():void
                  {
                     this.horizontalGap = 0;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":30,
                        "y":40,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"targetChar",
                           "events":{"click":"__targetChar_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":60,
                                 "styleName":"BtnStdRed",
                                 "selected":true
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"targetPet",
                           "events":{"click":"__targetPet_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":60,
                                 "styleName":"BtnStdRed"
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SimpleCanvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":15,
                        "y":60,
                        "width":275,
                        "height":185,
                        "styleName":"CanvasBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":SimpleCanvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":5,
                                 "y":5,
                                 "width":130,
                                 "height":145,
                                 "styleName":"CanvasBorder",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"nameLabel",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":8,
                                          "y":8,
                                          "width":65
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_ChangeColorPanel_BasicTxtButton2",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":70,
                                          "y":8,
                                          "width":50
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"levelLabel",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":100,
                                          "y":8,
                                          "width":30
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":CharactorShowCanvas,
                                    "id":"targetShow",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":60,
                                          "y":115,
                                          "height":20,
                                          "width":20
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Button,
                                    "id":"btnLeft",
                                    "events":{"click":"__btnLeft_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":21,
                                          "y":115,
                                          "width":20,
                                          "height":20,
                                          "styleName":"BtnLoginTurnLeft"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Button,
                                    "id":"btnRight",
                                    "events":{"click":"__btnRight_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":89,
                                          "y":115,
                                          "width":20,
                                          "height":20,
                                          "styleName":"BtnLoginTurnRight"
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":SimpleCanvas,
                           "id":"cvsPet",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":140,
                                 "y":5,
                                 "width":130,
                                 "height":145,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"CSSBorder",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":List,
                                             "id":"petDataList",
                                             "events":{
                                                "itemClick":"__petDataList_itemClick",
                                                "mouseDown":"__petDataList_mouseDown"
                                             },
                                             "stylesFactory":function():void
                                             {
                                                this.backgroundAlpha = 0;
                                                this.left = "5";
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "horizontalScrollPolicy":"off",
                                                   "y":5,
                                                   "height":112,
                                                   "width":116,
                                                   "x":-6,
                                                   "itemRenderer":_ChangeColorPanel_ClassFactory1_c()
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_ChangeColorPanel_BasicTxtButton4",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "y":125,
                                          "width":70,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BoxLabel,
                                    "id":"petNum",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "left";
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":70,
                                          "y":125,
                                          "width":55.4,
                                          "height":18
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":SimpleCanvas,
                           "id":"oldShowCVS",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":140,
                                 "y":5,
                                 "width":130,
                                 "height":145,
                                 "styleName":"CanvasBorder",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_ChangeColorPanel_BasicTxtButton5",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":40,
                                          "y":10,
                                          "width":50
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":CharactorShowCanvas,
                                    "id":"oldShow",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":60,
                                          "y":115,
                                          "height":20,
                                          "width":20
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Button,
                                    "events":{"click":"___ChangeColorPanel_Button3_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":21,
                                          "y":115,
                                          "width":20,
                                          "height":20,
                                          "styleName":"BtnLoginTurnLeft"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Button,
                                    "events":{"click":"___ChangeColorPanel_Button4_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":89,
                                          "y":115,
                                          "width":20,
                                          "height":20,
                                          "styleName":"BtnLoginTurnRight"
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":HSlider,
                           "id":"colorCodeHSlider",
                           "events":{"change":"__colorCodeHSlider_change"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":0,
                                 "y":158,
                                 "width":170,
                                 "liveDragging":true,
                                 "minimum":-100,
                                 "maximum":150
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"changeColor",
                           "events":{"click":"__changeColor_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":190,
                                 "y":154,
                                 "width":80,
                                 "styleName":"BtnNormalRed"
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      public function ChangeColorPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 305;
         this.height = 260;
         this.styleName = "StandardContent";
         this.cacheAsBitmap = true;
         this.addEventListener("creationComplete",___ChangeColorPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ChangeColorPanel._watcherSetupUtil = param1;
      }
      
      public function __changeColor_click(param1:MouseEvent) : void
      {
         subChange();
      }
      
      public function set btnLeft(param1:Button) : void
      {
         var _loc2_:Object = this._205980803btnLeft;
         if(_loc2_ !== param1)
         {
            this._205980803btnLeft = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnLeft",_loc2_,param1));
         }
      }
      
      public function updateView() : void
      {
         var _loc1_:String = ResManager.getResUrl(resCode);
         if(targetShow.url != _loc1_)
         {
            targetShow.url = _loc1_;
         }
         targetShow.color = colorCode;
      }
      
      [Bindable(event="propertyChange")]
      public function get oldShowCVS() : SimpleCanvas
      {
         return this._350425604oldShowCVS;
      }
      
      private function init() : void
      {
         showCharView();
      }
      
      private function rollShow(param1:Boolean) : void
      {
         if(param1)
         {
            if(targetShow.url != null)
            {
               targetShow.rollRight();
            }
            if(oldShowCVS.visible)
            {
               oldShow.rollRight();
            }
         }
         else
         {
            if(targetShow.url != null)
            {
               targetShow.rollLeft();
            }
            if(oldShowCVS.visible)
            {
               oldShow.rollLeft();
            }
         }
      }
      
      public function set targetChar(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._486099079targetChar;
         if(_loc2_ !== param1)
         {
            this._486099079targetChar = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"targetChar",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btnRight() : Button
      {
         return this._2096098592btnRight;
      }
      
      public function set changeColor(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1680475757changeColor;
         if(_loc2_ !== param1)
         {
            this._1680475757changeColor = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"changeColor",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get nameLabel() : BasicTxtButton
      {
         return this._1215755049nameLabel;
      }
      
      [Bindable(event="propertyChange")]
      public function get targetShow() : CharactorShowCanvas
      {
         return this._486576174targetShow;
      }
      
      private function subChange() : void
      {
         var str:String;
         var func:Function;
         var needItem:Number = NaN;
         changeObj = {
            "colorCode":colorCode,
            "isPet":isChangePet,
            "id":petId
         };
         func = function(param1:CloseEvent):void
         {
            var _loc2_:int = 0;
            var _loc3_:Object = null;
            var _loc4_:String = null;
            var _loc5_:String = null;
            var _loc6_:String = null;
            if(param1.detail == Alert.YES)
            {
               if(isChangePet)
               {
                  if("1" != petDataList.selectedItem.petData.binded)
                  {
                     Alert.show(Language.CHANGECOLORPANEL_S[20],"",Alert.OK);
                     return;
                  }
               }
               _loc2_ = _core.hasItemNum(GamePredef.TBL_ITEM_TEMPLATE,needItem);
               if(_loc2_ >= CHANG_ITEM_COST)
               {
                  _core.remote.call("changeColor",null,changeObj);
               }
               else
               {
                  _loc3_ = _core.view.getUI(ViewManager.MAIN_CONSUMP);
                  _loc4_ = Language.CHANGECOLORPANEL_S[19];
                  if(isChangePet)
                  {
                     _loc5_ = Language.CHANGECOLORPANEL_S[6];
                     _loc6_ = Language.CHANGECOLORPANEL_S[4];
                  }
                  else
                  {
                     _loc5_ = Language.CHANGECOLORPANEL_S[5];
                     _loc6_ = Language.CHANGECOLORPANEL_S[3];
                  }
                  _loc4_ = _loc4_.replace("{type}",_loc5_).replace("{item}",_loc6_).replace("{num}",Number(CHANG_ITEM_COST - _loc2_));
                  _loc3_.msg = _loc4_;
                  _loc3_.x = 200;
                  _loc3_.y = 380;
                  _loc3_.itemData = {
                     "id":needItem,
                     "type":GamePredef.TBL_ITEM_TEMPLATE
                  };
                  _loc3_.shopNum = 1;
                  _loc3_.numAble = true;
               }
            }
         };
         str = Language.CHANGECOLORPANEL_S[2];
         needItem = isChangePet ? ItemConfig.ITEM_CHANGE_PET_COLOR : ItemConfig.ITEM_CHANGE_CHAR_COLOR;
         if(isChangePet)
         {
            str = str.replace("{item}",Language.CHANGECOLORPANEL_S[4]).replace("{type}",Language.CHANGECOLORPANEL_S[6]);
         }
         else
         {
            str = str.replace("{item}",Language.CHANGECOLORPANEL_S[3]).replace("{type}",Language.CHANGECOLORPANEL_S[5]);
         }
         Alert.show(str,"",Alert.YES | Alert.NO,null,func);
      }
      
      private function showCharView() : void
      {
         targetChar.selected = true;
         targetPet.selected = false;
         cvsPet.visible = false;
         oldShowCVS.visible = true;
         isChangePet = false;
         targetObj = _core.player;
         resCode = getCharClassRes(_core.player,isRebirthDress);
         colorCode = _core.player.colorCode;
         nameLabel.text = targetObj.name;
         levelLabel.text = _core.player.level.toString();
         updateView();
         showOldChar();
      }
      
      private function petDataListClick() : void
      {
         if(petArr.length == 0)
         {
            viewClear();
            return;
         }
         if(petDataList.selectedItem == null)
         {
            viewClear();
            return;
         }
         targetObj = petDataList.selectedItem.petData;
         resCode = targetObj.creatureData.resCode;
         petId = targetObj.id;
         nameLabel.text = targetObj.petName;
         levelLabel.text = petDataList.selectedItem.level;
         colorCode = targetObj.colorCode ? Number(targetObj.colorCode) : Number(targetObj.creatureData.colorCode);
         updateView();
      }
      
      public function ___ChangeColorPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      private function _ChangeColorPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHANGECOLORPANEL_S[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ChangeColorPanel_BasicTitleCanvas1.text = param1;
         },"_ChangeColorPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHANGECOLORPANEL_S[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            targetChar.label = param1;
         },"targetChar.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHANGECOLORPANEL_S[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            targetPet.label = param1;
         },"targetPet.label");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHANGECOLORPANEL_S[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ChangeColorPanel_BasicTxtButton2.text = param1;
         },"_ChangeColorPanel_BasicTxtButton2.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETMANAGEPRANEL_U[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ChangeColorPanel_BasicTxtButton4.text = param1;
         },"_ChangeColorPanel_BasicTxtButton4.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHANGECOLORPANEL_S[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ChangeColorPanel_BasicTxtButton5.text = param1;
         },"_ChangeColorPanel_BasicTxtButton5.text");
         result[5] = binding;
         binding = new Binding(this,function():Number
         {
            return colorCode;
         },function(param1:Number):void
         {
            colorCodeHSlider.value = param1;
         },"colorCodeHSlider.value");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARSELECTCANVAS_U[34];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            colorCodeHSlider.toolTip = param1;
         },"colorCodeHSlider.toolTip");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHANGECOLORPANEL_S[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            changeColor.label = param1;
         },"changeColor.label");
         result[8] = binding;
         return result;
      }
      
      public function refreshColor(param1:Charactor) : void
      {
         if(param1 is Player)
         {
            if(oldShow.url)
            {
               oldShow.color = param1.colorCode;
            }
         }
         if(param1.resCode == getCharClassRes(param1,isRebirthDress))
         {
            param1.view.colorCode = param1.colorCode;
         }
      }
      
      public function set cvsPet(param1:SimpleCanvas) : void
      {
         var _loc2_:Object = this._1348199777cvsPet;
         if(_loc2_ !== param1)
         {
            this._1348199777cvsPet = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cvsPet",_loc2_,param1));
         }
      }
      
      public function set btnRight(param1:Button) : void
      {
         var _loc2_:Object = this._2096098592btnRight;
         if(_loc2_ !== param1)
         {
            this._2096098592btnRight = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnRight",_loc2_,param1));
         }
      }
      
      public function set nameLabel(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._1215755049nameLabel;
         if(_loc2_ !== param1)
         {
            this._1215755049nameLabel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nameLabel",_loc2_,param1));
         }
      }
      
      public function set petDataList(param1:List) : void
      {
         var _loc2_:Object = this._579057063petDataList;
         if(_loc2_ !== param1)
         {
            this._579057063petDataList = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petDataList",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get colorCodeHSlider() : HSlider
      {
         return this._1848420007colorCodeHSlider;
      }
      
      public function set targetShow(param1:CharactorShowCanvas) : void
      {
         var _loc2_:Object = this._486576174targetShow;
         if(_loc2_ !== param1)
         {
            this._486576174targetShow = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"targetShow",_loc2_,param1));
         }
      }
      
      private function changeTarget(param1:int = 0) : void
      {
         switch(param1)
         {
            case 0:
               showCharView();
               break;
            case 1:
               showPetView();
         }
      }
      
      private function showColor(param1:Event) : void
      {
         colorCode = param1.currentTarget.value;
         targetShow.color = colorCode;
      }
      
      private function showOldChar() : void
      {
         var _loc1_:String = ResManager.getResUrl(resCode);
         oldShow.url = _loc1_;
         oldShow.color = _core.player.colorCode;
      }
      
      public function __petDataList_mouseDown(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
      }
      
      private function _ChangeColorPanel_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = ChangeColorPanel_inlineComponent1;
         _loc1_.properties = {"outerDocument":this};
         return _loc1_;
      }
      
      public function __colorCodeHSlider_change(param1:SliderEvent) : void
      {
         showColor(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get btnLeft() : Button
      {
         return this._205980803btnLeft;
      }
      
      [Bindable(event="propertyChange")]
      public function get targetChar() : BasicGlowButton
      {
         return this._486099079targetChar;
      }
      
      public function __btnRight_click(param1:MouseEvent) : void
      {
         rollShow(true);
      }
      
      public function set oldShow(param1:CharactorShowCanvas) : void
      {
         var _loc2_:Object = this._1379429948oldShow;
         if(_loc2_ !== param1)
         {
            this._1379429948oldShow = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"oldShow",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get changeColor() : BasicGlowButton
      {
         return this._1680475757changeColor;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:ChangeColorPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ChangeColorPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_ChangeColorPanelWatcherSetupUtil");
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
      
      public function set targetPet(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._815590962targetPet;
         if(_loc2_ !== param1)
         {
            this._815590962targetPet = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"targetPet",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cvsPet() : SimpleCanvas
      {
         return this._1348199777cvsPet;
      }
      
      public function set levelLabel(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._188974544levelLabel;
         if(_loc2_ !== param1)
         {
            this._188974544levelLabel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelLabel",_loc2_,param1));
         }
      }
      
      private function showPetView() : void
      {
         var _loc2_:Object = null;
         var _loc3_:Class = null;
         targetChar.selected = false;
         targetPet.selected = true;
         cvsPet.visible = true;
         oldShowCVS.visible = false;
         isChangePet = true;
         petArr = new Array();
         var _loc1_:int = 0;
         for each(_loc2_ in _core.player.petList)
         {
            if(Boolean(_loc2_) && Boolean(_loc2_.creatureData))
            {
               _loc1_++;
               if(_loc2_.state != 1)
               {
                  if(_loc2_.state == 2)
                  {
                     _loc3_ = ResManager.ICON_PET_FOLLOW;
                  }
                  else
                  {
                     _loc3_ = ResManager.ICON_PET_STANDBY;
                  }
                  petArr.push({
                     "id":_loc2_.id,
                     "text":_loc2_.petName,
                     "level":PetLogic.expToLv(_loc2_.exp),
                     "icon":_loc3_,
                     "sort1":_loc2_.tid,
                     "sort2":_loc2_.growRate,
                     "color":GamePredef.CODE_ITEM_COLOR[_core.basic.colorByGrowRate(_loc2_.growRate)],
                     "petData":_loc2_
                  });
               }
            }
         }
         petArr.sortOn(["sort1","sort2"],[Array.NUMERIC,Array.NUMERIC]);
         if(_core.battlePet)
         {
            petArr.unshift({
               "id":_core.battlePet.id,
               "text":_core.battlePet.petName,
               "level":PetLogic.expToLv(_core.battlePet.exp),
               "icon":ResManager.ICON_PET_BATTLE,
               "color":GamePredef.CODE_ITEM_COLOR[_core.basic.colorByGrowRate(_core.battlePet.growRate)],
               "petData":_core.battlePet
            });
         }
         if(petArr.length > 0)
         {
            petDataList.dataProvider = petArr;
            petDataList.selectedIndex = 0;
            petDataListClick();
         }
         petNum.text = _loc1_.toString() + "/" + _core.player.petMaxNum;
      }
      
      [Bindable(event="propertyChange")]
      public function get petDataList() : List
      {
         return this._579057063petDataList;
      }
      
      private function viewClear() : void
      {
         targetShow.url = null;
         nameLabel.text = "";
         levelLabel.text = "";
      }
      
      public function __targetChar_click(param1:MouseEvent) : void
      {
         changeTarget(0);
      }
      
      public function set colorCodeHSlider(param1:HSlider) : void
      {
         var _loc2_:Object = this._1848420007colorCodeHSlider;
         if(_loc2_ !== param1)
         {
            this._1848420007colorCodeHSlider = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"colorCodeHSlider",_loc2_,param1));
         }
      }
      
      public function ___ChangeColorPanel_Button3_click(param1:MouseEvent) : void
      {
         rollShow(false);
      }
      
      public function __petDataList_itemClick(param1:ListEvent) : void
      {
         petDataListClick();
      }
      
      [Bindable(event="propertyChange")]
      public function get oldShow() : CharactorShowCanvas
      {
         return this._1379429948oldShow;
      }
      
      private function _ChangeColorPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.CHANGECOLORPANEL_S[0];
         _loc1_ = Language.CHANGECOLORPANEL_S[13];
         _loc1_ = Language.CHANGECOLORPANEL_S[14];
         _loc1_ = Language.CHANGECOLORPANEL_S[7];
         _loc1_ = Language.PETMANAGEPRANEL_U[8];
         _loc1_ = Language.CHANGECOLORPANEL_S[15];
         _loc1_ = colorCode;
         _loc1_ = Language.CHARSELECTCANVAS_U[34];
         _loc1_ = Language.CHANGECOLORPANEL_S[16];
      }
      
      public function set petNum(param1:BoxLabel) : void
      {
         var _loc2_:Object = this._991692313petNum;
         if(_loc2_ !== param1)
         {
            this._991692313petNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petNum",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get levelLabel() : BasicTxtButton
      {
         return this._188974544levelLabel;
      }
      
      [Bindable(event="propertyChange")]
      public function get targetPet() : BasicGlowButton
      {
         return this._815590962targetPet;
      }
      
      private function set colorCode(param1:Number) : void
      {
         var _loc2_:Object = this._1980426224colorCode;
         if(_loc2_ !== param1)
         {
            this._1980426224colorCode = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"colorCode",_loc2_,param1));
         }
      }
      
      override public function set visible(param1:Boolean) : void
      {
         super.visible = param1;
         if(initialized && param1)
         {
            showCharView();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get petNum() : BoxLabel
      {
         return this._991692313petNum;
      }
      
      [Bindable(event="propertyChange")]
      private function get colorCode() : Number
      {
         return this._1980426224colorCode;
      }
      
      public function __btnLeft_click(param1:MouseEvent) : void
      {
         rollShow(false);
      }
      
      private function getCharClassRes(param1:Charactor, param2:String) : Number
      {
         var _loc3_:Object = _core.data.getGameData(GamePredef.TBL_CLASS,param1.classId);
         if(_loc3_)
         {
            if(param1.gender == 0)
            {
               return _loc3_["resCodeMale" + param2];
            }
            return _loc3_["resCodeFemale" + param2];
         }
         return param1.resCode;
      }
      
      public function __targetPet_click(param1:MouseEvent) : void
      {
         changeTarget(1);
      }
      
      public function set oldShowCVS(param1:SimpleCanvas) : void
      {
         var _loc2_:Object = this._350425604oldShowCVS;
         if(_loc2_ !== param1)
         {
            this._350425604oldShowCVS = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"oldShowCVS",_loc2_,param1));
         }
      }
      
      public function ___ChangeColorPanel_Button4_click(param1:MouseEvent) : void
      {
         rollShow(true);
      }
   }
}

