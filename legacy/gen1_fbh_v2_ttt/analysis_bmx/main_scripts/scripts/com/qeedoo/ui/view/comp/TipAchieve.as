package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.vo.AchieveVO;
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
   import mx.containers.VBox;
   import mx.controls.Button;
   import mx.controls.Image;
   import mx.controls.Text;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class TipAchieve extends BasicToolTip implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public static var ACH_NAME_STR:String = "<font color=\'{color}\'>【{name}】</font>";
      
      private var _1330657564txtAchieveAward:BasicTxtButton;
      
      private var _92633567achVo:AchieveVO;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _TipAchieve_Text2:Text;
      
      mx_internal var _watchers:Array = [];
      
      private var _859630293imageAch:Image;
      
      private var _1621552033txtAchName:Text;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":BasicToolTip,
         "propertiesFactory":function():Object
         {
            return {
               "width":224,
               "height":88,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":VBox,
                  "stylesFactory":function():void
                  {
                     this.paddingLeft = 8;
                     this.verticalGap = 15;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":10,
                        "width":212,
                        "height":75,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Text,
                           "id":"txtAchName",
                           "stylesFactory":function():void
                           {
                              this.color = 65280;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "selectable":false,
                                 "text":"【成就名称】",
                                 "width":157,
                                 "height":19
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Text,
                           "id":"_TipAchieve_Text2",
                           "stylesFactory":function():void
                           {
                              this.color = 16773307;
                              this.left = "10";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "selectable":false,
                                 "text":"成就描述",
                                 "width":199,
                                 "height":38
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "events":{"click":"___TipAchieve_Button1_click"},
                  "stylesFactory":function():void
                  {
                     this.right = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":0,
                        "styleName":"BtnToolTipClose",
                        "width":15,
                        "height":15
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"imageAch",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":42,
                        "height":42,
                        "x":165,
                        "y":3
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicTxtButton,
                  "id":"txtAchieveAward",
                  "stylesFactory":function():void
                  {
                     this.textAlign = "center";
                     this.color = 16776960;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":176,
                        "y":12,
                        "width":20
                     };
                  }
               })]
            };
         }
      });
      
      public function TipAchieve()
      {
         super();
         mx_internal::_document = this;
         this.width = 224;
         this.height = 88;
         this.styleName = "CanvasToolTip";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         TipAchieve._watcherSetupUtil = param1;
      }
      
      private function _TipAchieve_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = achVo.name;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            txtAchName.htmlText = param1;
         },"txtAchName.htmlText");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = achVo.description;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipAchieve_Text2.htmlText = param1;
         },"_TipAchieve_Text2.htmlText");
         result[1] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.ICON_ACHIEVEMENT;
         },function(param1:Object):void
         {
            imageAch.source = param1;
         },"imageAch.source");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = achVo.award;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            txtAchieveAward.label = param1;
         },"txtAchieveAward.label");
         result[3] = binding;
         return result;
      }
      
      public function set txtAchName(param1:Text) : void
      {
         var _loc2_:Object = this._1621552033txtAchName;
         if(_loc2_ !== param1)
         {
            this._1621552033txtAchName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txtAchName",_loc2_,param1));
         }
      }
      
      public function set object(param1:Object) : void
      {
         achVo = new AchieveVO();
         if(param1.type == BasicToolTip.TYPE_TEMP && Boolean(param1.temp))
         {
            achVo.name = ACH_NAME_STR.replace("{color}",GamePredef.MSG_ITEM_COLOR[param1.temp.color]).replace("{name}",param1.temp.name);
            achVo.description = param1.temp.description;
            achVo.award = param1.temp.award;
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:TipAchieve = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _TipAchieve_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_TipAchieveWatcherSetupUtil");
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
      public function get txtAchieveAward() : BasicTxtButton
      {
         return this._1330657564txtAchieveAward;
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
      
      [Bindable(event="propertyChange")]
      private function get achVo() : AchieveVO
      {
         return this._92633567achVo;
      }
      
      private function set achVo(param1:AchieveVO) : void
      {
         var _loc2_:Object = this._92633567achVo;
         if(_loc2_ !== param1)
         {
            this._92633567achVo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"achVo",_loc2_,param1));
         }
      }
      
      private function _TipAchieve_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = achVo.name;
         _loc1_ = achVo.description;
         _loc1_ = ResManager.ICON_ACHIEVEMENT;
         _loc1_ = achVo.award;
      }
      
      [Bindable(event="propertyChange")]
      public function get txtAchName() : Text
      {
         return this._1621552033txtAchName;
      }
      
      [Bindable(event="propertyChange")]
      public function get imageAch() : Image
      {
         return this._859630293imageAch;
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
      
      public function ___TipAchieve_Button1_click(param1:MouseEvent) : void
      {
         visible = false;
      }
   }
}

