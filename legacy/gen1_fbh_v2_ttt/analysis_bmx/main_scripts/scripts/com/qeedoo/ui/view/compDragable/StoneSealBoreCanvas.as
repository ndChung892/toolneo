package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.comp.BasicDelayButton;
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
   import mx.controls.Alert;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class StoneSealBoreCanvas extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public static const STONE_SEAL_BORE_GOID_COST:Array = [71,86,110,146,195,258,335,428,537,663];
      
      public static const STONE_SEAL_BORE_PVE_POINT_COST:Array = [50,60,77,102,136,180,234,299,375,463];
      
      public static const STONE_SEAL_BORE_ITEM_COST:Array = [1,1,1,1,1,1,1,1,1,1];
      
      public static const STONE_SEAL_BORE_ITEM_ID:int = 16;
      
      public static const STONE_SEAL_BORE_ITEM_COLOR:Array = [0,0,1,1,2,2,3,3,4,4];
      
      public static const STONE_SEAL_SUCCINCT_GOLD_COST:Array = [157,157,390,751,826];
      
      public static const STONE_SEAL_SUCCINCT_PVE_POINT_COST:Array = [110,110,275,529,582];
      
      private var _108694132t2Lag:Label;
      
      private var _1354859035t1Title:Label;
      
      private var _1377813182t2Need2:Label;
      
      private var _core:Core = Core.getInstance();
      
      private var slot:Object = {};
      
      public var _StoneSealBoreCanvas_Image1:Image;
      
      mx_internal var _watchers:Array = [];
      
      private var _108664341t1Lag:Label;
      
      private var holeNum:int = -1;
      
      private var _3034453btn1:BasicDelayButton;
      
      private var _3034454btn2:BasicDelayButton;
      
      private var _1349184031t1Need2:Label;
      
      private var type:int = 1;
      
      private var _1377813181t2Need1:Label;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var sealIndex:int = -1;
      
      private var _1349184030t1Need1:Label;
      
      private var succinctLvl:int = -1;
      
      mx_internal var _bindings:Array = [];
      
      private var parentPanel:Object = null;
      
      private var _110371416title:BasicTitleCanvas;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":280,
               "height":250,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"title"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.left = "5";
                     this.right = "5";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":39,
                        "height":185,
                        "styleName":"RoundedGradientBorder",
                        "horizontalScrollPolicy":"off",
                        "verticalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Image,
                           "id":"_StoneSealBoreCanvas_Image1"
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"t1Title",
                           "stylesFactory":function():void
                           {
                              this.left = "15";
                              this.top = "15";
                              this.fontSize = 12;
                              this.color = 65535;
                              this.fontWeight = "bold";
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"t1Lag",
                           "stylesFactory":function():void
                           {
                              this.left = "15";
                              this.top = "35";
                              this.fontSize = 12;
                              this.color = 65535;
                              this.fontWeight = "bold";
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"t1Need1",
                           "stylesFactory":function():void
                           {
                              this.left = "75";
                              this.top = "55";
                              this.fontSize = 12;
                              this.color = 65535;
                              this.fontWeight = "bold";
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"t1Need2",
                           "stylesFactory":function():void
                           {
                              this.left = "75";
                              this.top = "75";
                              this.fontSize = 12;
                              this.color = 65535;
                              this.fontWeight = "bold";
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"t2Lag",
                           "stylesFactory":function():void
                           {
                              this.left = "15";
                              this.top = "95";
                              this.fontSize = 12;
                              this.color = 65280;
                              this.fontWeight = "bold";
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"t2Need1",
                           "stylesFactory":function():void
                           {
                              this.left = "75";
                              this.top = "115";
                              this.fontSize = 12;
                              this.color = 65280;
                              this.fontWeight = "bold";
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"t2Need2",
                           "stylesFactory":function():void
                           {
                              this.left = "75";
                              this.top = "135";
                              this.fontSize = 12;
                              this.color = 65280;
                              this.fontWeight = "bold";
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicDelayButton,
                           "id":"btn1",
                           "events":{"click":"__btn1_click"},
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                              this.bottom = "3";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"styleName":"BtnStdRed"};
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicDelayButton,
                           "id":"btn2",
                           "events":{"click":"__btn2_click"},
                           "stylesFactory":function():void
                           {
                              this.right = "3";
                              this.bottom = "3";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "visible":false,
                                 "styleName":"BtnStdRed"
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      private var equipSid:int = -1;
      
      public function StoneSealBoreCanvas()
      {
         super();
         mx_internal::_document = this;
         this.width = 280;
         this.height = 250;
         this.styleName = "StandardContent";
         this.cacheAsBitmap = false;
         this.addEventListener("creationComplete",___StoneSealBoreCanvas_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         StoneSealBoreCanvas._watcherSetupUtil = param1;
      }
      
      public function set t2Need1(param1:Label) : void
      {
         var _loc2_:Object = this._1377813181t2Need1;
         if(_loc2_ !== param1)
         {
            this._1377813181t2Need1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"t2Need1",_loc2_,param1));
         }
      }
      
      private function todoByMaterial() : void
      {
         if(type == 1)
         {
            toBore(2);
         }
         else
         {
            toSuccinct(3);
         }
      }
      
      public function showPanel(param1:Object, param2:int, param3:int, param4:int, param5:int, param6:int) : void
      {
         if(StoneSealPanel.isWatch)
         {
            return;
         }
         parentPanel = param1;
         type = param2;
         equipSid = param3;
         holeNum = param4;
         sealIndex = param5;
         succinctLvl = param6;
         initView();
         visible = true;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:StoneSealBoreCanvas = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _StoneSealBoreCanvas_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_StoneSealBoreCanvasWatcherSetupUtil");
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
      public function get t2Need1() : Label
      {
         return this._1377813181t2Need1;
      }
      
      [Bindable(event="propertyChange")]
      public function get t1Lag() : Label
      {
         return this._108664341t1Lag;
      }
      
      private function onSuccinct(param1:Object) : void
      {
         if(Boolean(parentPanel) && Boolean(param1) && Boolean(param1.flag))
         {
            parentPanel.onSuccinct(param1);
            ++succinctLvl;
            initView();
         }
      }
      
      public function __btn1_click(param1:MouseEvent) : void
      {
         todoByMaterial();
      }
      
      [Bindable(event="propertyChange")]
      public function get t2Lag() : Label
      {
         return this._108694132t2Lag;
      }
      
      [Bindable(event="propertyChange")]
      public function get t1Title() : Label
      {
         return this._1354859035t1Title;
      }
      
      [Bindable(event="propertyChange")]
      public function get t1Need1() : Label
      {
         return this._1349184030t1Need1;
      }
      
      private function init() : void
      {
      }
      
      public function set t2Need2(param1:Label) : void
      {
         var _loc2_:Object = this._1377813182t2Need2;
         if(_loc2_ !== param1)
         {
            this._1377813182t2Need2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"t2Need2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get t1Need2() : Label
      {
         return this._1349184031t1Need2;
      }
      
      public function ___StoneSealBoreCanvas_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      private function toSuccinct(param1:int) : void
      {
         if(StoneSealPanel.isWatch)
         {
            return;
         }
         if(equipSid >= StoneSealPanel.EQUIP_ID_MIN && equipSid <= StoneSealPanel.EQUIP_ID_MAX)
         {
            _core.remote.call("stoneSealSuccinct",new Responder(onSuccinct),equipSid,param1);
         }
      }
      
      public function set t1Title(param1:Label) : void
      {
         var _loc2_:Object = this._1354859035t1Title;
         if(_loc2_ !== param1)
         {
            this._1354859035t1Title = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"t1Title",_loc2_,param1));
         }
      }
      
      public function set title(param1:BasicTitleCanvas) : void
      {
         var _loc2_:Object = this._110371416title;
         if(_loc2_ !== param1)
         {
            this._110371416title = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"title",_loc2_,param1));
         }
      }
      
      public function set btn1(param1:BasicDelayButton) : void
      {
         var _loc2_:Object = this._3034453btn1;
         if(_loc2_ !== param1)
         {
            this._3034453btn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn1",_loc2_,param1));
         }
      }
      
      public function set t1Need1(param1:Label) : void
      {
         var _loc2_:Object = this._1349184030t1Need1;
         if(_loc2_ !== param1)
         {
            this._1349184030t1Need1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"t1Need1",_loc2_,param1));
         }
      }
      
      private function todoByGold() : void
      {
      }
      
      private function onBore(param1:Object) : void
      {
         if(Boolean(parentPanel) && Boolean(param1) && Boolean(param1.flag))
         {
            parentPanel.onBore(param1);
            visible = false;
         }
      }
      
      public function set t1Need2(param1:Label) : void
      {
         var _loc2_:Object = this._1349184031t1Need2;
         if(_loc2_ !== param1)
         {
            this._1349184031t1Need2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"t1Need2",_loc2_,param1));
         }
      }
      
      public function __btn2_click(param1:MouseEvent) : void
      {
         todoByGold();
      }
      
      private function _StoneSealBoreCanvas_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000382);
         },function(param1:Object):void
         {
            _StoneSealBoreCanvas_Image1.source = param1;
         },"_StoneSealBoreCanvas_Image1.source");
         result[0] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get t2Need2() : Label
      {
         return this._1377813182t2Need2;
      }
      
      public function set btn2(param1:BasicDelayButton) : void
      {
         var _loc2_:Object = this._3034454btn2;
         if(_loc2_ !== param1)
         {
            this._3034454btn2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btn2() : BasicDelayButton
      {
         return this._3034454btn2;
      }
      
      public function set t1Lag(param1:Label) : void
      {
         var _loc2_:Object = this._108664341t1Lag;
         if(_loc2_ !== param1)
         {
            this._108664341t1Lag = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"t1Lag",_loc2_,param1));
         }
      }
      
      override public function initView() : void
      {
         var _loc5_:int = 0;
         var _loc6_:Object = null;
         var _loc7_:int = 0;
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         var _loc1_:int = _core.player.stoneSealPoint;
         var _loc2_:int = 0;
         var _loc3_:String = "";
         var _loc4_:String = "";
         if(type == 1)
         {
            _loc2_ = int(STONE_SEAL_BORE_PVE_POINT_COST[holeNum]);
            _loc5_ = int(STONE_SEAL_BORE_ITEM_COST[holeNum]);
            _loc6_ = _core.getItemNumByColor(GamePredef.TBL_ITEM_TEMPLATE,STONE_SEAL_BORE_ITEM_ID,STONE_SEAL_BORE_ITEM_COLOR[holeNum]);
            _loc7_ = int(_loc6_.num);
            if(!_loc6_.slot)
            {
               _loc7_ = 0;
            }
            slot = _loc6_.slot || {};
            title.text = Language.STONE_SEAL_PANEL_U[7];
            t1Title.text = Language.STONE_SEAL_PANEL_U[8].toString().replace("{num}",holeNum);
            t1Lag.text = Language.STONE_SEAL_PANEL_U[9];
            t1Need1.text = Language.STONE_SEAL_PANEL_U[10].toString().replace("{num}",_loc2_);
            t1Need2.text = Language.STONE_SEAL_PANEL_U[11].toString().replace("{num}",_loc5_).replace("{level}",Language.STONE_SEAL_PANEL_U[34 + int(holeNum / 2)]);
            t2Lag.text = Language.STONE_SEAL_PANEL_U[12];
            _loc3_ = Language.STONE_SEAL_PANEL_U[10].toString().replace("{num}",_loc1_);
            if(_loc1_ < _loc2_)
            {
               t2Need1.htmlText = "<font color=\'#ff0000\'>" + _loc3_ + "</font>";
            }
            else
            {
               t2Need1.htmlText = "<font color=\'#00ff00\'>" + _loc3_ + "</font>";
            }
            _loc4_ = Language.STONE_SEAL_PANEL_U[11].toString().replace("{num}",_loc7_).replace("{level}",Language.STONE_SEAL_PANEL_U[34 + int(holeNum / 2)]);
            if(_loc7_ < _loc5_)
            {
               t2Need2.htmlText = "<font color=\'#ff0000\'>" + _loc4_ + "</font>";
            }
            else
            {
               t2Need2.htmlText = "<font color=\'#00ff00\'>" + _loc4_ + "</font>";
            }
            btn1.label = Language.STONE_SEAL_PANEL_U[7];
            btn2.label = Language.STONE_SEAL_PANEL_U[15];
         }
         else
         {
            _loc2_ = int(STONE_SEAL_SUCCINCT_PVE_POINT_COST[succinctLvl]);
            title.text = Language.STONE_SEAL_PANEL_U[6];
            t1Title.text = Language.STONE_SEAL_PANEL_U[13].toString().replace("{num}",succinctLvl);
            t1Lag.text = Language.STONE_SEAL_PANEL_U[14];
            t1Need1.text = Language.STONE_SEAL_PANEL_U[10].toString().replace("{num}",_loc2_);
            t1Need2.text = "";
            t2Lag.text = Language.STONE_SEAL_PANEL_U[12];
            _loc3_ = Language.STONE_SEAL_PANEL_U[10].toString().replace("{num}",_loc1_);
            if(_loc1_ < _loc2_)
            {
               t2Need1.htmlText = "<font color=\'#ff0000\'>" + _loc3_ + "</font>";
            }
            else
            {
               t2Need1.htmlText = "<font color=\'#00ff00\'>" + _loc3_ + "</font>";
            }
            t2Need2.text = "";
            btn1.label = Language.STONE_SEAL_PANEL_U[16];
            btn2.label = Language.STONE_SEAL_PANEL_U[17];
         }
      }
      
      private function _StoneSealBoreCanvas_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = ResManager.getIconUrl(4130220000382);
      }
      
      private function toBore(param1:int) : void
      {
         if(StoneSealPanel.isWatch)
         {
            return;
         }
         if(equipSid >= StoneSealPanel.EQUIP_ID_MIN && equipSid <= StoneSealPanel.EQUIP_ID_MAX)
         {
            _core.remote.call("stoneSealBore",new Responder(onBore),equipSid,sealIndex,param1,slot.id);
         }
      }
      
      private function getAnswerByMoney(param1:CloseEvent) : void
      {
         if(param1.detail == Alert.YES)
         {
            if(type == 1)
            {
               toBore(1);
            }
            else
            {
               toSuccinct(1);
            }
         }
      }
      
      public function set t2Lag(param1:Label) : void
      {
         var _loc2_:Object = this._108694132t2Lag;
         if(_loc2_ !== param1)
         {
            this._108694132t2Lag = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"t2Lag",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get title() : BasicTitleCanvas
      {
         return this._110371416title;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn1() : BasicDelayButton
      {
         return this._3034453btn1;
      }
   }
}

