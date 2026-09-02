package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.data.GameData;
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
   import mx.controls.Button;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.Text;
   import mx.core.IToolTip;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.events.ResizeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class TipRecipe extends BasicToolTip implements IBindingClient, IToolTip
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _351679175recipeName:Label;
      
      private var _351815844recipeInfo:Text;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      private var _351826137recipeIcon:Image;
      
      private var _1092797764closeBtn:Button;
      
      private var _recipeId:Number;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":BasicToolTip,
         "propertiesFactory":function():Object
         {
            return {"childDescriptors":[new UIComponentDescriptor({
               "type":Image,
               "id":"recipeIcon",
               "propertiesFactory":function():Object
               {
                  return {
                     "x":10,
                     "y":10,
                     "width":32,
                     "height":32
                  };
               }
            }),new UIComponentDescriptor({
               "type":Label,
               "id":"recipeName",
               "propertiesFactory":function():Object
               {
                  return {
                     "x":50,
                     "y":10
                  };
               }
            }),new UIComponentDescriptor({
               "type":Text,
               "id":"recipeInfo",
               "stylesFactory":function():void
               {
                  this.color = 16773307;
               },
               "propertiesFactory":function():Object
               {
                  return {
                     "x":10,
                     "y":50,
                     "width":180,
                     "mouseEnabled":false,
                     "mouseChildren":false
                  };
               }
            }),new UIComponentDescriptor({
               "type":Button,
               "id":"closeBtn",
               "events":{"click":"__closeBtn_click"},
               "stylesFactory":function():void
               {
                  this.right = "5";
                  this.top = "5";
               },
               "propertiesFactory":function():Object
               {
                  return {
                     "visible":false,
                     "styleName":"BtnToolTipClose",
                     "width":15,
                     "height":15
                  };
               }
            })]};
         }
      });
      
      public function TipRecipe()
      {
         super();
         mx_internal::_document = this;
         this.styleName = "CanvasToolTip";
         this.addEventListener("resize",___TipRecipe_BasicToolTip1_resize);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         TipRecipe._watcherSetupUtil = param1;
      }
      
      public function set recipeName(param1:Label) : void
      {
         var _loc2_:Object = this._351679175recipeName;
         if(_loc2_ !== param1)
         {
            this._351679175recipeName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"recipeName",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get closeBtn() : Button
      {
         return this._1092797764closeBtn;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:TipRecipe = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _TipRecipe_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_TipRecipeWatcherSetupUtil");
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
      
      public function ___TipRecipe_BasicToolTip1_resize(param1:ResizeEvent) : void
      {
         setPos();
      }
      
      private function _TipRecipe_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
      }
      
      public function set closeBtn(param1:Button) : void
      {
         var _loc2_:Object = this._1092797764closeBtn;
         if(_loc2_ !== param1)
         {
            this._1092797764closeBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"closeBtn",_loc2_,param1));
         }
      }
      
      public function set recipeId(param1:Number) : void
      {
         if(_recipeId == param1)
         {
            return;
         }
         _recipeId = param1;
         this.updateView();
      }
      
      private function updateView() : void
      {
         if(!this.initialized)
         {
            this.callLater(updateView);
            return;
         }
         if(!_recipeId)
         {
            this.cleanView();
            return;
         }
         var _loc1_:Object = GameData.d[GamePredef.TBL_RECIPE][_recipeId];
         if(!_loc1_)
         {
            this.cleanView();
            return;
         }
         var _loc2_:int = int(_loc1_.color);
         if(_loc2_ < 0)
         {
            _loc2_ = 0;
         }
         recipeIcon.source = ResManager.getIconUrl(_loc1_.iconCode);
         recipeName.htmlText = "<font color=\'" + GamePredef.MSG_ITEM_COLOR[_loc2_] + "\'>" + _loc1_.name + "</font>";
         recipeInfo.text = _loc1_.desc;
      }
      
      [Bindable(event="propertyChange")]
      public function get recipeInfo() : Text
      {
         return this._351815844recipeInfo;
      }
      
      private function cleanView() : void
      {
         recipeIcon.source = null;
         recipeName.htmlText = "";
         recipeInfo.text = "";
      }
      
      public function set recipeIcon(param1:Image) : void
      {
         var _loc2_:Object = this._351826137recipeIcon;
         if(_loc2_ !== param1)
         {
            this._351826137recipeIcon = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"recipeIcon",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get recipeIcon() : Image
      {
         return this._351826137recipeIcon;
      }
      
      public function __closeBtn_click(param1:MouseEvent) : void
      {
         this.visible = false;
      }
      
      public function set recipeInfo(param1:Text) : void
      {
         var _loc2_:Object = this._351815844recipeInfo;
         if(_loc2_ !== param1)
         {
            this._351815844recipeInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"recipeInfo",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get recipeName() : Label
      {
         return this._351679175recipeName;
      }
      
      private function _TipRecipe_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            recipeName.filters = param1;
         },"recipeName.filters");
         result[0] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            recipeInfo.filters = param1;
         },"recipeInfo.filters");
         result[1] = binding;
         return result;
      }
      
      override public function show(param1:Object = null) : void
      {
         super.show(param1);
         closeBtn.visible = param1 != null;
      }
   }
}

