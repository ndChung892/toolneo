package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.ConsumeNoticeItem;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.IntroText;
   import com.qeedoo.ui.view.comp.RoundedLabel;
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
   import mx.containers.VBox;
   import mx.controls.Alert;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class ConsumeNoticePanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _ConsumeNoticePanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      mx_internal var _watchers:Array = [];
      
      private var _3575610type:String;
      
      private var _1148655051awrdText:RoundedLabel;
      
      private var _3023933bind:String;
      
      private var _93223517award:String;
      
      private var _109757538start:String;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _351979078itemListBox:VBox;
      
      private var _2077368934timeText:RoundedLabel;
      
      private var _100571end:String;
      
      private var _939489034bindText:RoundedLabel;
      
      private var _100361836intro:IntroText;
      
      mx_internal var _bindings:Array = [];
      
      private var _110371416title:RoundedLabel;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":840,
               "height":560,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_ConsumeNoticePanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"title",
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                     this.fontSize = 25;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"y":39};
                  }
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"timeText",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 15;
                     this.left = "20";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"y":77};
                  }
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"bindText",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 15;
                     this.left = "20";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"y":100};
                  }
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"awrdText",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 15;
                     this.left = "20";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"y":121};
                  }
               }),new UIComponentDescriptor({
                  "type":VBox,
                  "id":"itemListBox",
                  "stylesFactory":function():void
                  {
                     this.left = "20";
                     this.right = "20";
                     this.verticalGap = 1;
                     this.paddingLeft = 10;
                     this.paddingTop = 10;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"RoundedGradientBorder",
                        "y":146,
                        "height":301
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":IntroText,
                  "id":"intro",
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":455,
                        "width":534,
                        "height":83
                     };
                  }
               })]
            };
         }
      });
      
      private var _core:Core = Core.getInstance();
      
      public function ConsumeNoticePanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 840;
         this.height = 560;
         this.styleName = "StandardContent";
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ConsumeNoticePanel._watcherSetupUtil = param1;
      }
      
      public function set bind(param1:String) : void
      {
         var _loc2_:Object = this._3023933bind;
         if(_loc2_ !== param1)
         {
            this._3023933bind = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bind",_loc2_,param1));
         }
      }
      
      public function set itemListBox(param1:VBox) : void
      {
         var _loc2_:Object = this._351979078itemListBox;
         if(_loc2_ !== param1)
         {
            this._351979078itemListBox = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemListBox",_loc2_,param1));
         }
      }
      
      public function showPanel() : void
      {
         this.show();
         if(!initialized)
         {
            callLater(showPanel);
            return;
         }
         _core.remote.call("getConsumeNoticeData",new Responder(updateConsumNoticePanel),null);
      }
      
      [Bindable(event="propertyChange")]
      public function get bindText() : RoundedLabel
      {
         return this._939489034bindText;
      }
      
      private function sortItemList(param1:Object) : Array
      {
         var i:* = undefined;
         var itemSort:Function = null;
         var hasData:* = undefined;
         var j:* = undefined;
         var obj:Object = param1;
         var sortList:* = [];
         for(i in obj)
         {
            if(obj[i].r)
            {
               hasData = false;
               for(j in sortList)
               {
                  if(sortList[j] == obj[i].r)
                  {
                     hasData = true;
                  }
               }
               if(!hasData)
               {
                  sortList.push(obj[i].r);
               }
            }
         }
         itemSort = function(param1:*, param2:*):Number
         {
            var _loc3_:* = (param1 as String).split("|")[0];
            var _loc4_:* = (param2 as String).split("|")[0];
            return _loc3_ - _loc4_;
         };
         sortList.sort(itemSort);
         return sortList;
      }
      
      private function init() : void
      {
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:ConsumeNoticePanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ConsumeNoticePanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_ConsumeNoticePanelWatcherSetupUtil");
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
      public function get timeText() : RoundedLabel
      {
         return this._2077368934timeText;
      }
      
      private function getYMDHMS(param1:Number) : String
      {
         var _loc2_:Date = new Date(Number(param1));
         return _loc2_.fullYear + "年" + ToolKit.add(_loc2_.month,1) + "月" + _loc2_.date + "日 " + _loc2_.hours + "点" + _loc2_.minutes + "分";
      }
      
      public function set type(param1:String) : void
      {
         var _loc2_:Object = this._3575610type;
         if(_loc2_ !== param1)
         {
            this._3575610type = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"type",_loc2_,param1));
         }
      }
      
      public function set bindText(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._939489034bindText;
         if(_loc2_ !== param1)
         {
            this._939489034bindText = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bindText",_loc2_,param1));
         }
      }
      
      private function _ConsumeNoticePanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.CONSUME_NOTICE_PANEL[0];
         _loc1_ = type + "活动奖励预览";
         _loc1_ = "活动时间:" + start + " 至  " + end;
         _loc1_ = "活动规则:活动时间内" + type + "充值达到相应金额即可获得以下奖励（所有奖励为" + bind + "物品）";
         _loc1_ = "活动发放： 奖励将于" + award + "前发放";
      }
      
      private function getType(param1:int) : String
      {
         if(param1 == 1)
         {
            return "累计充值";
         }
         if(param1 == 2)
         {
            return "单笔充值";
         }
         return "未定义";
      }
      
      private function getBind(param1:int) : String
      {
         if(param1 == 1)
         {
            return "绑定";
         }
         if(param1 == 2)
         {
            return "未绑定";
         }
         return "未定义";
      }
      
      public function set timeText(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._2077368934timeText;
         if(_loc2_ !== param1)
         {
            this._2077368934timeText = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"timeText",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get awrdText() : RoundedLabel
      {
         return this._1148655051awrdText;
      }
      
      public function set end(param1:String) : void
      {
         var _loc2_:Object = this._100571end;
         if(_loc2_ !== param1)
         {
            this._100571end = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"end",_loc2_,param1));
         }
      }
      
      public function set title(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._110371416title;
         if(_loc2_ !== param1)
         {
            this._110371416title = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"title",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bind() : String
      {
         return this._3023933bind;
      }
      
      [Bindable(event="propertyChange")]
      public function get itemListBox() : VBox
      {
         return this._351979078itemListBox;
      }
      
      public function set start(param1:String) : void
      {
         var _loc2_:Object = this._109757538start;
         if(_loc2_ !== param1)
         {
            this._109757538start = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"start",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get type() : String
      {
         return this._3575610type;
      }
      
      public function set award(param1:String) : void
      {
         var _loc2_:Object = this._93223517award;
         if(_loc2_ !== param1)
         {
            this._93223517award = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"award",_loc2_,param1));
         }
      }
      
      public function set intro(param1:IntroText) : void
      {
         var _loc2_:Object = this._100361836intro;
         if(_loc2_ !== param1)
         {
            this._100361836intro = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"intro",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get end() : String
      {
         return this._100571end;
      }
      
      [Bindable(event="propertyChange")]
      public function get award() : String
      {
         return this._93223517award;
      }
      
      [Bindable(event="propertyChange")]
      public function get title() : RoundedLabel
      {
         return this._110371416title;
      }
      
      [Bindable(event="propertyChange")]
      public function get start() : String
      {
         return this._109757538start;
      }
      
      public function set awrdText(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1148655051awrdText;
         if(_loc2_ !== param1)
         {
            this._1148655051awrdText = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"awrdText",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get intro() : IntroText
      {
         return this._100361836intro;
      }
      
      public function updateConsumNoticePanel(param1:Object) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:ConsumeNoticeItem = null;
         if(Boolean(param1) || !ToolKit.isEmptyObject(param1))
         {
            type = getType(int(param1.t));
            start = getYMDHMS(Number(param1.start));
            end = getYMDHMS(Number(param1.end));
            bind = getBind(int(param1.t));
            intro.htmlText = param1.info;
            award = getYMDHMS(Number(param1.at));
            title.htmlText = "<font color=\'#FF0000\'>" + type + "</font>活动奖励预览";
            timeText.htmlText = "活动时间: <font color=\'#FF0000\'>" + start + "</font> 至 <font color=\'#FF0000\'>" + end + "</font>";
            bindText.htmlText = "活动规则: 活动时间内<font color=\'#FF0000\'>" + type + "</font>达到相应金额即可获得以下奖励（所有奖励为<font color=\'#FF0000\'>" + bind + "</font>物品）";
            awrdText.htmlText = "活动发放: 奖励将于<font color=\'#FF0000\'>" + award + "</font>前发放";
            if(param1.it)
            {
               _loc2_ = sortItemList(param1.it);
               _loc3_ = [];
               itemListBox.removeAllChildren();
               _loc4_ = param1.it;
               for(_loc5_ in _loc4_)
               {
                  if(_loc4_[_loc5_].r)
                  {
                     for(_loc7_ in _loc2_)
                     {
                        if(_loc2_[_loc7_] == _loc4_[_loc5_].r)
                        {
                           if(!_loc3_[_loc7_])
                           {
                              _loc3_[_loc7_] = [];
                           }
                           _loc3_[_loc7_].push(_loc4_[_loc5_]);
                        }
                     }
                  }
               }
               for(_loc6_ in _loc3_)
               {
                  if(_loc3_[_loc6_])
                  {
                     _loc8_ = new ConsumeNoticeItem();
                     itemListBox.addChild(_loc8_);
                     _loc8_.setData(_loc3_[_loc6_]);
                     _loc8_.type = type;
                  }
               }
            }
         }
         else
         {
            Alert.show("未能成功获取数据");
         }
      }
      
      private function _ConsumeNoticePanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CONSUME_NOTICE_PANEL[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ConsumeNoticePanel_BasicTitleCanvas1.text = param1;
         },"_ConsumeNoticePanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = type + "活动奖励预览";
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            title.htmlText = param1;
         },"title.htmlText");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = "活动时间:" + start + " 至  " + end;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            timeText.htmlText = param1;
         },"timeText.htmlText");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = "活动规则:活动时间内" + type + "充值达到相应金额即可获得以下奖励（所有奖励为" + bind + "物品）";
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bindText.htmlText = param1;
         },"bindText.htmlText");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = "活动发放： 奖励将于" + award + "前发放";
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            awrdText.htmlText = param1;
         },"awrdText.htmlText");
         result[4] = binding;
         return result;
      }
   }
}

