package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.predef.GamePredef;
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
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class TeamCrossFightWinnerModel extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private static var bmUrl:Array = [4130220000287,4130220000288,4130220000289,4130220000291];
      
      private var _1090741522lvlTxt:Label;
      
      private var _104387img:Image;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _index:int = -1;
      
      mx_internal var _watchers:Array = [];
      
      private var _1721941989nameTxt:RoundedLabel;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":190,
               "height":230,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Image,
                  "id":"img",
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "percentWidth":100,
                        "percentHeight":100,
                        "horizontalScrollPolicy":"off",
                        "verticalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"nameTxt",
                           "stylesFactory":function():void
                           {
                              this.textAlign = "center";
                              this.top = "116";
                              this.horizontalCenter = "0";
                              this.color = 16776960;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":175,
                                 "height":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"lvlTxt",
                           "stylesFactory":function():void
                           {
                              this.left = "3";
                              this.bottom = "30";
                              this.color = 16776960;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":175,
                                 "height":20
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      public function TeamCrossFightWinnerModel()
      {
         super();
         mx_internal::_document = this;
         this.width = 190;
         this.height = 230;
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         TeamCrossFightWinnerModel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get img() : Image
      {
         return this._104387img;
      }
      
      public function set img(param1:Image) : void
      {
         var _loc2_:Object = this._104387img;
         if(_loc2_ !== param1)
         {
            this._104387img = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:TeamCrossFightWinnerModel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _TeamCrossFightWinnerModel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_TeamCrossFightWinnerModelWatcherSetupUtil");
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
      
      public function set nameTxt(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1721941989nameTxt;
         if(_loc2_ !== param1)
         {
            this._1721941989nameTxt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nameTxt",_loc2_,param1));
         }
      }
      
      public function resetModel() : void
      {
         nameTxt.text = "";
      }
      
      public function refresh(param1:Object, param2:String) : void
      {
         var _loc4_:Object = null;
         var _loc8_:Object = null;
         var _loc9_:Object = null;
         if(!param1 || !param1.team)
         {
            resetModel();
            return;
         }
         var _loc3_:Object = param1.list;
         if(!_loc3_ || !_loc3_[param2] || !_loc3_[param2][2] || !_loc3_[param2][2][0])
         {
            resetModel();
            return;
         }
         var _loc5_:Object = _loc3_[param2][2][0];
         if(_loc5_.status == 3)
         {
            _loc4_ = param1.team[param2][_loc5_[1]];
         }
         else
         {
            if(!_loc5_.win)
            {
               resetModel();
               return;
            }
            _loc4_ = param1.team[param2][_loc5_.win];
         }
         if(!_loc4_ || !_loc4_.members)
         {
            resetModel();
            return;
         }
         var _loc6_:Object = _loc4_.members;
         var _loc7_:Array = [_loc6_[_loc4_.leader].view];
         for(_loc8_ in _loc6_)
         {
            if(_loc8_ != _loc4_.leader && Boolean(_loc6_[_loc8_]))
            {
               _loc7_.push(_loc6_[_loc8_].view);
            }
         }
         _loc9_ = _loc7_[_index];
         if(!_loc9_)
         {
            resetModel();
            return;
         }
         nameTxt.text = _loc9_.name;
      }
      
      public function set lvlTxt(param1:Label) : void
      {
         var _loc2_:Object = this._1090741522lvlTxt;
         if(_loc2_ !== param1)
         {
            this._1090741522lvlTxt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lvlTxt",_loc2_,param1));
         }
      }
      
      public function init(param1:int) : void
      {
         _index = param1;
         if(_index == 0)
         {
            img.y = 0;
         }
         else
         {
            img.y = 0;
         }
         img.source = ResManager.getIconUrl(bmUrl[_index]);
      }
      
      private function _TeamCrossFightWinnerModel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT4];
      }
      
      [Bindable(event="propertyChange")]
      public function get nameTxt() : RoundedLabel
      {
         return this._1721941989nameTxt;
      }
      
      private function _TeamCrossFightWinnerModel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT4];
         },function(param1:Array):void
         {
            nameTxt.filters = param1;
         },"nameTxt.filters");
         result[0] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get lvlTxt() : Label
      {
         return this._1090741522lvlTxt;
      }
   }
}

