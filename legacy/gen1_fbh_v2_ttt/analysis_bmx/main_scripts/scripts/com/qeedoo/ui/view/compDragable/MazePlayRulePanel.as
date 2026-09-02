package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.system.Core;
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
   import mx.controls.Text;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class MazePlayRulePanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _watchers:Array = [];
      
      public var _MazePlayRulePanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":450,
               "height":400,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_MazePlayRulePanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.left = "10";
                     this.top = "55";
                     this.right = "10";
                     this.bottom = "20";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"CanvasBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Text,
                           "id":"_MazePlayRulePanel_Text1",
                           "stylesFactory":function():void
                           {
                              this.left = "10";
                              this.top = "10";
                              this.right = "10";
                              this.bottom = "10";
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":410,
                                 "height":305,
                                 "selectable":false
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _MazePlayRulePanel_Text1:Text;
      
      private var _core:Core = Core.getInstance();
      
      public function MazePlayRulePanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 450;
         this.height = 400;
         this.styleName = "StandardContent";
         this.cacheAsBitmap = true;
         this.addEventListener("creationComplete",___MazePlayRulePanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         MazePlayRulePanel._watcherSetupUtil = param1;
      }
      
      private function _MazePlayRulePanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.MAZE_PLAY_RULE_PANEL_U[0];
         _loc1_ = Language.MAZE_PLAY_RULE_PANEL_U[1];
      }
      
      public function showPanel() : void
      {
         this.visible = true;
      }
      
      private function _MazePlayRulePanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAZE_PLAY_RULE_PANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MazePlayRulePanel_BasicTitleCanvas1.text = param1;
         },"_MazePlayRulePanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAZE_PLAY_RULE_PANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MazePlayRulePanel_Text1.text = param1;
         },"_MazePlayRulePanel_Text1.text");
         result[1] = binding;
         return result;
      }
      
      public function ___MazePlayRulePanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         initView();
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:MazePlayRulePanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _MazePlayRulePanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_MazePlayRulePanelWatcherSetupUtil");
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
      
      override public function initView() : void
      {
      }
   }
}

