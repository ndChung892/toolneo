package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.compDragable.CrossTeamFightPanel;
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
   import mx.controls.TextArea;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class CrossTeamFightActiveTeamInfo extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _3469809rImg:Image;
      
      public var _CrossTeamFightActiveTeamInfo_Image1:Image;
      
      private var _1668760952teamName:Label;
      
      private var _1191282484leaderName:Label;
      
      public var _CrossTeamFightActiveTeamInfo_Image2:Image;
      
      public var _CrossTeamFightActiveTeamInfo_Label5:Label;
      
      public var _CrossTeamFightActiveTeamInfo_Label3:Label;
      
      private var _1341350843memberName:TextArea;
      
      mx_internal var _watchers:Array = [];
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":250,
               "height":125,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.borderThickness = 2;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":0,
                        "y":0,
                        "width":250,
                        "percentHeight":100,
                        "horizontalScrollPolicy":"off",
                        "verticalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Image,
                           "id":"_CrossTeamFightActiveTeamInfo_Image1"
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"_CrossTeamFightActiveTeamInfo_Image2",
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"y":5};
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"teamName",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 13;
                              this.color = 16776960;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":54,
                                 "y":15,
                                 "width":90
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"areaName",
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "73";
                              this.fontSize = 13;
                              this.color = 16776960;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":15,
                                 "width":86
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"_CrossTeamFightActiveTeamInfo_Label3",
                           "stylesFactory":function():void
                           {
                              this.color = 16776960;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":5,
                                 "y":46,
                                 "width":45
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"leaderName",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":160,
                                 "x":50,
                                 "y":46
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"_CrossTeamFightActiveTeamInfo_Label5",
                           "stylesFactory":function():void
                           {
                              this.color = 16776960;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":5,
                                 "y":66,
                                 "width":45
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":TextArea,
                           "id":"memberName",
                           "stylesFactory":function():void
                           {
                              this.backgroundAlpha = 0;
                              this.color = 16777215;
                              this.borderThickness = 0;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":160,
                                 "selectable":false,
                                 "height":55,
                                 "x":50,
                                 "y":66,
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"rImg",
                           "stylesFactory":function():void
                           {
                              this.right = "2";
                              this.verticalCenter = "0";
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      private var _1666338632areaName:Label;
      
      public function CrossTeamFightActiveTeamInfo()
      {
         super();
         mx_internal::_document = this;
         this.width = 250;
         this.height = 125;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         CrossTeamFightActiveTeamInfo._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get leaderName() : Label
      {
         return this._1191282484leaderName;
      }
      
      [Bindable(event="propertyChange")]
      public function get memberName() : TextArea
      {
         return this._1341350843memberName;
      }
      
      [Bindable(event="propertyChange")]
      public function get teamName() : Label
      {
         return this._1668760952teamName;
      }
      
      public function set teamName(param1:Label) : void
      {
         var _loc2_:Object = this._1668760952teamName;
         if(_loc2_ !== param1)
         {
            this._1668760952teamName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"teamName",_loc2_,param1));
         }
      }
      
      public function init() : void
      {
         teamName.text = "";
         leaderName.text = "";
         memberName.text = "";
      }
      
      public function set memberName(param1:TextArea) : void
      {
         var _loc2_:Object = this._1341350843memberName;
         if(_loc2_ !== param1)
         {
            this._1341350843memberName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"memberName",_loc2_,param1));
         }
      }
      
      private function _CrossTeamFightActiveTeamInfo_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = ResManager.getIconUrl(4130220000240);
         _loc1_ = ResManager.getIconUrl(4130220000236);
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Language.CROSS_FIGHT_PANEL_U[124];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Language.CROSS_FIGHT_PANEL_U[125];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:CrossTeamFightActiveTeamInfo = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _CrossTeamFightActiveTeamInfo_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_CrossTeamFightActiveTeamInfoWatcherSetupUtil");
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
      
      public function refresh(param1:Object, param2:Object, param3:int) : void
      {
         var _loc4_:String = null;
         var _loc5_:int = 0;
         var _loc6_:Object = null;
         if(!param1)
         {
            init();
            return;
         }
         teamName.text = param1.teamName;
         areaName.text = "(" + param1.area + ")";
         leaderName.text = param1.leaderName;
         for(_loc4_ in param1.members)
         {
            _loc6_ = param1.members[_loc4_];
            if(Number(_loc4_) != Number(param1.leaderId))
            {
               memberName.text += _loc6_.cname + "\n";
            }
         }
         _loc5_ = CrossTeamFightPanel.TEAM_CROSSPK_STATE;
         if(!param2)
         {
            rImg.source = ResManager.getIconUrl(4130220000280);
         }
         else if(Boolean(param2) && Boolean(param3 == 4) && (!param1.win || Number(param2.leaderId) == param1.win))
         {
            rImg.source = ResManager.getIconUrl(4130220000281);
         }
         else if(Number(param1.leaderId) == param1.win)
         {
            rImg.source = ResManager.getIconUrl(4130220000226);
         }
         else if(Boolean(param2) && Number(param2.leaderId) == param1.win)
         {
            rImg.source = ResManager.getIconUrl(4130220000227);
         }
         else
         {
            rImg.source = null;
         }
      }
      
      public function set leaderName(param1:Label) : void
      {
         var _loc2_:Object = this._1191282484leaderName;
         if(_loc2_ !== param1)
         {
            this._1191282484leaderName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"leaderName",_loc2_,param1));
         }
      }
      
      public function set rImg(param1:Image) : void
      {
         var _loc2_:Object = this._3469809rImg;
         if(_loc2_ !== param1)
         {
            this._3469809rImg = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rImg",_loc2_,param1));
         }
      }
      
      private function _CrossTeamFightActiveTeamInfo_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000240);
         },function(param1:Object):void
         {
            _CrossTeamFightActiveTeamInfo_Image1.source = param1;
         },"_CrossTeamFightActiveTeamInfo_Image1.source");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000236);
         },function(param1:Object):void
         {
            _CrossTeamFightActiveTeamInfo_Image2.source = param1;
         },"_CrossTeamFightActiveTeamInfo_Image2.source");
         result[1] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            teamName.filters = param1;
         },"teamName.filters");
         result[2] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            areaName.filters = param1;
         },"areaName.filters");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_FIGHT_PANEL_U[124];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossTeamFightActiveTeamInfo_Label3.text = param1;
         },"_CrossTeamFightActiveTeamInfo_Label3.text");
         result[4] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            _CrossTeamFightActiveTeamInfo_Label3.filters = param1;
         },"_CrossTeamFightActiveTeamInfo_Label3.filters");
         result[5] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            leaderName.filters = param1;
         },"leaderName.filters");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_FIGHT_PANEL_U[125];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossTeamFightActiveTeamInfo_Label5.text = param1;
         },"_CrossTeamFightActiveTeamInfo_Label5.text");
         result[7] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            _CrossTeamFightActiveTeamInfo_Label5.filters = param1;
         },"_CrossTeamFightActiveTeamInfo_Label5.filters");
         result[8] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            memberName.filters = param1;
         },"memberName.filters");
         result[9] = binding;
         return result;
      }
      
      public function set areaName(param1:Label) : void
      {
         var _loc2_:Object = this._1666338632areaName;
         if(_loc2_ !== param1)
         {
            this._1666338632areaName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"areaName",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rImg() : Image
      {
         return this._3469809rImg;
      }
      
      [Bindable(event="propertyChange")]
      public function get areaName() : Label
      {
         return this._1666338632areaName;
      }
   }
}

