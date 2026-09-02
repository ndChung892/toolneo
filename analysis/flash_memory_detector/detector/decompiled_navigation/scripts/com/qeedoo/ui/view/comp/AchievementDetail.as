package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.resource.ResManager;
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
   import mx.containers.VBox;
   import mx.controls.Button;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.Text;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.states.RemoveChild;
   import mx.states.SetProperty;
   import mx.states.SetStyle;
   import mx.states.State;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class AchievementDetail extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1621978433awardBtn:Button;
      
      private var _1930973972txtfield6:Label;
      
      private var _269348908txtfield13:Label;
      
      public var _AchievementDetail_RemoveChild1:RemoveChild;
      
      public var _AchievementDetail_RemoveChild2:RemoveChild;
      
      public var _AchievementDetail_RemoveChild3:RemoveChild;
      
      public var _AchievementDetail_RemoveChild4:RemoveChild;
      
      public var _AchievementDetail_RemoveChild5:RemoveChild;
      
      public var _AchievementDetail_RemoveChild6:RemoveChild;
      
      private var _1930973969txtfield9:Label;
      
      private var _1930973973txtfield5:Label;
      
      private var _2070982337enumList:Tile;
      
      public var aid:int = 0;
      
      private var _1330657564txtAchieveAward:BasicTxtButton;
      
      private var _1930973974txtfield4:Label;
      
      private var _269348907txtfield12:Label;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1844592686txtAchieveTime:BasicTxtButton;
      
      private var _859630293imageAch:Image;
      
      private var _1930973975txtfield3:Label;
      
      public var _core:Core = Core.getInstance();
      
      private var _1930973976txtfield2:Label;
      
      public var _AchievementDetail_SetStyle1:SetStyle;
      
      private var _269348906txtfield11:Label;
      
      mx_internal var _watchers:Array = [];
      
      public var _AchievementDetail_SetProperty1:SetProperty;
      
      public var _AchievementDetail_SetProperty2:SetProperty;
      
      public var _AchievementDetail_SetProperty3:SetProperty;
      
      public var _AchievementDetail_SetProperty4:SetProperty;
      
      public var _AchievementDetail_SetProperty5:SetProperty;
      
      private var _1930973977txtfield1:Label;
      
      private var _2143056348txtareaAchieveTitle:BasicTxtButton;
      
      private var _717359211progressList:VBox;
      
      private var _2009274043txtareaAchieveDesc:Text;
      
      public var _MAX_ENUM_NUM:int = 15;
      
      private var _1930973978txtfield0:Label;
      
      private var _269348905txtfield10:Label;
      
      private var _1822959109txtareaAchieveDetail:Text;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _269348909txtfield14:Label;
      
      public var _finished:int = 0;
      
      private var _1930973970txtfield8:Label;
      
      mx_internal var _bindings:Array = [];
      
      private var _1930973971txtfield7:Label;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":345,
               "height":54,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTxtButton,
                  "id":"txtareaAchieveTitle",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 14;
                     this.color = 16776960;
                     this.textAlign = "left";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":6,
                        "y":3,
                        "width":209,
                        "height":20
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Text,
                  "id":"txtareaAchieveDesc",
                  "stylesFactory":function():void
                  {
                     this.color = 16776960;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":6,
                        "y":23,
                        "width":293,
                        "height":26,
                        "selectable":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicTxtButton,
                  "id":"txtAchieveTime",
                  "stylesFactory":function():void
                  {
                     this.color = 16776960;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":215,
                        "y":4,
                        "width":83
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"imageAch",
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "144";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":5,
                        "width":42,
                        "height":42
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicTxtButton,
                  "id":"txtAchieveAward",
                  "stylesFactory":function():void
                  {
                     this.textAlign = "center";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "label":"10",
                        "x":307,
                        "y":13,
                        "width":20
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Text,
                  "id":"txtareaAchieveDetail",
                  "stylesFactory":function():void
                  {
                     this.color = 1048575;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "selectable":false,
                        "x":6,
                        "y":52,
                        "width":331,
                        "height":30,
                        "visible":false,
                        "includeInLayout":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Tile,
                  "id":"enumList",
                  "stylesFactory":function():void
                  {
                     this.horizontalGap = 2;
                     this.verticalGap = 2;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "verticalScrollPolicy":"off",
                        "x":5,
                        "y":81,
                        "width":332,
                        "height":40,
                        "direction":"horizontal",
                        "visible":false,
                        "includeInLayout":false,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Label,
                           "id":"txtfield0",
                           "propertiesFactory":function():Object
                           {
                              return {"visible":false};
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"txtfield1",
                           "propertiesFactory":function():Object
                           {
                              return {"visible":false};
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"txtfield2",
                           "propertiesFactory":function():Object
                           {
                              return {"visible":false};
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"txtfield3",
                           "propertiesFactory":function():Object
                           {
                              return {"visible":false};
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"txtfield4",
                           "propertiesFactory":function():Object
                           {
                              return {"visible":false};
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"txtfield5",
                           "propertiesFactory":function():Object
                           {
                              return {"visible":false};
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"txtfield6",
                           "propertiesFactory":function():Object
                           {
                              return {"visible":false};
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"txtfield7",
                           "propertiesFactory":function():Object
                           {
                              return {"visible":false};
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"txtfield8",
                           "propertiesFactory":function():Object
                           {
                              return {"visible":false};
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"txtfield9",
                           "propertiesFactory":function():Object
                           {
                              return {"visible":false};
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"txtfield10",
                           "propertiesFactory":function():Object
                           {
                              return {"visible":false};
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"txtfield11",
                           "propertiesFactory":function():Object
                           {
                              return {"visible":false};
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"txtfield12",
                           "propertiesFactory":function():Object
                           {
                              return {"visible":false};
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"txtfield13",
                           "propertiesFactory":function():Object
                           {
                              return {"visible":false};
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"txtfield14",
                           "propertiesFactory":function():Object
                           {
                              return {"visible":false};
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":VBox,
                  "id":"progressList",
                  "stylesFactory":function():void
                  {
                     this.verticalGap = 2;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":18,
                        "y":54,
                        "width":300,
                        "visible":false,
                        "includeInLayout":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"awardBtn",
                  "events":{"click":"__awardBtn_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"BtnStdRed",
                        "x":220,
                        "y":22,
                        "visible":false,
                        "toolTip":""
                     };
                  }
               })]
            };
         }
      });
      
      public function AchievementDetail()
      {
         super();
         mx_internal::_document = this;
         this.width = 345;
         this.height = 54;
         this.styleName = "CanvasAchDetail";
         this.states = [_AchievementDetail_State1_c(),_AchievementDetail_State2_c()];
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         AchievementDetail._watcherSetupUtil = param1;
      }
      
      private function _AchievementDetail_SetProperty3_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _AchievementDetail_SetProperty3 = _loc1_;
         _loc1_.name = "width";
         _loc1_.value = 70;
         BindingManager.executeBindings(this,"_AchievementDetail_SetProperty3",_AchievementDetail_SetProperty3);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get txtareaAchieveDetail() : Text
      {
         return this._1822959109txtareaAchieveDetail;
      }
      
      private function _AchievementDetail_RemoveChild6_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _AchievementDetail_RemoveChild6 = _loc1_;
         BindingManager.executeBindings(this,"_AchievementDetail_RemoveChild6",_AchievementDetail_RemoveChild6);
         return _loc1_;
      }
      
      public function set txtareaAchieveDetail(param1:Text) : void
      {
         var _loc2_:Object = this._1822959109txtareaAchieveDetail;
         if(_loc2_ !== param1)
         {
            this._1822959109txtareaAchieveDetail = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txtareaAchieveDetail",_loc2_,param1));
         }
      }
      
      private function _AchievementDetail_RemoveChild2_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _AchievementDetail_RemoveChild2 = _loc1_;
         BindingManager.executeBindings(this,"_AchievementDetail_RemoveChild2",_AchievementDetail_RemoveChild2);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get txtAchieveAward() : BasicTxtButton
      {
         return this._1330657564txtAchieveAward;
      }
      
      [Bindable(event="propertyChange")]
      public function get txtfield10() : Label
      {
         return this._269348905txtfield10;
      }
      
      [Bindable(event="propertyChange")]
      public function get txtfield11() : Label
      {
         return this._269348906txtfield11;
      }
      
      [Bindable(event="propertyChange")]
      public function get imageAch() : Image
      {
         return this._859630293imageAch;
      }
      
      [Bindable(event="propertyChange")]
      public function get txtfield14() : Label
      {
         return this._269348909txtfield14;
      }
      
      private function hideDetail() : void
      {
         enumList.visible = false;
         enumList.includeInLayout = false;
         progressList.visible = false;
         progressList.includeInLayout = false;
         progressList.removeAllChildren();
         height = 54;
      }
      
      [Bindable(event="propertyChange")]
      public function get txtAchieveTime() : BasicTxtButton
      {
         return this._1844592686txtAchieveTime;
      }
      
      [Bindable(event="propertyChange")]
      public function get enumList() : Tile
      {
         return this._2070982337enumList;
      }
      
      public function set txtAchieveAward(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._1330657564txtAchieveAward;
         if(_loc2_ !== param1)
         {
            this._1330657564txtAchieveAward = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txtAchieveAward",_loc2_,param1));
         }
      }
      
      private function _AchievementDetail_RemoveChild5_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _AchievementDetail_RemoveChild5 = _loc1_;
         BindingManager.executeBindings(this,"_AchievementDetail_RemoveChild5",_AchievementDetail_RemoveChild5);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get txtfield12() : Label
      {
         return this._269348907txtfield12;
      }
      
      public function set selected(param1:Boolean) : void
      {
         if(param1)
         {
            filters = [GamePredef.FILTER_ACHIEVE_SELECTED];
            if(_finished)
            {
               txtareaAchieveDetail.setStyle("color",16776960);
            }
            else
            {
               txtareaAchieveDetail.setStyle("color",13158600);
            }
         }
         else
         {
            filters = [];
            hideDetail();
            txtareaAchieveDetail.visible = false;
            txtareaAchieveDetail.includeInLayout = false;
         }
      }
      
      private function _AchievementDetail_RemoveChild1_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _AchievementDetail_RemoveChild1 = _loc1_;
         BindingManager.executeBindings(this,"_AchievementDetail_RemoveChild1",_AchievementDetail_RemoveChild1);
         return _loc1_;
      }
      
      private function _AchievementDetail_State2_c() : State
      {
         var _loc1_:State = new State();
         _loc1_.name = "simple";
         _loc1_.overrides = [_AchievementDetail_RemoveChild1_i(),_AchievementDetail_RemoveChild2_i(),_AchievementDetail_RemoveChild3_i(),_AchievementDetail_RemoveChild4_i(),_AchievementDetail_RemoveChild5_i(),_AchievementDetail_RemoveChild6_i(),_AchievementDetail_SetProperty1_i(),_AchievementDetail_SetProperty2_i(),_AchievementDetail_SetProperty3_i(),_AchievementDetail_SetProperty4_i(),_AchievementDetail_SetProperty5_i(),_AchievementDetail_SetStyle1_i(),_AchievementDetail_SetProperty6_c()];
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get txtareaAchieveDesc() : Text
      {
         return this._2009274043txtareaAchieveDesc;
      }
      
      private function _AchievementDetail_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = enumList;
         _loc1_ = progressList;
         _loc1_ = txtareaAchieveDesc;
         _loc1_ = txtareaAchieveDetail;
         _loc1_ = imageAch;
         _loc1_ = txtAchieveAward;
         _loc1_ = txtAchieveTime;
         _loc1_ = txtAchieveTime;
         _loc1_ = txtAchieveTime;
         _loc1_ = txtareaAchieveTitle;
         _loc1_ = txtareaAchieveTitle;
         _loc1_ = txtareaAchieveTitle;
         _loc1_ = Language.ACHIEVEMENTPANEL_U[0];
         _loc1_ = Language.ACHIEVEMENTPANEL_U[0];
         _loc1_ = _finished ? ResManager.ICON_ACHIEVEMENT : ResManager.ICON_ACHIEVEMENT_DISABLED;
         _loc1_ = Language.ACHIEVEMENTPANEL_U[0];
         _loc1_ = Language.MEDAL_P[31];
      }
      
      public function set txtfield13(param1:Label) : void
      {
         var _loc2_:Object = this._269348908txtfield13;
         if(_loc2_ !== param1)
         {
            this._269348908txtfield13 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txtfield13",_loc2_,param1));
         }
      }
      
      private function _AchievementDetail_SetProperty6_c() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _loc1_.name = "width";
         _loc1_.value = 78;
         return _loc1_;
      }
      
      private function _AchievementDetail_SetProperty2_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _AchievementDetail_SetProperty2 = _loc1_;
         _loc1_.name = "y";
         _loc1_.value = 20;
         BindingManager.executeBindings(this,"_AchievementDetail_SetProperty2",_AchievementDetail_SetProperty2);
         return _loc1_;
      }
      
      public function set txtAchieveTime(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._1844592686txtAchieveTime;
         if(_loc2_ !== param1)
         {
            this._1844592686txtAchieveTime = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txtAchieveTime",_loc2_,param1));
         }
      }
      
      public function set imageAch(param1:Image) : void
      {
         var _loc2_:Object = this._859630293imageAch;
         if(_loc2_ !== param1)
         {
            this._859630293imageAch = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imageAch",_loc2_,param1));
         }
      }
      
      public function set txtareaAchieveTitle(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._2143056348txtareaAchieveTitle;
         if(_loc2_ !== param1)
         {
            this._2143056348txtareaAchieveTitle = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txtareaAchieveTitle",_loc2_,param1));
         }
      }
      
      public function set txtfield12(param1:Label) : void
      {
         var _loc2_:Object = this._269348907txtfield12;
         if(_loc2_ !== param1)
         {
            this._269348907txtfield12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txtfield12",_loc2_,param1));
         }
      }
      
      public function set txtfield14(param1:Label) : void
      {
         var _loc2_:Object = this._269348909txtfield14;
         if(_loc2_ !== param1)
         {
            this._269348909txtfield14 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txtfield14",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get txtareaAchieveTitle() : BasicTxtButton
      {
         return this._2143056348txtareaAchieveTitle;
      }
      
      [Bindable(event="propertyChange")]
      public function get progressList() : VBox
      {
         return this._717359211progressList;
      }
      
      public function set txtfield11(param1:Label) : void
      {
         var _loc2_:Object = this._269348906txtfield11;
         if(_loc2_ !== param1)
         {
            this._269348906txtfield11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txtfield11",_loc2_,param1));
         }
      }
      
      private function _AchievementDetail_SetStyle1_i() : SetStyle
      {
         var _loc1_:SetStyle = new SetStyle();
         _AchievementDetail_SetStyle1 = _loc1_;
         _loc1_.name = "fontSize";
         _loc1_.value = 12;
         BindingManager.executeBindings(this,"_AchievementDetail_SetStyle1",_AchievementDetail_SetStyle1);
         return _loc1_;
      }
      
      public function set txtfield10(param1:Label) : void
      {
         var _loc2_:Object = this._269348905txtfield10;
         if(_loc2_ !== param1)
         {
            this._269348905txtfield10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txtfield10",_loc2_,param1));
         }
      }
      
      public function get finished() : int
      {
         return _finished;
      }
      
      [Bindable(event="propertyChange")]
      public function get txtfield13() : Label
      {
         return this._269348908txtfield13;
      }
      
      private function _AchievementDetail_State1_c() : State
      {
         var _loc1_:State = new State();
         _loc1_.name = "normal";
         return _loc1_;
      }
      
      public function set awardBtn(param1:Button) : void
      {
         var _loc2_:Object = this._1621978433awardBtn;
         if(_loc2_ !== param1)
         {
            this._1621978433awardBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"awardBtn",_loc2_,param1));
         }
      }
      
      private function _AchievementDetail_SetProperty1_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _AchievementDetail_SetProperty1 = _loc1_;
         _loc1_.name = "x";
         _loc1_.value = 5;
         BindingManager.executeBindings(this,"_AchievementDetail_SetProperty1",_AchievementDetail_SetProperty1);
         return _loc1_;
      }
      
      private function _AchievementDetail_RemoveChild4_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _AchievementDetail_RemoveChild4 = _loc1_;
         BindingManager.executeBindings(this,"_AchievementDetail_RemoveChild4",_AchievementDetail_RemoveChild4);
         return _loc1_;
      }
      
      private function _AchievementDetail_SetProperty5_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _AchievementDetail_SetProperty5 = _loc1_;
         _loc1_.name = "width";
         _loc1_.value = 76;
         BindingManager.executeBindings(this,"_AchievementDetail_SetProperty5",_AchievementDetail_SetProperty5);
         return _loc1_;
      }
      
      private function _AchievementDetail_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():DisplayObject
         {
            return enumList;
         },function(param1:DisplayObject):void
         {
            _AchievementDetail_RemoveChild1.target = param1;
         },"_AchievementDetail_RemoveChild1.target");
         result[0] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return progressList;
         },function(param1:DisplayObject):void
         {
            _AchievementDetail_RemoveChild2.target = param1;
         },"_AchievementDetail_RemoveChild2.target");
         result[1] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return txtareaAchieveDesc;
         },function(param1:DisplayObject):void
         {
            _AchievementDetail_RemoveChild3.target = param1;
         },"_AchievementDetail_RemoveChild3.target");
         result[2] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return txtareaAchieveDetail;
         },function(param1:DisplayObject):void
         {
            _AchievementDetail_RemoveChild4.target = param1;
         },"_AchievementDetail_RemoveChild4.target");
         result[3] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return imageAch;
         },function(param1:DisplayObject):void
         {
            _AchievementDetail_RemoveChild5.target = param1;
         },"_AchievementDetail_RemoveChild5.target");
         result[4] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return txtAchieveAward;
         },function(param1:DisplayObject):void
         {
            _AchievementDetail_RemoveChild6.target = param1;
         },"_AchievementDetail_RemoveChild6.target");
         result[5] = binding;
         binding = new Binding(this,function():Object
         {
            return txtAchieveTime;
         },function(param1:Object):void
         {
            _AchievementDetail_SetProperty1.target = param1;
         },"_AchievementDetail_SetProperty1.target");
         result[6] = binding;
         binding = new Binding(this,function():Object
         {
            return txtAchieveTime;
         },function(param1:Object):void
         {
            _AchievementDetail_SetProperty2.target = param1;
         },"_AchievementDetail_SetProperty2.target");
         result[7] = binding;
         binding = new Binding(this,function():Object
         {
            return txtAchieveTime;
         },function(param1:Object):void
         {
            _AchievementDetail_SetProperty3.target = param1;
         },"_AchievementDetail_SetProperty3.target");
         result[8] = binding;
         binding = new Binding(this,function():Object
         {
            return txtareaAchieveTitle;
         },function(param1:Object):void
         {
            _AchievementDetail_SetProperty4.target = param1;
         },"_AchievementDetail_SetProperty4.target");
         result[9] = binding;
         binding = new Binding(this,function():Object
         {
            return txtareaAchieveTitle;
         },function(param1:Object):void
         {
            _AchievementDetail_SetProperty5.target = param1;
         },"_AchievementDetail_SetProperty5.target");
         result[10] = binding;
         binding = new Binding(this,function():IStyleClient
         {
            return txtareaAchieveTitle;
         },function(param1:IStyleClient):void
         {
            _AchievementDetail_SetStyle1.target = param1;
         },"_AchievementDetail_SetStyle1.target");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACHIEVEMENTPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            txtareaAchieveTitle.label = param1;
         },"txtareaAchieveTitle.label");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACHIEVEMENTPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            txtareaAchieveDesc.text = param1;
         },"txtareaAchieveDesc.text");
         result[13] = binding;
         binding = new Binding(this,function():Object
         {
            return _finished ? ResManager.ICON_ACHIEVEMENT : ResManager.ICON_ACHIEVEMENT_DISABLED;
         },function(param1:Object):void
         {
            imageAch.source = param1;
         },"imageAch.source");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACHIEVEMENTPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            txtareaAchieveDetail.text = param1;
         },"txtareaAchieveDetail.text");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MEDAL_P[31];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            awardBtn.label = param1;
         },"awardBtn.label");
         result[16] = binding;
         return result;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:AchievementDetail = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _AchievementDetail_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_AchievementDetailWatcherSetupUtil");
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
      
      public function set enumList(param1:Tile) : void
      {
         var _loc2_:Object = this._2070982337enumList;
         if(_loc2_ !== param1)
         {
            this._2070982337enumList = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"enumList",_loc2_,param1));
         }
      }
      
      public function get selected() : Boolean
      {
         return Boolean(filters) && filters.length > 0;
      }
      
      public function showDetail(param1:int, param2:Object = null) : void
      {
         var _loc5_:Object = null;
         var _loc6_:* = 0;
         var _loc7_:int = 0;
         var _loc8_:* = undefined;
         var _loc9_:* = undefined;
         var _loc10_:Property = null;
         var _loc3_:int = 0;
         if(param2.detail)
         {
            txtareaAchieveDetail.visible = true;
            txtareaAchieveDetail.text = param2.detail;
            _loc3_ += 30;
         }
         else
         {
            txtareaAchieveDetail.includeInLayout = false;
            txtareaAchieveDetail.visible = false;
         }
         imageAch.source = param2.finished ? ResManager.ICON_ACHIEVEMENT : ResManager.ICON_ACHIEVEMENT_DISABLED;
         var _loc4_:Object = GameData.d[GamePredef.TBL_ACHIEVEMENT][aid];
         if(Boolean(param2.finished) && Boolean(_loc4_) && Boolean(_loc4_.isAward) && Number(_loc4_.isAward) > 0)
         {
            awardBtn.visible = true;
            awardBtn.toolTip = _loc4_.desc;
            if(Number(_loc4_.isAward) == 1)
            {
               if(Boolean(_core.takeAchieveAwardLog) && Boolean(_core.takeAchieveAwardLog[aid]) && Number(_core.takeAchieveAwardLog[aid]) > 0)
               {
                  awardBtn.visible = false;
               }
               else
               {
                  awardBtn.visible = true;
               }
            }
         }
         else
         {
            awardBtn.visible = false;
         }
         switch(param1)
         {
            case 0:
               hideDetail();
               height = 54 + _loc3_;
               break;
            case 1:
               enumList.visible = true;
               enumList.y = 54 + _loc3_;
               _loc5_ = param2.enumNameList;
               _loc6_ = 0;
               for(_loc8_ in _loc5_)
               {
                  this["txtfield" + _loc6_].visible = true;
                  this["txtfield" + _loc6_].setStyle("color",_loc5_[_loc8_] ? 65280 : 13158600);
                  this["txtfield" + _loc6_].text = _loc8_;
                  _loc6_++;
               }
               _loc7_ = 22 * Math.ceil(_loc6_ / 3);
               enumList.height = enumList.y + _loc7_;
               _loc3_ += _loc7_;
               height = 60 + _loc3_;
               while(_loc6_ < _MAX_ENUM_NUM)
               {
                  this["txtfield" + _loc6_++].visible = false;
               }
               break;
            case 2:
               progressList.visible = true;
               if(progressList.numChildren > 0)
               {
                  progressList.removeAllChildren();
               }
               _loc5_ = param2.progressNameList;
               _loc6_ = 0;
               for(_loc9_ in _loc5_)
               {
                  _loc10_ = new Property();
                  _loc10_.m = _loc5_[_loc9_].m;
                  _loc10_.v = _loc5_[_loc9_].v;
                  _loc10_.styleName = "ProgressExp";
                  progressList.y = 50 + _loc3_;
                  _loc10_.height = 13;
                  _loc10_.width = 250;
                  _loc10_.color = 0;
                  _loc10_.label = _loc9_ + ":" + _loc5_[_loc9_].v + "/" + _loc5_[_loc9_].m;
                  progressList.addChild(_loc10_);
                  _loc6_++;
               }
               _loc3_ += 15 * _loc6_;
               height = 54 + _loc3_;
         }
      }
      
      public function set txtareaAchieveDesc(param1:Text) : void
      {
         var _loc2_:Object = this._2009274043txtareaAchieveDesc;
         if(_loc2_ !== param1)
         {
            this._2009274043txtareaAchieveDesc = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txtareaAchieveDesc",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get awardBtn() : Button
      {
         return this._1621978433awardBtn;
      }
      
      private function _AchievementDetail_RemoveChild3_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _AchievementDetail_RemoveChild3 = _loc1_;
         BindingManager.executeBindings(this,"_AchievementDetail_RemoveChild3",_AchievementDetail_RemoveChild3);
         return _loc1_;
      }
      
      private function _AchievementDetail_SetProperty4_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _AchievementDetail_SetProperty4 = _loc1_;
         _loc1_.name = "x";
         _loc1_.value = 1;
         BindingManager.executeBindings(this,"_AchievementDetail_SetProperty4",_AchievementDetail_SetProperty4);
         return _loc1_;
      }
      
      public function set txtfield2(param1:Label) : void
      {
         var _loc2_:Object = this._1930973976txtfield2;
         if(_loc2_ !== param1)
         {
            this._1930973976txtfield2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txtfield2",_loc2_,param1));
         }
      }
      
      public function set txtfield3(param1:Label) : void
      {
         var _loc2_:Object = this._1930973975txtfield3;
         if(_loc2_ !== param1)
         {
            this._1930973975txtfield3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txtfield3",_loc2_,param1));
         }
      }
      
      public function set txtfield0(param1:Label) : void
      {
         var _loc2_:Object = this._1930973978txtfield0;
         if(_loc2_ !== param1)
         {
            this._1930973978txtfield0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txtfield0",_loc2_,param1));
         }
      }
      
      public function set txtfield1(param1:Label) : void
      {
         var _loc2_:Object = this._1930973977txtfield1;
         if(_loc2_ !== param1)
         {
            this._1930973977txtfield1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txtfield1",_loc2_,param1));
         }
      }
      
      public function set txtfield6(param1:Label) : void
      {
         var _loc2_:Object = this._1930973972txtfield6;
         if(_loc2_ !== param1)
         {
            this._1930973972txtfield6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txtfield6",_loc2_,param1));
         }
      }
      
      public function set txtfield4(param1:Label) : void
      {
         var _loc2_:Object = this._1930973974txtfield4;
         if(_loc2_ !== param1)
         {
            this._1930973974txtfield4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txtfield4",_loc2_,param1));
         }
      }
      
      public function set txtfield8(param1:Label) : void
      {
         var _loc2_:Object = this._1930973970txtfield8;
         if(_loc2_ !== param1)
         {
            this._1930973970txtfield8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txtfield8",_loc2_,param1));
         }
      }
      
      public function set progressList(param1:VBox) : void
      {
         var _loc2_:Object = this._717359211progressList;
         if(_loc2_ !== param1)
         {
            this._717359211progressList = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progressList",_loc2_,param1));
         }
      }
      
      public function set txtfield9(param1:Label) : void
      {
         var _loc2_:Object = this._1930973969txtfield9;
         if(_loc2_ !== param1)
         {
            this._1930973969txtfield9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txtfield9",_loc2_,param1));
         }
      }
      
      public function set txtfield7(param1:Label) : void
      {
         var _loc2_:Object = this._1930973971txtfield7;
         if(_loc2_ !== param1)
         {
            this._1930973971txtfield7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txtfield7",_loc2_,param1));
         }
      }
      
      public function set finished(param1:int) : void
      {
         var _loc2_:Object = null;
         _finished = param1;
         if(_finished)
         {
            imageAch.source = ResManager.ICON_ACHIEVEMENT;
            styleName = "CanvasAchDetailFinished";
            txtAchieveAward.setStyle("color",16776960);
            txtareaAchieveDesc.setStyle("color",16776960);
            _loc2_ = GameData.d[GamePredef.TBL_ACHIEVEMENT][aid];
            if(Boolean(_loc2_) && Boolean(_loc2_.isAward) && Number(_loc2_.isAward) > 0)
            {
               awardBtn.visible = true;
               awardBtn.toolTip = _loc2_.desc;
               if(Number(_loc2_.isAward) == 1)
               {
                  if(Boolean(_core.takeAchieveAwardLog) && Boolean(_core.takeAchieveAwardLog[aid]) && Number(_core.takeAchieveAwardLog[aid]) > 0)
                  {
                     awardBtn.visible = false;
                  }
                  else
                  {
                     awardBtn.visible = true;
                  }
               }
            }
            else
            {
               awardBtn.visible = false;
            }
         }
         else
         {
            imageAch.source = ResManager.ICON_ACHIEVEMENT_DISABLED;
            styleName = "CanvasAchDetail";
            txtareaAchieveTitle.setStyle("color",13158600);
            txtareaAchieveDesc.setStyle("color",13158600);
            txtAchieveAward.setStyle("color",13158600);
            awardBtn.visible = false;
         }
      }
      
      public function set txtfield5(param1:Label) : void
      {
         var _loc2_:Object = this._1930973973txtfield5;
         if(_loc2_ !== param1)
         {
            this._1930973973txtfield5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txtfield5",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get txtfield0() : Label
      {
         return this._1930973978txtfield0;
      }
      
      [Bindable(event="propertyChange")]
      public function get txtfield1() : Label
      {
         return this._1930973977txtfield1;
      }
      
      public function __awardBtn_click(param1:MouseEvent) : void
      {
         getAchievementAward();
      }
      
      [Bindable(event="propertyChange")]
      public function get txtfield3() : Label
      {
         return this._1930973975txtfield3;
      }
      
      [Bindable(event="propertyChange")]
      public function get txtfield4() : Label
      {
         return this._1930973974txtfield4;
      }
      
      private function getAchievementAward() : void
      {
         if(!aid || aid == 0)
         {
            return;
         }
         var _loc1_:Object = GameData.d[GamePredef.TBL_ACHIEVEMENT][aid];
         if(!_loc1_ || !_loc1_.isAward || Number(_loc1_.isAward) == 0)
         {
            return;
         }
         _core.remote.call("getAchieveAward",null,aid);
      }
      
      [Bindable(event="propertyChange")]
      public function get txtfield8() : Label
      {
         return this._1930973970txtfield8;
      }
      
      [Bindable(event="propertyChange")]
      public function get txtfield2() : Label
      {
         return this._1930973976txtfield2;
      }
      
      [Bindable(event="propertyChange")]
      public function get txtfield6() : Label
      {
         return this._1930973972txtfield6;
      }
      
      [Bindable(event="propertyChange")]
      public function get txtfield7() : Label
      {
         return this._1930973971txtfield7;
      }
      
      [Bindable(event="propertyChange")]
      public function get txtfield5() : Label
      {
         return this._1930973973txtfield5;
      }
      
      [Bindable(event="propertyChange")]
      public function get txtfield9() : Label
      {
         return this._1930973969txtfield9;
      }
   }
}

