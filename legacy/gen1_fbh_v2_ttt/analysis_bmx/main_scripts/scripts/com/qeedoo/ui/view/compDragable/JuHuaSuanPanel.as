package com.qeedoo.ui.view.compDragable
{
   import com.adobe.crypto.MD5;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.utils.TimeUtil;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.ItemSlot;
   import com.qeedoo.ui.view.comp.JuHuaSuanOneCanvas;
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
   import mx.containers.VBox;
   import mx.controls.Alert;
   import mx.controls.Button;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.core.IUITextField;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.managers.PopUpManager;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class JuHuaSuanPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _177693201infoLab0:Label;
      
      private var _177693202infoLab1:Label;
      
      private var _3756vb:VBox;
      
      private var JuHuaSuanOneCanvasObj:Object = {};
      
      public var _JuHuaSuanPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var juhuasuanConf:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      private var _97884btn:Button;
      
      private var juhuasuanData:Object = {};
      
      private var _isRenRen:Boolean = false;
      
      public var _JuHuaSuanPanel_Image2:Image;
      
      public var _JuHuaSuanPanel_Image3:Image;
      
      public var _JuHuaSuanPanel_Image1:Image;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _alert:Alert;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _3242771item:ItemSlot;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":672,
               "height":445,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_JuHuaSuanPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"RoundedGradientBorder",
                        "label":"Hornor",
                        "y":34,
                        "width":662,
                        "height":406,
                        "x":5,
                        "horizontalScrollPolicy":"off",
                        "verticalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Image,
                           "id":"_JuHuaSuanPanel_Image1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":0,
                                 "y":0,
                                 "percentWidth":100,
                                 "percentHeight":100
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "stylesFactory":function():void
                           {
                              this.backgroundAlpha = 0;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":2,
                                 "y":5,
                                 "width":245,
                                 "height":396,
                                 "horizontalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":VBox,
                                    "id":"vb",
                                    "stylesFactory":function():void
                                    {
                                       this.backgroundAlpha = 0;
                                       this.top = "5";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "percentWidth":100,
                                          "percentHeight":100,
                                          "horizontalScrollPolicy":"off"
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"_JuHuaSuanPanel_Image2",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":314.5,
                                 "y":330,
                                 "width":54,
                                 "height":54
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"_JuHuaSuanPanel_Image3",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":322,
                                 "y":336,
                                 "width":38,
                                 "height":38
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlot,
                           "id":"item",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":323.5,
                                 "y":338,
                                 "movable":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"btn",
                           "events":{"click":"__btn_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"juhuasuanBtn",
                                 "x":434.5,
                                 "y":333,
                                 "width":188,
                                 "height":49
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"infoLab0",
                           "stylesFactory":function():void
                           {
                              this.color = 8190976;
                              this.fontSize = 12;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":454.5,
                                 "y":271,
                                 "width":266.5,
                                 "height":24
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"infoLab1",
                           "stylesFactory":function():void
                           {
                              this.color = 8190976;
                              this.fontSize = 12;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":454.5,
                                 "y":251,
                                 "width":266.5,
                                 "height":24
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      private var _core:Core = Core.getInstance();
      
      public function JuHuaSuanPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 672;
         this.height = 445;
         this.styleName = "StandardContent";
         this.cacheAsBitmap = true;
         this.x = 103;
         this.y = 102;
         this.addEventListener("creationComplete",___JuHuaSuanPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         JuHuaSuanPanel._watcherSetupUtil = param1;
      }
      
      public function onbuyJuHuaSuanOneClient(param1:Number, param2:Number, param3:String) : void
      {
         if(!juhuasuanData.item1[param1])
         {
            juhuasuanData.item1[param1] = {};
         }
         juhuasuanData.item1[param1]["bt"] = param2;
         juhuasuanData.item1[param1]["ht"] = param3;
         if(JuHuaSuanOneCanvasObj[param1])
         {
            JuHuaSuanOneCanvasObj[param1].setLeftDay2(param2,param3);
         }
         if(checkIsAllBuy())
         {
            btn.enabled = false;
         }
      }
      
      public function __btn_click(param1:MouseEvent) : void
      {
         clickBtn();
      }
      
      public function showPanel() : *
      {
         initView();
         visible = true;
      }
      
      private function _JuHuaSuanPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.JUHUASUAN_PANEL[0];
         _loc1_ = ResManager.getIconUrl(4130220000501);
         _loc1_ = ResManager.getResUrl(2080130102018);
         _loc1_ = ResManager.getIconUrl(4130220000502);
      }
      
      public function ___JuHuaSuanPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         initView();
      }
      
      [Bindable(event="propertyChange")]
      public function get infoLab1() : Label
      {
         return this._177693202infoLab1;
      }
      
      [Bindable(event="propertyChange")]
      public function get item() : ItemSlot
      {
         return this._3242771item;
      }
      
      private function checkIsAllBuy() : Boolean
      {
         var _loc2_:* = undefined;
         var _loc1_:Object = juhuasuanConf.iInfo;
         for(_loc2_ in _loc1_)
         {
            if(Boolean(_loc1_[_loc2_]) && (!_loc1_[_loc2_].isAll || ToolKit.isEqual(_loc1_[_loc2_].isAll,0)))
            {
               if(!juhuasuanData.item1[_loc1_[_loc2_].iid])
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      private function _JuHuaSuanPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.JUHUASUAN_PANEL[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _JuHuaSuanPanel_BasicTitleCanvas1.text = param1;
         },"_JuHuaSuanPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000501);
         },function(param1:Object):void
         {
            _JuHuaSuanPanel_Image1.source = param1;
         },"_JuHuaSuanPanel_Image1.source");
         result[1] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getResUrl(2080130102018);
         },function(param1:Object):void
         {
            _JuHuaSuanPanel_Image2.source = param1;
         },"_JuHuaSuanPanel_Image2.source");
         result[2] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000502);
         },function(param1:Object):void
         {
            _JuHuaSuanPanel_Image3.source = param1;
         },"_JuHuaSuanPanel_Image3.source");
         result[3] = binding;
         return result;
      }
      
      public function set infoLab1(param1:Label) : void
      {
         var _loc2_:Object = this._177693202infoLab1;
         if(_loc2_ !== param1)
         {
            this._177693202infoLab1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoLab1",_loc2_,param1));
         }
      }
      
      public function set item(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._3242771item;
         if(_loc2_ !== param1)
         {
            this._3242771item = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:JuHuaSuanPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _JuHuaSuanPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_JuHuaSuanPanelWatcherSetupUtil");
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
      
      public function setGoldLock(param1:Boolean) : void
      {
         var _loc2_:BagPanel = BagPanel(_core.view.getUI(ViewManager.PANEL_BAG));
         var _loc3_:Boolean = _loc2_.goldLockFlag;
         if(_loc3_ != param1 && Boolean(_loc2_))
         {
            _loc2_.goldLockFlag = param1;
         }
      }
      
      private function clickBtn() : void
      {
         var totalPt:Number;
         var str:String;
         var tf:IUITextField;
         var obj:Object;
         var i:* = undefined;
         var handler:Function = null;
         var gfunc:Function = null;
         var bagPanel:BagPanel = BagPanel(_core.view.getUI(ViewManager.PANEL_BAG));
         var goldLockFlag:Boolean = bagPanel.goldLockFlag;
         if(goldLockFlag || !bagPanel)
         {
            _core.sysMsg(Language.JUHUASUAN_PANEL[15]);
            gfunc = function(param1:String):void
            {
               _core.remote.call("unlockMoney",new Responder(doUnlockMoneyGold),MD5.hash(param1));
            };
            _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.ACTIVEPANEL_S[38],gfunc);
            return;
         }
         obj = getLeftJuHuaSuan();
         if(!obj)
         {
            return;
         }
         totalPt = 0;
         for(i in obj)
         {
            totalPt = ToolKit.add(totalPt,obj[i]);
         }
         handler = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("buyJuHuaSuanAll",null);
            }
         };
         if(_alert)
         {
            PopUpManager.removePopUp(_alert);
            _alert = null;
         }
         str = Language.JUHUASUAN_PANEL[8].replace("{point}",totalPt);
         if(_isRenRen)
         {
            str = Language.JUHUASUAN_PANEL[8].replace("{point}",Math.floor(totalPt / 10)).replace(Language.JUHUASUAN_PANEL[13],Language.JUHUASUAN_PANEL[12]);
         }
         _alert = Alert.show(str,null,Alert.YES | Alert.NO,null,handler);
         tf = _alert.mx_internal::alertForm.mx_internal::textField;
         tf.htmlText = str;
         tf.filters = GamePredef.FILTER_TEXT1;
      }
      
      [Bindable(event="propertyChange")]
      public function get vb() : VBox
      {
         return this._3756vb;
      }
      
      [Bindable(event="propertyChange")]
      public function get infoLab0() : Label
      {
         return this._177693201infoLab0;
      }
      
      public function set btn(param1:Button) : void
      {
         var _loc2_:Object = this._97884btn;
         if(_loc2_ !== param1)
         {
            this._97884btn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn",_loc2_,param1));
         }
      }
      
      public function set infoLab0(param1:Label) : void
      {
         var _loc2_:Object = this._177693201infoLab0;
         if(_loc2_ !== param1)
         {
            this._177693201infoLab0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoLab0",_loc2_,param1));
         }
      }
      
      private function onInitJuHuaSuanData(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:* = undefined;
         var _loc4_:JuHuaSuanOneCanvas = null;
         var _loc5_:Number = NaN;
         var _loc6_:String = null;
         if(param1)
         {
            juhuasuanConf = param1.jhsConf;
            juhuasuanData = param1.jhsData;
            if(Boolean(param1.isRR) && ToolKit.isEqual(param1.isRR,2))
            {
               _isRenRen = true;
            }
            else
            {
               _isRenRen = false;
            }
            infoLab0.text = Language.JUHUASUAN_PANEL[11].replace("{time}",TimeUtil.dateTimeToString(new Date(juhuasuanConf.close)));
            infoLab1.text = Language.JUHUASUAN_PANEL[10].replace("{time}",TimeUtil.dateTimeToString(new Date(juhuasuanConf.end)));
            JuHuaSuanOneCanvasObj = {};
            _loc2_ = juhuasuanConf.iInfo;
            vb.removeAllChildren();
            for(_loc3_ in _loc2_)
            {
               if(Boolean(_loc2_[_loc3_]) && (!_loc2_[_loc3_].isAll || ToolKit.isEqual(_loc2_[_loc3_].isAll,0)))
               {
                  _loc4_ = new JuHuaSuanOneCanvas();
                  _loc4_.isRR = _isRenRen;
                  _loc4_.Point = _loc2_[_loc3_].pt;
                  _loc4_.ItemData = _loc2_[_loc3_].iid;
                  _loc4_.Lab = _loc2_[_loc3_].info;
                  param1 = juhuasuanData.item1[_loc2_[_loc3_].iid];
                  if(param1)
                  {
                     _loc5_ = param1["bt"] ? Number(param1["bt"]) : 0;
                     _loc6_ = param1["ht"] ? param1["ht"] : "0";
                     _loc4_.setLeftDay(_loc2_[_loc3_].day,_loc5_,_loc6_);
                  }
                  else
                  {
                     _loc4_.setLeftDay(_loc2_[_loc3_].day,0,"0");
                  }
                  JuHuaSuanOneCanvasObj[_loc2_[_loc3_].iid] = _loc4_;
                  vb.addChild(_loc4_);
               }
               else if(Boolean(_loc2_[_loc3_]) && ToolKit.isEqual(_loc2_[_loc3_].isAll,1))
               {
                  this["item"].type = GamePredef.TBL_ITEM_TEMPLATE;
                  this["item"].giid = _loc2_[_loc3_].iid;
                  this["item"].slotData = GameData.d[GamePredef.TBL_ITEM_TEMPLATE][_loc2_[_loc3_].iid];
               }
            }
            if(checkIsAllBuy())
            {
               btn.enabled = false;
            }
            else
            {
               btn.enabled = true;
            }
         }
      }
      
      override public function initView() : void
      {
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         _core.remote.call("initJuHuaSuanData",new Responder(onInitJuHuaSuanData));
      }
      
      private function doUnlockMoneyGold(param1:Boolean) : void
      {
         if(param1)
         {
            setGoldLock(false);
         }
      }
      
      public function getLeftJuHuaSuan() : Object
      {
         var _loc3_:* = undefined;
         var _loc1_:Object = {};
         var _loc2_:Boolean = false;
         for(_loc3_ in juhuasuanConf.iInfo)
         {
            if((ToolKit.isEqual(juhuasuanConf.iInfo[_loc3_].isAll,0) || !juhuasuanConf.iInfo[_loc3_].isAll) && !juhuasuanData.item1[juhuasuanConf.iInfo[_loc3_].iid])
            {
               _loc1_[juhuasuanConf.iInfo[_loc3_].iid] = juhuasuanConf.iInfo[_loc3_].pt;
               _loc2_ = true;
            }
         }
         if(_loc2_)
         {
            return _loc1_;
         }
         return null;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn() : Button
      {
         return this._97884btn;
      }
      
      public function set vb(param1:VBox) : void
      {
         var _loc2_:Object = this._3756vb;
         if(_loc2_ !== param1)
         {
            this._3756vb = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vb",_loc2_,param1));
         }
      }
      
      public function onbuyJuHuaSuanAllClient(param1:Object) : void
      {
         var _loc2_:* = undefined;
         for(_loc2_ in param1)
         {
            onbuyJuHuaSuanOneClient(_loc2_,param1[_loc2_]["bt"],param1[_loc2_]["ht"]);
         }
         btn.enabled = false;
      }
   }
}

