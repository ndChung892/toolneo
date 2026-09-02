package com.qeedoo.ui.view.compFore
{
   import com.adobe.crypto.MD5;
   import com.qeedoo.game.config.Debug;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.rpc.RemoteObj;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.compMain.WaitingPanel;
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
   import mx.containers.VBox;
   import mx.controls.Alert;
   import mx.controls.Button;
   import mx.controls.Label;
   import mx.core.Repeater;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class LineSelectCanvas extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private static const SERVER_STATUS_ON:int = 10;
      
      private static const SERVER_STATUS_OFF:int = 20;
      
      private static const SERVER_STATUS_FULL:int = 30;
      
      private static const SERVER_STATUS_UNNONE:int = 40;
      
      private var _3756vb:VBox;
      
      mx_internal var _watchers:Array = [];
      
      private var _397287852lineListAC:ArrayCollection = new ArrayCollection();
      
      private var _1917950559logInfoText:Label;
      
      private var _3646rp:Repeater;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _LineSelectCanvas_LineButton1:Array;
      
      mx_internal var _bindings:Array = [];
      
      private var _1780505860_LineSelectCanvas_VBox1:VBox;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":220,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":VBox,
                  "id":"vb",
                  "stylesFactory":function():void
                  {
                     this.left = "15";
                     this.right = "15";
                     this.verticalGap = 8;
                     this.horizontalAlign = "center";
                     this.paddingTop = 20;
                     this.paddingBottom = 20;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"childDescriptors":[new UIComponentDescriptor({
                        "type":Repeater,
                        "id":"rp",
                        "propertiesFactory":function():Object
                        {
                           return {"childDescriptors":[new UIComponentDescriptor({
                              "type":LineButton,
                              "id":"_LineSelectCanvas_LineButton1",
                              "events":{"click":"___LineSelectCanvas_LineButton1_click"},
                              "stylesFactory":function():void
                              {
                                 this.left = "0";
                                 this.right = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {"width":175};
                              }
                           })]};
                        }
                     })]};
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"logInfoText",
                  "stylesFactory":function():void
                  {
                     this.left = "15";
                     this.right = "15";
                     this.fontWeight = "bold";
                     this.textAlign = "center";
                     this.fontSize = 12;
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":19,
                        "selectable":false,
                        "height":34
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "events":{"click":"___LineSelectCanvas_Button1_click"},
                  "stylesFactory":function():void
                  {
                     this.right = "4";
                     this.top = "17";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"styleName":"BtnPanelClose"};
                  }
               })]
            };
         }
      });
      
      private var _core:Core = Core.getInstance();
      
      public function LineSelectCanvas()
      {
         super();
         mx_internal::_document = this;
         this.styleName = "CanvasChooseChannel";
         this.width = 220;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         LineSelectCanvas._watcherSetupUtil = param1;
      }
      
      public function dnsResolve(param1:String) : String
      {
         var _loc9_:String = null;
         var _loc12_:XML = null;
         var _loc13_:XMLList = null;
         var _loc14_:XML = null;
         if(GamePredef.CONNECT_BY_DOMAIN == GamePredef.CONNECT_METHOD)
         {
            return null;
         }
         var _loc2_:String = null;
         if(param1 == null)
         {
            return null;
         }
         var _loc3_:String = param1.substr(0,7);
         if(_loc3_ != "rtmp://")
         {
            return null;
         }
         _loc2_ = param1.substr(7);
         var _loc4_:int = _loc2_.indexOf(":");
         var _loc5_:String = _loc2_.substr(0,_loc4_);
         var _loc6_:String = _loc2_.substr(_loc4_);
         var _loc7_:XMLList = GamePredef.dnsConfig.elements();
         var _loc8_:String = "";
         _loc9_ = "";
         var _loc10_:int = 0;
         var _loc11_:Array = new Array();
         for each(_loc12_ in _loc7_)
         {
            _loc8_ = _loc12_.@domain;
            if(_loc5_ == _loc8_)
            {
               while(_loc11_.length != 0)
               {
                  _loc11_.pop();
               }
               _loc13_ = _loc12_.elements();
               for each(_loc14_ in _loc13_)
               {
                  _loc9_ = _loc14_.@sp;
                  _loc11_[_loc9_] = _loc14_.text().toString();
                  _loc10_++;
               }
               break;
            }
         }
         if(_loc10_ == 0)
         {
            return null;
         }
         _loc9_ = null;
         switch(GamePredef.CONNECT_METHOD)
         {
            case GamePredef.CONNECT_BY_DOMAIN:
               break;
            case GamePredef.CONNECT_BY_CNC:
               _loc9_ = GamePredef.SP_CNC;
               break;
            case GamePredef.CONNECT_BY_CH_TELCOM:
               _loc9_ = GamePredef.SP_TEL;
         }
         if(_loc11_[_loc9_] != null)
         {
            return _loc3_ + _loc11_[_loc9_] + _loc6_;
         }
         return null;
      }
      
      private function connect2(param1:LineButton) : void
      {
         var _loc2_:WaitingPanel = null;
         var _loc3_:Object = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         if(_core.remote.nc.connected)
         {
            _core.remote.close();
            _loc2_ = WaitingPanel(_core.view.getUI(ViewManager.POPU_WAIT));
            _loc2_.showText(Language.LINESELECTCANVAS_S[3]);
            _loc2_.showTime(15);
            setTimeout(changeLineLater,15000,param1);
            _core.view.getUI(ViewManager.MAIN_AWARD_WARN).reset();
            _core.view.getUI(ViewManager.PANEL_AWARD).reset();
            _core.view.getUI(ViewManager.MAIN_TEMP_BAG_WARN).reset();
            _loc3_ = _core.view.getUI(ViewManager.PANEL_TRIPLE_TURN);
            _loc3_ && _loc3_.tripleHideUI(false);
         }
         else
         {
            _loc4_ = param1.lineInfo.url;
            _loc5_ = dnsResolve(_loc4_);
            if(_loc5_ != null)
            {
               _loc4_ = _loc5_;
            }
            if(GamePredef.SERVER_ISACTING)
            {
               _loc4_ = _loc4_.replace("rtmp","rtmpte");
               if(Boolean(GamePredef.SERVER_ADD_PROXY) && GamePredef.SERVER_USE_PROXYSERVER)
               {
                  _loc4_ = GamePredef.SERVER_PROTOCAL_LOGIC2 + GamePredef.SERVER_ADD_PROXY + "/?" + _loc4_;
               }
            }
            else
            {
               _loc4_ = _loc4_.replace("rtmp","rtmpe");
               if(Boolean(GamePredef.SERVER_ADD_PROXY) && GamePredef.SERVER_USE_PROXYSERVER)
               {
                  _loc4_ = GamePredef.SERVER_PROTOCAL_LOGIC + GamePredef.SERVER_ADD_PROXY + "/?" + _loc4_;
               }
            }
            _core.remote.connect(_loc4_,["L",_core.user,_core.pass,_core.time,_core.by_session,param1.lineInfo.id]);
            _core.view.show(ViewManager.POPU_WAIT);
         }
         _core.global.close();
         visible = false;
         _core.lineInfo = param1.lineInfo;
      }
      
      [Bindable(event="propertyChange")]
      public function get _LineSelectCanvas_VBox1() : VBox
      {
         return this._1780505860_LineSelectCanvas_VBox1;
      }
      
      public function set _LineSelectCanvas_VBox1(param1:VBox) : void
      {
         var _loc2_:Object = this._1780505860_LineSelectCanvas_VBox1;
         if(_loc2_ !== param1)
         {
            this._1780505860_LineSelectCanvas_VBox1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_LineSelectCanvas_VBox1",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:LineSelectCanvas = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _LineSelectCanvas_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compFore_LineSelectCanvasWatcherSetupUtil");
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
      
      private function changeLineLater(param1:LineButton) : void
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         _core.view.hide(ViewManager.POPU_WAIT);
         if(_core.remote.nc.connected && _core.remote.nc.uri == param1.lineInfo.url)
         {
            _core.remote.changeLine(param1.lineInfo.id);
         }
         else if(_core.cid > 0)
         {
            _core.remote.showAlert = false;
            _core.resetLine();
            _loc2_ = param1.lineInfo.url;
            _loc3_ = dnsResolve(_loc2_);
            if(_loc3_ != null)
            {
               _loc2_ = _loc3_;
            }
            if(GamePredef.SERVER_ISACTING)
            {
               _loc2_ = _loc2_.replace("rtmp","rtmpte");
            }
            else
            {
               _loc2_ = _loc2_.replace("rtmp","rtmpe");
            }
            _core.remote.connect(_loc2_,["C",_core.user,_core.pass,_core.time,_core.by_session,param1.lineInfo.id,_core.cid]);
            _core.remote.showAlert = true;
         }
         else
         {
            _core.returnToCharList();
            _core.remote.connect(param1.lineInfo.url,["L",_core.user,_core.pass,_core.time,_core.by_session,param1.lineInfo.id]);
            _core.view.show(ViewManager.POPU_WAIT);
         }
      }
      
      private function getBtnStyle(param1:Object) : String
      {
         var _loc2_:String = null;
         var _loc3_:int = int(param1.clients);
         if(param1.status == SERVER_STATUS_OFF)
         {
            return "ChannelOrange";
         }
         if(_loc3_ <= param1.max * 0.2)
         {
            return "ChannelBlue";
         }
         if(_loc3_ > param1.max * 0.2 && _loc3_ <= param1.max * 0.5)
         {
            return "ChannelGreen";
         }
         if(_loc3_ > param1.max * 0.5)
         {
            return "ChannelOrange";
         }
         return "ChannelOrange";
      }
      
      public function set lineListAC(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._397287852lineListAC;
         if(_loc2_ !== param1)
         {
            this._397287852lineListAC = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lineListAC",_loc2_,param1));
         }
      }
      
      private function onLineList(param1:Array) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:LineButton = null;
         var _loc2_:int = 0;
         for(_loc3_ in param1)
         {
            if(param1[_loc3_].status == SERVER_STATUS_OFF)
            {
               _loc2_++;
            }
         }
         if(_loc2_ >= 16)
         {
            visible = false;
            Alert.show(Language.LINESELECTCANVAS_S[0]);
         }
         else
         {
            _core.view.hide(ViewManager.POPU_WAIT);
            lineListAC.source = param1;
            _core._lineList.source = param1;
            callLater(setCurrentLine);
         }
         if(Core.getInstance().tg_User)
         {
            _loc4_ = param1[getMiniLine(param1)];
            if(!_loc4_)
            {
               _loc4_ = param1[0];
            }
            _loc5_ = new LineButton();
            _loc5_.lineInfo = _loc4_;
            connect2(_loc5_);
            Core.getInstance().tg_User = false;
         }
      }
      
      private function getBtnEnabled(param1:Object) : Boolean
      {
         var _loc3_:String = null;
         var _loc2_:String = rp.currentItem.name;
         var _loc4_:int = int(param1.clients);
         if(param1.status == SERVER_STATUS_OFF)
         {
            return false;
         }
         return true;
      }
      
      public function ___LineSelectCanvas_LineButton1_click(param1:MouseEvent) : void
      {
         connect(param1);
      }
      
      public function set logInfoText(param1:Label) : void
      {
         var _loc2_:Object = this._1917950559logInfoText;
         if(_loc2_ !== param1)
         {
            this._1917950559logInfoText = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"logInfoText",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get vb() : VBox
      {
         return this._3756vb;
      }
      
      [Bindable(event="propertyChange")]
      public function get rp() : Repeater
      {
         return this._3646rp;
      }
      
      private function setCurrentLine() : void
      {
         var _loc1_:Object = null;
         if(_core.lineInfo)
         {
            for each(_loc1_ in vb.getChildren())
            {
               if(_loc1_.lineInfo.id == _core.lineInfo.id)
               {
                  _loc1_.filters = [GamePredef.FILTER_SHOPSLOT_SELECTED];
               }
               else
               {
                  _loc1_.filters = [];
               }
            }
         }
      }
      
      public function ___LineSelectCanvas_Button1_click(param1:MouseEvent) : void
      {
         back();
      }
      
      private function _LineSelectCanvas_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = lineListAC;
         _loc1_ = rp.currentItem;
         _loc1_ = getBtnText(rp.currentItem);
         _loc1_ = getBtnEnabled(rp.currentItem);
         _loc1_ = getBtnStyle(rp.currentItem);
         _loc1_ = [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
      }
      
      private function _LineSelectCanvas_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return lineListAC;
         },function(param1:Object):void
         {
            rp.dataProvider = param1;
         },"rp.dataProvider");
         result[0] = binding;
         binding = new RepeatableBinding(this,function(param1:Array, param2:Array):Object
         {
            return rp.mx_internal::getItemAt(param2[0]);
         },function(param1:Object, param2:Array):void
         {
            _LineSelectCanvas_LineButton1[param2[0]].lineInfo = param1;
         },"_LineSelectCanvas_LineButton1.lineInfo");
         result[1] = binding;
         binding = new RepeatableBinding(this,function(param1:Array, param2:Array):String
         {
            var _loc3_:* = getBtnText(rp.mx_internal::getItemAt(param2[0]));
            return _loc3_ == undefined ? null : String(_loc3_);
         },function(param1:String, param2:Array):void
         {
            _LineSelectCanvas_LineButton1[param2[0]].label = param1;
         },"_LineSelectCanvas_LineButton1.label");
         result[2] = binding;
         binding = new RepeatableBinding(this,function(param1:Array, param2:Array):Boolean
         {
            return getBtnEnabled(rp.mx_internal::getItemAt(param2[0]));
         },function(param1:Boolean, param2:Array):void
         {
            _LineSelectCanvas_LineButton1[param2[0]].enabled = param1;
         },"_LineSelectCanvas_LineButton1.enabled");
         result[3] = binding;
         binding = new RepeatableBinding(this,function(param1:Array, param2:Array):Object
         {
            return getBtnStyle(rp.mx_internal::getItemAt(param2[0]));
         },function(param1:Object, param2:Array):void
         {
            _LineSelectCanvas_LineButton1[param2[0]].styleName = param1;
         },"_LineSelectCanvas_LineButton1.styleName");
         result[4] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         },function(param1:Array):void
         {
            logInfoText.filters = param1;
         },"logInfoText.filters");
         result[5] = binding;
         return result;
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
      
      [Bindable(event="propertyChange")]
      public function get lineListAC() : ArrayCollection
      {
         return this._397287852lineListAC;
      }
      
      [Bindable(event="propertyChange")]
      public function get logInfoText() : Label
      {
         return this._1917950559logInfoText;
      }
      
      private function back() : void
      {
         _core.global.close();
         visible = false;
      }
      
      private function getMiniLine(param1:Array) : uint
      {
         var _loc4_:* = undefined;
         var _loc2_:uint = 999;
         var _loc3_:uint = 0;
         for(_loc4_ in param1)
         {
            if(ToolKit.isSmallThan(param1[_loc4_].clients,_loc2_))
            {
               _loc3_ = uint(_loc4_);
               _loc2_ = uint(param1[_loc4_].clients);
            }
         }
         return _loc3_;
      }
      
      private function connect(param1:MouseEvent) : void
      {
         var _loc3_:WaitingPanel = null;
         var _loc4_:Object = null;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc2_:LineButton = LineButton(param1.currentTarget);
         _core.logined = false;
         if(!param1.altKey && !Debug.DEBUG_MODE)
         {
            if(Boolean(_core.lineInfo) && _core.lineInfo.id == _loc2_.lineInfo.id)
            {
               _core.sysMidNote(Language.LINESELECTCANVAS_S[1]);
               return;
            }
            if(_loc2_.lineInfo.clients >= _loc2_.lineInfo.max)
            {
               Alert.show(Language.LINESELECTCANVAS_S[2]);
               return;
            }
         }
         if(_core.remote.nc.connected)
         {
            _core.remote.close();
            _loc3_ = WaitingPanel(_core.view.getUI(ViewManager.POPU_WAIT));
            _loc3_.showText(Language.LINESELECTCANVAS_S[3]);
            _loc3_.showTime(10);
            setTimeout(changeLineLater,10000,_loc2_);
            _core.view.getUI(ViewManager.MAIN_AWARD_WARN).reset();
            _core.view.getUI(ViewManager.PANEL_AWARD).reset();
            _core.view.getUI(ViewManager.MAIN_TEMP_BAG_WARN).reset();
            _loc4_ = _core.view.getUI(ViewManager.PANEL_TRIPLE_TURN);
            (_loc4_) && _loc4_.tripleHideUI(false);
         }
         else
         {
            _loc5_ = _loc2_.lineInfo.url;
            _loc6_ = dnsResolve(_loc5_);
            if(_loc6_ != null)
            {
               _loc5_ = _loc6_;
            }
            if(GamePredef.SERVER_ISACTING)
            {
               _loc5_ = _loc5_.replace("rtmp","rtmpte");
               if(Boolean(GamePredef.SERVER_ADD_PROXY) && GamePredef.SERVER_USE_PROXYSERVER)
               {
                  _loc5_ = GamePredef.SERVER_PROTOCAL_LOGIC2 + GamePredef.SERVER_ADD_PROXY + "/?" + _loc5_;
               }
            }
            else
            {
               _loc5_ = _loc5_.replace("rtmp","rtmpe");
               if(Boolean(GamePredef.SERVER_ADD_PROXY) && GamePredef.SERVER_USE_PROXYSERVER)
               {
                  _loc5_ = GamePredef.SERVER_PROTOCAL_LOGIC + GamePredef.SERVER_ADD_PROXY + "/?" + _loc5_;
               }
            }
            _core.remote.connect(_loc5_,["L",_core.user,_core.pass,_core.time,_core.by_session,_loc2_.lineInfo.id]);
            trace(_loc5_);
            _core.view.show(ViewManager.POPU_WAIT);
         }
         _core.global.close();
         visible = false;
         _core.lineInfo = _loc2_.lineInfo;
      }
      
      public function set lineList(param1:Array) : void
      {
         lineListAC.source = param1;
      }
      
      override public function set visible(param1:Boolean) : void
      {
         var _loc2_:RemoteObj = null;
         var _loc3_:String = null;
         super.visible = param1;
         if(param1)
         {
            if("" == logInfoText.text)
            {
               vb.y = 26;
               logInfoText.visible = false;
            }
            else
            {
               vb.y = 34;
               logInfoText.visible = true;
            }
            _core.view.getUI(ViewManager.FORE_L_R).clearForce();
            callLater(setCurrentLine);
            if(!_core.global.nc.connected)
            {
               if(_core.remote.nc.connected)
               {
                  _loc3_ = "C";
               }
               else
               {
                  _loc3_ = "G";
               }
               _core.global.connect(GamePredef.SERVER_ADD_GLOBAL,[_loc3_,_core.user,_core.pass,_core.time,_core.by_session,MD5.hash(GamePredef.msg_button + GamePredef.msg_chanel)]);
               return;
            }
            _loc2_ = _core.global;
            _loc2_.call("getLineInfo",new Responder(onLineList));
            _core.view.hide(ViewManager.POPU_WAIT);
         }
      }
      
      private function getBtnText(param1:Object) : String
      {
         var _loc2_:String = param1.name;
         var _loc3_:String = Language.LINESELECTCANVAS_S[4];
         var _loc4_:int = int(param1.clients);
         if(param1.auction)
         {
            _loc2_ = Language.LINESELECTCANVAS_S[5];
         }
         else if(param1.guild)
         {
            _loc2_ = Language.LINESELECTCANVAS_S[11];
         }
         else
         {
            _loc2_ = GamePredef.SERVER_NAME + (Number(param1.id) + 1) + Language.MINIMAPCANVAS_S[5];
         }
         if(param1.status == SERVER_STATUS_OFF)
         {
            return _loc2_ + Language.LINESELECTCANVAS_S[6];
         }
         if(_loc4_ <= param1.max / 10)
         {
            _loc3_ = Language.LINESELECTCANVAS_S[7];
         }
         else if(_loc4_ > param1.max * 0.1 && _loc4_ <= param1.max * 0.5)
         {
            _loc3_ = Language.LINESELECTCANVAS_S[8];
         }
         else if(_loc4_ > param1.max * 0.5 && _loc4_ <= param1.max * 0.7)
         {
            _loc3_ = Language.LINESELECTCANVAS_S[9];
         }
         else if(_loc4_ > param1.max * 0.7)
         {
            _loc3_ = Language.LINESELECTCANVAS_S[10];
         }
         return _loc2_ + _loc3_;
      }
      
      public function set rp(param1:Repeater) : void
      {
         var _loc2_:Object = this._3646rp;
         if(_loc2_ !== param1)
         {
            this._3646rp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rp",_loc2_,param1));
         }
      }
   }
}

