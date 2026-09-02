package com.qeedoo.ui.view.comp
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
   import com.qeedoo.ui.view.compDragable.BagPanel;
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
   import mx.controls.Alert;
   import mx.controls.Button;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class JuHuaSuanOneCanvas extends SimpleCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _isHad:Number;
      
      private var _iid:Number;
      
      private var _106966249ptLab:Label;
      
      mx_internal var _watchers:Array;
      
      private var _55417365leftDay:Label;
      
      private var _pt:Number;
      
      private var _97884btn:Button;
      
      private var _isRenRen:Boolean;
      
      private var _ht:String;
      
      public var _JuHuaSuanOneCanvas_Image1:Image;
      
      private var _1945394687infoLab:Label;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _lab:String;
      
      mx_internal var _bindingsByDestination:Object;
      
      private var _day:Number;
      
      private var _alert:Alert;
      
      private var _3242771item:ItemSlot;
      
      mx_internal var _bindings:Array;
      
      private var _bt:Number;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var _core:Core;
      
      public function JuHuaSuanOneCanvas()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":SimpleCanvas,
            "propertiesFactory":function():Object
            {
               return {
                  "width":220,
                  "height":95,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Image,
                     "id":"_JuHuaSuanOneCanvas_Image1",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":25.5,
                           "y":23,
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
                           "x":27.5,
                           "y":25,
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
                           "styleName":"HorizontalTab",
                           "x":167,
                           "y":40,
                           "width":43,
                           "height":21.75
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Label,
                     "id":"infoLab",
                     "stylesFactory":function():void
                     {
                        this.color = 16777215;
                        this.fontSize = 12;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":69.5,
                           "y":18.75,
                           "width":140.5,
                           "height":22
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Label,
                     "id":"ptLab",
                     "stylesFactory":function():void
                     {
                        this.color = 16777215;
                        this.fontSize = 12;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":69.5,
                           "y":41,
                           "width":89.5,
                           "height":22,
                           "text":"20点"
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Label,
                     "id":"leftDay",
                     "stylesFactory":function():void
                     {
                        this.color = 16777215;
                        this.fontSize = 12;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":140.5,
                           "y":67,
                           "width":69.5,
                           "height":22,
                           "text":"剩余:30天"
                        };
                     }
                  })]
               };
            }
         });
         _core = Core.getInstance();
         mx_internal::_bindings = [];
         mx_internal::_watchers = [];
         mx_internal::_bindingsByDestination = {};
         mx_internal::_bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         if(!this.styleDeclaration)
         {
            this.styleDeclaration = new CSSStyleDeclaration();
         }
         this.styleDeclaration.defaultFactory = function():void
         {
            this.backgroundAlpha = 0.3;
         };
         this.width = 220;
         this.height = 95;
         this.styleName = "RoundedGradientBorder";
         this.addEventListener("creationComplete",___JuHuaSuanOneCanvas_SimpleCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         JuHuaSuanOneCanvas._watcherSetupUtil = param1;
      }
      
      public function __btn_click(param1:MouseEvent) : void
      {
         clickBtn();
      }
      
      public function set infoLab(param1:Label) : void
      {
         var _loc2_:Object = this._1945394687infoLab;
         if(_loc2_ !== param1)
         {
            this._1945394687infoLab = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoLab",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:JuHuaSuanOneCanvas = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _JuHuaSuanOneCanvas_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_JuHuaSuanOneCanvasWatcherSetupUtil");
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
      
      public function ___JuHuaSuanOneCanvas_SimpleCanvas1_creationComplete(param1:FlexEvent) : void
      {
         initData();
      }
      
      [Bindable(event="propertyChange")]
      public function get leftDay() : Label
      {
         return this._55417365leftDay;
      }
      
      [Bindable(event="propertyChange")]
      public function get item() : ItemSlot
      {
         return this._3242771item;
      }
      
      public function set leftDay(param1:Label) : void
      {
         var _loc2_:Object = this._55417365leftDay;
         if(_loc2_ !== param1)
         {
            this._55417365leftDay = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"leftDay",_loc2_,param1));
         }
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
         var bagPanel:BagPanel = null;
         var goldLockFlag:Boolean = false;
         var str:String = null;
         var view:Object = null;
         var buyPanel:* = undefined;
         var gfunc:Function = null;
         var obj:Object = null;
         var totalPt:Number = NaN;
         var i:* = undefined;
         if(!_isHad)
         {
            return;
         }
         if(_isHad == 1)
         {
            bagPanel = BagPanel(_core.view.getUI(ViewManager.PANEL_BAG));
            goldLockFlag = bagPanel.goldLockFlag;
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
            str = "";
            if(_isRenRen)
            {
               str += Language.JUHUASUAN_PANEL[6].replace("{point}",Math.floor(_pt / 10)).replace("{name}",_lab).replace("{day}",_day).replace(Language.JUHUASUAN_PANEL[13],Language.JUHUASUAN_PANEL[12]);
            }
            else
            {
               str += Language.JUHUASUAN_PANEL[6].replace("{point}",_pt).replace("{name}",_lab).replace("{day}",_day);
            }
            view = _core.view.getUI(ViewManager.PANEL_JUHUASUAN);
            if(view)
            {
               obj = view.getLeftJuHuaSuan();
               if(obj)
               {
                  totalPt = 0;
                  for(i in obj)
                  {
                     totalPt = ToolKit.add(totalPt,obj[i]);
                  }
                  if(!totalPt || !ToolKit.isEqual(totalPt,0))
                  {
                     if(ToolKit.isSmallOrEqual(totalPt,0))
                     {
                        str += Language.JUHUASUAN_PANEL[14];
                     }
                     else if(_isRenRen)
                     {
                        str += Language.JUHUASUAN_PANEL[9].replace("{point}",Math.floor(totalPt / 10)).replace(Language.JUHUASUAN_PANEL[13],Language.JUHUASUAN_PANEL[12]);
                     }
                     else
                     {
                        str += Language.JUHUASUAN_PANEL[9].replace("{point}",totalPt);
                     }
                  }
               }
            }
            buyPanel = _core.view.getUI(ViewManager.PANEL_JUHUASUAN_ALERT);
            if(buyPanel)
            {
               buyPanel.iid = _iid;
               buyPanel.str = str;
               buyPanel.showPanel();
            }
         }
         else if(_isHad == 2)
         {
            _core.remote.call("getJuHuaSuanOne",null,_iid);
         }
      }
      
      private function getServerTime() : Number
      {
         return new Date().getTime() + _core.timeLag + TimeUtil.timeOSOffSet;
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
      
      public function set item(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._3242771item;
         if(_loc2_ !== param1)
         {
            this._3242771item = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item",_loc2_,param1));
         }
      }
      
      public function setLeftDay2(param1:Number, param2:String) : void
      {
         setLeftDay(_day,param1,param2);
      }
      
      private function doUnlockMoneyGold(param1:Boolean) : void
      {
         if(param1)
         {
            setGoldLock(false);
         }
      }
      
      public function setLeftDay(param1:Number, param2:Number, param3:String) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:* = undefined;
         var _loc6_:String = null;
         _day = param1;
         _bt = param2;
         _ht = param3;
         if(initialized)
         {
            btn.enabled = true;
            if(!param2)
            {
               btn.label = Language.JUHUASUAN_PANEL[3];
               leftDay.text = Language.JUHUASUAN_PANEL[2].replace("{day}",param1);
               _isHad = 1;
               return;
            }
            _loc4_ = Math.floor(ToolKit.minus(getServerTime(),param2) / (24 * 60 * 60000));
            _loc5_ = ToolKit.minus(param1,_loc4_) >= 0 ? ToolKit.minus(param1,_loc4_) : 0;
            leftDay.text = Language.JUHUASUAN_PANEL[2].replace("{day}",_loc5_);
            _isHad = 2;
            btn.label = Language.JUHUASUAN_PANEL[4];
            _loc6_ = TimeUtil.getTimeStr4("day",getServerTime());
            if(Boolean(param3) && param3 == _loc6_)
            {
               btn.label = Language.JUHUASUAN_PANEL[5];
               _isHad = 3;
               btn.enabled = false;
            }
         }
      }
      
      public function set isRR(param1:Boolean) : void
      {
         _isRenRen = param1;
      }
      
      private function initData() : void
      {
         if(_isRenRen)
         {
            this.isRR = _isRenRen;
         }
         if(_pt)
         {
            this.Point = _pt;
         }
         if(_lab)
         {
            this.Lab = _lab;
         }
         if(_iid)
         {
            this.ItemData = _iid;
         }
         if(_day)
         {
            this.setLeftDay(_day,_bt,_ht);
         }
         this.x = 8;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn() : Button
      {
         return this._97884btn;
      }
      
      public function set Lab(param1:String) : void
      {
         _lab = param1;
         if(initialized)
         {
            infoLab.htmlText = param1;
         }
      }
      
      public function set ptLab(param1:Label) : void
      {
         var _loc2_:Object = this._106966249ptLab;
         if(_loc2_ !== param1)
         {
            this._106966249ptLab = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ptLab",_loc2_,param1));
         }
      }
      
      public function set Point(param1:Number) : void
      {
         _pt = param1;
         if(initialized)
         {
            if(_isRenRen)
            {
               ptLab.text = Language.JUHUASUAN_PANEL[1].replace("{num}",Math.floor(_pt / 10)).replace(Language.JUHUASUAN_PANEL[13],Language.JUHUASUAN_PANEL[12]);
            }
            else
            {
               ptLab.text = Language.JUHUASUAN_PANEL[1].replace("{num}",_pt);
            }
         }
      }
      
      public function get Point() : Number
      {
         return _pt;
      }
      
      private function _JuHuaSuanOneCanvas_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = ResManager.getIconUrl(4130220000502);
      }
      
      private function _JuHuaSuanOneCanvas_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000502);
         },function(param1:Object):void
         {
            _JuHuaSuanOneCanvas_Image1.source = param1;
         },"_JuHuaSuanOneCanvas_Image1.source");
         result[0] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get ptLab() : Label
      {
         return this._106966249ptLab;
      }
      
      public function set ItemData(param1:Number) : void
      {
         _iid = param1;
         if(initialized)
         {
            item.type = GamePredef.TBL_ITEM_TEMPLATE;
            item.giid = param1;
            item.slotData = GameData.d[GamePredef.TBL_ITEM_TEMPLATE][param1];
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get infoLab() : Label
      {
         return this._1945394687infoLab;
      }
   }
}

