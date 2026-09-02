package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
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
   import mx.collections.ArrayCollection;
   import mx.containers.Canvas;
   import mx.controls.ComboBox;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class CrossFightResultInfo extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _112797rep:BasicDelayButton;
      
      private var _746483037areaTxt:Label;
      
      private var _104387img:Image;
      
      private var _data:Object;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      private var _1721941989nameTxt:Label;
      
      mx_internal var _bindings:Array = [];
      
      private var _3496822reps:ComboBox;
      
      private var _469523524repArray:ArrayCollection = new ArrayCollection();
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":160,
               "height":60,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":160,
                        "height":36,
                        "styleName":"CanvasBorder",
                        "horizontalScrollPolicy":"off",
                        "verticalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Label,
                           "id":"nameTxt",
                           "stylesFactory":function():void
                           {
                              this.left = "3";
                              this.top = "3";
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"width":160};
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"areaTxt",
                           "stylesFactory":function():void
                           {
                              this.left = "3";
                              this.bottom = "3";
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"width":160};
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"img",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":100,
                                 "y":0
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicDelayButton,
                  "id":"rep",
                  "events":{"click":"__rep_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "visible":false,
                        "height":24,
                        "styleName":"BtnNormalBlue",
                        "label":"",
                        "x":90,
                        "y":35
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ComboBox,
                  "id":"reps",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":2,
                        "y":35,
                        "width":85
                     };
                  }
               })]
            };
         }
      });
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _core:Core = Core.getInstance();
      
      public function CrossFightResultInfo()
      {
         super();
         mx_internal::_document = this;
         this.width = 160;
         this.height = 60;
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
         this.addEventListener("creationComplete",___CrossFightResultInfo_Canvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         CrossFightResultInfo._watcherSetupUtil = param1;
      }
      
      public function set rep(param1:BasicDelayButton) : void
      {
         var _loc2_:Object = this._112797rep;
         if(_loc2_ !== param1)
         {
            this._112797rep = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rep",_loc2_,param1));
         }
      }
      
      private function toLookRep() : void
      {
         var _loc1_:Object = reps.selectedItem;
         if(Boolean(_loc1_.data) && _loc1_.data.length > 0)
         {
            _core.remote.call("crossPKLookReplay",new Responder(onLookRep),_loc1_.data);
         }
      }
      
      private function _CrossFightResultInfo_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = repArray;
      }
      
      public function __rep_click(param1:MouseEvent) : void
      {
         toLookRep();
      }
      
      public function ___CrossFightResultInfo_Canvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      [Bindable(event="propertyChange")]
      private function get repArray() : ArrayCollection
      {
         return this._469523524repArray;
      }
      
      public function set areaTxt(param1:Label) : void
      {
         var _loc2_:Object = this._746483037areaTxt;
         if(_loc2_ !== param1)
         {
            this._746483037areaTxt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"areaTxt",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:CrossFightResultInfo = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _CrossFightResultInfo_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_CrossFightResultInfoWatcherSetupUtil");
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
      
      private function _CrossFightResultInfo_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return repArray;
         },function(param1:Object):void
         {
            reps.dataProvider = param1;
         },"reps.dataProvider");
         result[0] = binding;
         return result;
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
      
      public function refresh(param1:Object, param2:Object) : void
      {
         if(Boolean(param1) && Boolean(param2))
         {
            _data = param1;
            nameTxt.text = Language.CROSS_FIGHT_PANEL_U[52] + param2.tname;
            areaTxt.text = Language.CROSS_FIGHT_PANEL_U[25] + param2.tarea;
            if(Boolean(param1.rid) && param1.rid.toString().length > 0)
            {
               if(param1.bid <= 11)
               {
                  rep.label = Language.CROSS_FIGHT_PANEL_U[53];
               }
               else if(param1.bid <= 13)
               {
                  rep.label = Language.CROSS_FIGHT_PANEL_U[54];
               }
               else
               {
                  rep.label = Language.CROSS_FIGHT_PANEL_U[55];
               }
               rep.visible = true;
               reps.visible = true;
               getReps();
            }
            if(param1.type == 1)
            {
               img.source = ResManager.getIconUrl(4130220000226);
            }
            else if(param1.type == 2)
            {
               img.source = ResManager.getIconUrl(4130220000227);
            }
            else if(param1.type == 3)
            {
               img.source = ResManager.getIconUrl(4130220000228);
            }
            else
            {
               img.source = "";
            }
         }
         else
         {
            init();
         }
      }
      
      public function set nameTxt(param1:Label) : void
      {
         var _loc2_:Object = this._1721941989nameTxt;
         if(_loc2_ !== param1)
         {
            this._1721941989nameTxt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nameTxt",_loc2_,param1));
         }
      }
      
      public function init() : void
      {
         nameTxt.text = Language.CROSS_FIGHT_PANEL_U[52];
         areaTxt.text = Language.CROSS_FIGHT_PANEL_U[25];
         rep.label = "";
         rep.visible = false;
         reps.visible = false;
         img.source = "";
         data = null;
      }
      
      [Bindable(event="propertyChange")]
      public function get areaTxt() : Label
      {
         return this._746483037areaTxt;
      }
      
      [Bindable(event="propertyChange")]
      public function get rep() : BasicDelayButton
      {
         return this._112797rep;
      }
      
      [Bindable(event="propertyChange")]
      public function get img() : Image
      {
         return this._104387img;
      }
      
      private function onLookRep(param1:Object) : void
      {
         if(!param1)
         {
            _core.sysMsg(Language.CROSS_FIGHT_PANEL_U[50]);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get reps() : ComboBox
      {
         return this._3496822reps;
      }
      
      public function set reps(param1:ComboBox) : void
      {
         var _loc2_:Object = this._3496822reps;
         if(_loc2_ !== param1)
         {
            this._3496822reps = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"reps",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get nameTxt() : Label
      {
         return this._1721941989nameTxt;
      }
      
      private function set repArray(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._469523524repArray;
         if(_loc2_ !== param1)
         {
            this._469523524repArray = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"repArray",_loc2_,param1));
         }
      }
      
      private function getReps() : void
      {
         var _loc1_:String = null;
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         repArray.removeAll();
         if(Boolean(_data) && Boolean(_data.rid) && _data.rid.toString().length > 0)
         {
            _loc1_ = _data.rid;
            _loc2_ = _loc1_.split("#");
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length)
            {
               repArray.addItem({
                  "label":Language.CROSS_FIGHT_PANEL_U[56] + Language.GAMEPREDEF_S[544 + _loc3_] + Language.CROSS_FIGHT_PANEL_U[57],
                  "data":_loc2_[_loc3_]
               });
               _loc3_++;
            }
         }
      }
   }
}

