package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.DataManager;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.BuildSlot;
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
   import mx.collections.ArrayCollection;
   import mx.containers.Canvas;
   import mx.containers.Tile;
   import mx.controls.Alert;
   import mx.core.Repeater;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class ConstructionManager extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _94756344close:BasicGlowButton;
      
      public var _ConstructionManager_BuildSlot1:Array;
      
      public var _ConstructionManager_BasicTitleCanvas1:BasicTitleCanvas;
      
      mx_internal var _watchers:Array = [];
      
      private var _622574815_ConstructionManager_Tile1:Tile;
      
      private var _1401224148buildList:Repeater;
      
      private var _dm:DataManager = DataManager.getInstance();
      
      private var selectedSlot:BuildSlot = null;
      
      private var dataProvider:ArrayCollection = new ArrayCollection();
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _bindings:Array = [];
      
      private var _1430683378buildBtn:BasicGlowButton;
      
      private var _1060451078myFlow:Tile;
      
      public var currentBuild:Object = null;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":550,
               "height":380,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_ConstructionManager_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.left = "10";
                     this.right = "10";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"RoundedGradientBorder",
                        "y":40,
                        "height":280,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Tile,
                           "id":"myFlow",
                           "stylesFactory":function():void
                           {
                              this.borderStyle = "none";
                              this.verticalGap = 10;
                              this.horizontalGap = 5;
                              this.left = "8";
                              this.right = "8";
                              this.top = "8";
                              this.bottom = "8";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "direction":"horizontal",
                                 "verticalScrollPolicy":"on",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Repeater,
                                    "id":"buildList",
                                    "propertiesFactory":function():Object
                                    {
                                       return {"childDescriptors":[new UIComponentDescriptor({
                                          "type":BuildSlot,
                                          "id":"_ConstructionManager_BuildSlot1",
                                          "events":{"click":"___ConstructionManager_BuildSlot1_click"},
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "width":117,
                                                "height":85,
                                                "iconHeight":85,
                                                "iconWidth":117
                                             };
                                          }
                                       })]};
                                    }
                                 })]
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"buildBtn",
                  "events":{"click":"__buildBtn_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":411,
                        "y":336,
                        "label":"建造",
                        "styleName":"BtnStdRed"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"close",
                  "events":{"click":"__close_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":478,
                        "y":336,
                        "styleName":"BtnStdRed"
                     };
                  }
               })]
            };
         }
      });
      
      public function ConstructionManager()
      {
         super();
         mx_internal::_document = this;
         this.width = 550;
         this.height = 380;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ConstructionManager._watcherSetupUtil = param1;
      }
      
      private function buildSelect() : void
      {
         if(selectedSlot == null)
         {
            Alert.show(Language.BUILD_S[3]);
            return;
         }
         Alert.show(Language.BUILD_S[4],"",Alert.YES | Alert.NO,null,selectedSlot.handler);
      }
      
      private function _ConstructionManager_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_U[21];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ConstructionManager_BasicTitleCanvas1.text = param1;
         },"_ConstructionManager_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new RepeatableBinding(this,function(param1:Array, param2:Array):Object
         {
            return buildList.mx_internal::getItemAt(param2[0]);
         },function(param1:Object, param2:Array):void
         {
            _ConstructionManager_BuildSlot1[param2[0]].slotData = param1;
         },"_ConstructionManager_BuildSlot1.slotData");
         result[1] = binding;
         binding = new RepeatableBinding(this,function(param1:Array, param2:Array):int
         {
            return GamePredef.TBL_BUILDING;
         },function(param1:int, param2:Array):void
         {
            _ConstructionManager_BuildSlot1[param2[0]].type = param1;
         },"_ConstructionManager_BuildSlot1.type");
         result[2] = binding;
         binding = new RepeatableBinding(this,function(param1:Array, param2:Array):Number
         {
            return buildList.mx_internal::getItemAt(param2[0]).id;
         },function(param1:Number, param2:Array):void
         {
            _ConstructionManager_BuildSlot1[param2[0]].giid = param1;
         },"_ConstructionManager_BuildSlot1.giid");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CONSTRUCTIONMANAGER_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            close.label = param1;
         },"close.label");
         result[4] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get buildBtn() : BasicGlowButton
      {
         return this._1430683378buildBtn;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:ConstructionManager = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ConstructionManager_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_ConstructionManagerWatcherSetupUtil");
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
      
      public function set buildBtn(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1430683378buildBtn;
         if(_loc2_ !== param1)
         {
            this._1430683378buildBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buildBtn",_loc2_,param1));
         }
      }
      
      public function __close_click(param1:MouseEvent) : void
      {
         hide();
      }
      
      [Bindable(event="propertyChange")]
      public function get _ConstructionManager_Tile1() : Tile
      {
         return this._622574815_ConstructionManager_Tile1;
      }
      
      private function clickHandler(param1:MouseEvent) : void
      {
         clearSelection();
         selectedSlot = param1.currentTarget as BuildSlot;
         selectedSlot.selected = true;
      }
      
      [Bindable(event="propertyChange")]
      public function get buildList() : Repeater
      {
         return this._1401224148buildList;
      }
      
      private function clearSelection() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < myFlow.numChildren)
         {
            BuildSlot(myFlow.getChildAt(_loc1_)).selected = false;
            _loc1_++;
         }
      }
      
      public function set _ConstructionManager_Tile1(param1:Tile) : void
      {
         var _loc2_:Object = this._622574815_ConstructionManager_Tile1;
         if(_loc2_ !== param1)
         {
            this._622574815_ConstructionManager_Tile1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_ConstructionManager_Tile1",_loc2_,param1));
         }
      }
      
      public function showNewBuild(param1:Object) : void
      {
         var _loc3_:Object = null;
         if(param1 == null)
         {
            return;
         }
         currentBuild = param1;
         var _loc2_:Object = _dm.gameDataIndex[GamePredef.TBL_BUILDING][param1.buildType];
         dataProvider.removeAll();
         for(_loc3_ in _loc2_)
         {
            if(ToolKit.isEqual(_loc2_[_loc3_].level,1))
            {
               dataProvider.addItem(_loc2_[_loc3_]);
            }
         }
         if(dataProvider.length == 0)
         {
            Alert.show(Language.BUILD_S[5],"");
            return;
         }
         buildList.dataProvider = dataProvider;
         buildBtn.label = Language.BUILD_S[0];
         this.visible = true;
      }
      
      public function showUpgradeBuild(param1:Object) : void
      {
         var _loc4_:Array = null;
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         selectedSlot = null;
         if(param1 == null)
         {
            return;
         }
         currentBuild = param1;
         var _loc2_:* = GameData.d[GamePredef.TBL_BUILDING][param1.tid];
         var _loc3_:String = _loc2_.postBuilding.replace(/(^\s*)|(\s*$)/g,"");
         dataProvider.removeAll();
         if(_loc3_ != null && _loc3_ != "")
         {
            _loc4_ = _loc3_.split("|");
            for(_loc5_ in _loc4_)
            {
               if(GameData.d[GamePredef.TBL_BUILDING][_loc4_[_loc5_]] != null)
               {
                  dataProvider.addItem(GameData.d[GamePredef.TBL_BUILDING][_loc4_[_loc5_]]);
               }
            }
         }
         else
         {
            _loc6_ = null;
            _loc7_ = _dm.gameDataIndex2[GamePredef.TBL_BUILDING][_loc2_.codeName];
            for(_loc5_ in _loc7_)
            {
               if(ToolKit.isEqual(_loc7_[_loc5_].level,Number(_loc2_.level) + 1))
               {
                  _loc6_ = _loc7_[_loc5_];
                  break;
               }
            }
            if(_loc6_ != null)
            {
               dataProvider.addItem(_loc6_);
            }
         }
         if(dataProvider.length == 0)
         {
            Alert.show(Language.BUILD_S[2],"");
            return;
         }
         buildList.dataProvider = dataProvider;
         buildBtn.label = Language.BUILD_S[1];
         this.visible = true;
      }
      
      public function set buildList(param1:Repeater) : void
      {
         var _loc2_:Object = this._1401224148buildList;
         if(_loc2_ !== param1)
         {
            this._1401224148buildList = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buildList",_loc2_,param1));
         }
      }
      
      private function slotDoubleClick(param1:MouseEvent) : void
      {
         trace("dClicked");
      }
      
      private function _ConstructionManager_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.GUILDPANEL_U[21];
         _loc1_ = buildList.currentItem;
         _loc1_ = GamePredef.TBL_BUILDING;
         _loc1_ = buildList.currentItem.id;
         _loc1_ = Language.CONSTRUCTIONMANAGER_U[0];
      }
      
      public function set myFlow(param1:Tile) : void
      {
         var _loc2_:Object = this._1060451078myFlow;
         if(_loc2_ !== param1)
         {
            this._1060451078myFlow = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myFlow",_loc2_,param1));
         }
      }
      
      public function ___ConstructionManager_BuildSlot1_click(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get close() : BasicGlowButton
      {
         return this._94756344close;
      }
      
      [Bindable(event="propertyChange")]
      public function get myFlow() : Tile
      {
         return this._1060451078myFlow;
      }
      
      public function __buildBtn_click(param1:MouseEvent) : void
      {
         buildSelect();
      }
      
      public function set close(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._94756344close;
         if(_loc2_ !== param1)
         {
            this._94756344close = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"close",_loc2_,param1));
         }
      }
   }
}

