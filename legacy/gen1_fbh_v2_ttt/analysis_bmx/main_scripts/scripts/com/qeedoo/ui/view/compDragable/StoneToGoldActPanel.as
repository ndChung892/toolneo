package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.ItemSlot;
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
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.LinkButton;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.managers.PopUpManager;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class StoneToGoldActPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _StoneToGoldActPanel_Image1:Image;
      
      private var itemRuleStr:String = "";
      
      private var _1524564555itemCanvas:Canvas;
      
      private var _1110417474label2:Label;
      
      private var StoneToGoldActConf:Object = {};
      
      public var _StoneToGoldActPanel_LinkButton1:LinkButton;
      
      private var iidObj:Object = {};
      
      private var _helpAlert:Alert;
      
      mx_internal var _watchers:Array = [];
      
      private var StoneToGoldActData:Object = {};
      
      private var _2001055442numPay0:Image;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _2001055441numPay1:Image;
      
      private var numberArr:Array = [4130220000942,4130220000943,4130220000944,4130220000945,4130220000946,4130220000947,4130220000948,4130220000949,4130220000950,4130220000951];
      
      public var _StoneToGoldActPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      mx_internal var _bindings:Array = [];
      
      private var _1874406054imgLuckyBox:Image;
      
      private var _566106333btnGetAward:Button;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":450,
               "height":250,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_StoneToGoldActPanel_BasicTitleCanvas1",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 14;
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"_StoneToGoldActPanel_Image1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":6,
                        "y":33,
                        "width":440,
                        "height":212
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":LinkButton,
                  "id":"_StoneToGoldActPanel_LinkButton1",
                  "events":{"click":"___StoneToGoldActPanel_LinkButton1_click"},
                  "stylesFactory":function():void
                  {
                     this.textAlign = "right";
                     this.color = 16766720;
                     this.textDecoration = "underline";
                     this.fontSize = 12;
                     this.fontWeight = "normal";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":75,
                        "height":20,
                        "x":350,
                        "y":32,
                        "label":"玩法说明"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"numPay0",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":117,
                        "y":59,
                        "width":21,
                        "height":27
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"numPay1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":138,
                        "y":59,
                        "width":21,
                        "height":27
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"itemCanvas",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":25,
                        "y":89,
                        "width":180,
                        "height":100,
                        "styleName":"CanvasBorder"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":246,
                        "y":89,
                        "width":180,
                        "height":100,
                        "styleName":"CanvasBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Image,
                           "id":"imgLuckyBox",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":0,
                                 "y":0,
                                 "width":180,
                                 "height":100
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"label2",
                  "stylesFactory":function():void
                  {
                     this.color = 16766720;
                     this.fontSize = 12;
                     this.textAlign = "center";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":175,
                        "y":187,
                        "width":100
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"btnGetAward",
                  "events":{"click":"__btnGetAward_click"},
                  "stylesFactory":function():void
                  {
                     this.fontSize = 12;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"stoneToGoldBtn",
                        "x":175,
                        "y":204,
                        "width":100,
                        "height":40
                     };
                  }
               })]
            };
         }
      });
      
      private var _core:Core = Core.getInstance();
      
      public function StoneToGoldActPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 450;
         this.height = 250;
         this.styleName = "StandardContent";
         this.cacheAsBitmap = true;
         this.x = 103;
         this.y = 102;
         this.addEventListener("creationComplete",___StoneToGoldActPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         StoneToGoldActPanel._watcherSetupUtil = param1;
      }
      
      public function set label2(param1:Label) : void
      {
         var _loc2_:Object = this._1110417474label2;
         if(_loc2_ !== param1)
         {
            this._1110417474label2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"label2",_loc2_,param1));
         }
      }
      
      public function showPanel() : *
      {
         initView();
         visible = true;
      }
      
      public function __btnGetAward_click(param1:MouseEvent) : void
      {
         getAward();
      }
      
      private function helpInfo() : void
      {
         if(_helpAlert)
         {
            PopUpManager.removePopUp(_helpAlert);
            _helpAlert = null;
         }
         var _loc1_:String = Language.STONETOGOLDACT[2].toString().replace("{money}",StoneToGoldActConf.needMoney).replace("{itemstr}",itemRuleStr).replace("{num}",StoneToGoldActConf.allNumbers);
         _helpAlert = Alert.show(_loc1_,"",Alert.YES);
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:StoneToGoldActPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _StoneToGoldActPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_StoneToGoldActPanelWatcherSetupUtil");
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
      
      public function set itemCanvas(param1:Canvas) : void
      {
         var _loc2_:Object = this._1524564555itemCanvas;
         if(_loc2_ !== param1)
         {
            this._1524564555itemCanvas = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemCanvas",_loc2_,param1));
         }
      }
      
      private function getAward() : void
      {
         _core.remote.call("getStoneToGoldAward",null);
      }
      
      private function newOneSolt(param1:Number, param2:Number) : void
      {
         var _loc3_:ItemSlot = new ItemSlot();
         _loc3_.x = param2;
         _loc3_.y = 48;
         _loc3_.type = GamePredef.TBL_ITEM_TEMPLATE;
         _loc3_.giid = iidObj[param1];
         _loc3_.slotData = GameData.d[GamePredef.TBL_ITEM_TEMPLATE][iidObj[param1]];
         itemCanvas.addChild(_loc3_);
      }
      
      [Bindable(event="propertyChange")]
      public function get numPay1() : Image
      {
         return this._2001055441numPay1;
      }
      
      [Bindable(event="propertyChange")]
      public function get imgLuckyBox() : Image
      {
         return this._1874406054imgLuckyBox;
      }
      
      public function refreshStoneToGoldActData(param1:Object) : void
      {
         var _loc7_:* = undefined;
         if(!param1)
         {
            return;
         }
         StoneToGoldActConf = param1["conf"];
         var _loc2_:Number = Number(StoneToGoldActConf.needMoney);
         var _loc3_:Number = Math.floor(_loc2_ / 10);
         var _loc4_:Number = _loc2_ % 10;
         numPay0.source = ResManager.getIconUrl(numberArr[_loc3_]);
         numPay1.source = ResManager.getIconUrl(numberArr[_loc4_]);
         label2.htmlText = Language.STONETOGOLDACT[3].replace("{num}",StoneToGoldActConf.leftNum.num);
         imgLuckyBox.toolTip = Language.STONETOGOLDACT[4];
         var _loc5_:Number = Number(param1["btnFlag"]);
         if(_loc5_ == 0)
         {
            btnGetAward.enabled = false;
         }
         else
         {
            btnGetAward.enabled = true;
         }
         var _loc6_:Number = 0;
         itemRuleStr = "";
         for(_loc7_ in StoneToGoldActConf.iInfo)
         {
            if(StoneToGoldActConf.iInfo[_loc7_].inc == 1)
            {
               _loc6_++;
               iidObj[_loc6_] = StoneToGoldActConf.iInfo[_loc7_].iid;
               itemRuleStr += GameData.d[GamePredef.TBL_ITEM_TEMPLATE][StoneToGoldActConf.iInfo[_loc7_].iid].name + "*" + StoneToGoldActConf.iInfo[_loc7_].number + "、";
               if(_loc6_ >= 3)
               {
                  break;
               }
            }
         }
         itemRuleStr = itemRuleStr.substr(0,itemRuleStr.length - 1);
         initItemCanvas(_loc6_);
      }
      
      [Bindable(event="propertyChange")]
      public function get numPay0() : Image
      {
         return this._2001055442numPay0;
      }
      
      [Bindable(event="propertyChange")]
      public function get label2() : Label
      {
         return this._1110417474label2;
      }
      
      public function ___StoneToGoldActPanel_LinkButton1_click(param1:MouseEvent) : void
      {
         helpInfo();
      }
      
      private function _StoneToGoldActPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.STONETOGOLDACT[0];
         _loc1_ = ResManager.getIconUrl(4130220000954);
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = ResManager.getIconUrl(4130220000953);
      }
      
      [Bindable(event="propertyChange")]
      public function get itemCanvas() : Canvas
      {
         return this._1524564555itemCanvas;
      }
      
      public function set btnGetAward(param1:Button) : void
      {
         var _loc2_:Object = this._566106333btnGetAward;
         if(_loc2_ !== param1)
         {
            this._566106333btnGetAward = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnGetAward",_loc2_,param1));
         }
      }
      
      public function set imgLuckyBox(param1:Image) : void
      {
         var _loc2_:Object = this._1874406054imgLuckyBox;
         if(_loc2_ !== param1)
         {
            this._1874406054imgLuckyBox = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imgLuckyBox",_loc2_,param1));
         }
      }
      
      override public function initView() : void
      {
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         _core.remote.call("initStoneToGoldActData",null);
      }
      
      public function set numPay1(param1:Image) : void
      {
         var _loc2_:Object = this._2001055441numPay1;
         if(_loc2_ !== param1)
         {
            this._2001055441numPay1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numPay1",_loc2_,param1));
         }
      }
      
      private function _StoneToGoldActPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.STONETOGOLDACT[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _StoneToGoldActPanel_BasicTitleCanvas1.text = param1;
         },"_StoneToGoldActPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000954);
         },function(param1:Object):void
         {
            _StoneToGoldActPanel_Image1.source = param1;
         },"_StoneToGoldActPanel_Image1.source");
         result[1] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _StoneToGoldActPanel_LinkButton1.setStyle("overSkin",param1);
         },"_StoneToGoldActPanel_LinkButton1.overSkin");
         result[2] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _StoneToGoldActPanel_LinkButton1.setStyle("upSkin",param1);
         },"_StoneToGoldActPanel_LinkButton1.upSkin");
         result[3] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _StoneToGoldActPanel_LinkButton1.setStyle("downSkin",param1);
         },"_StoneToGoldActPanel_LinkButton1.downSkin");
         result[4] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000953);
         },function(param1:Object):void
         {
            imgLuckyBox.source = param1;
         },"imgLuckyBox.source");
         result[5] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnGetAward() : Button
      {
         return this._566106333btnGetAward;
      }
      
      public function set numPay0(param1:Image) : void
      {
         var _loc2_:Object = this._2001055442numPay0;
         if(_loc2_ !== param1)
         {
            this._2001055442numPay0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numPay0",_loc2_,param1));
         }
      }
      
      public function ___StoneToGoldActPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         initView();
      }
      
      private function initItemCanvas(param1:Number) : void
      {
         var _loc2_:Image = null;
         itemCanvas.removeAllChildren();
         _loc2_ = new Image();
         _loc2_.x = 0;
         _loc2_.y = 0;
         _loc2_.width = 180;
         _loc2_.height = 100;
         _loc2_.source = ResManager.getIconUrl(4130220000952);
         itemCanvas.addChild(_loc2_);
         if(param1 == 1)
         {
            newOneSolt(1,75);
         }
         else if(param1 == 2)
         {
            newOneSolt(1,45);
            newOneSolt(2,105);
         }
         else if(param1 == 3)
         {
            newOneSolt(1,15);
            newOneSolt(2,75);
            newOneSolt(3,135);
         }
      }
   }
}

