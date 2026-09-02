package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.object.Building;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.LinkTextArea;
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
   import mx.controls.Alert;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class GuildBuildProcess extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var requireStr:String = "";
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":480,
               "height":354,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_GuildBuildProcess_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":15,
                        "y":40,
                        "width":180,
                        "height":271,
                        "styleName":"CanvasBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Image,
                           "id":"buildImage",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":17,
                                 "y":20,
                                 "width":45,
                                 "height":39
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"buildName",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":80,
                                 "y":10,
                                 "width":100
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "stylesFactory":function():void
                           {
                              this.left = "10";
                              this.right = "10";
                              this.top = "80";
                              this.bottom = "10";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"RoundedGradientBorder",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":LinkTextArea,
                                    "id":"description",
                                    "stylesFactory":function():void
                                    {
                                       this.left = "8";
                                       this.right = "8";
                                       this.top = "8";
                                       this.bottom = "8";
                                       this.backgroundAlpha = 0;
                                       this.color = 16777215;
                                       this.borderStyle = "none";
                                    }
                                 })]
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"_GuildBuildProcess_Label2",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":200,
                        "y":60,
                        "width":53
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.left = "260";
                     this.right = "15";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":40,
                        "height":271,
                        "styleName":"RoundedGradientBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":LinkTextArea,
                           "id":"require",
                           "stylesFactory":function():void
                           {
                              this.left = "8";
                              this.right = "8";
                              this.top = "8";
                              this.bottom = "8";
                              this.backgroundAlpha = 0;
                              this.color = 16777215;
                              this.borderStyle = "none";
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"finishBtn",
                  "events":{"click":"__finishBtn_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":16,
                        "y":314,
                        "width":56,
                        "styleName":"BtnStdRed"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"cancelBtn",
                  "events":{"click":"__cancelBtn_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":103,
                        "y":314,
                        "width":56,
                        "styleName":"BtnStdRed"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"_GuildBuildProcess_BasicGlowButton3",
                  "events":{"click":"___GuildBuildProcess_BasicGlowButton3_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":383,
                        "y":314,
                        "width":56,
                        "styleName":"BtnStdRed"
                     };
                  }
               })]
            };
         }
      });
      
      mx_internal var _watchers:Array = [];
      
      private var _476548482cancelBtn:BasicGlowButton;
      
      private var nextBuild:Object = null;
      
      public var _GuildBuildProcess_Label2:Label;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1724546052description:LinkTextArea;
      
      public var _GuildBuildProcess_BasicTitleCanvas1:BasicTitleCanvas;
      
      mx_internal var _bindings:Array = [];
      
      private var _1401172455buildName:Label;
      
      public var _GuildBuildProcess_BasicGlowButton3:BasicGlowButton;
      
      private var _1095696741require:LinkTextArea;
      
      private var guild:Object = null;
      
      private var currentBuild:Building = null;
      
      private var _490944627buildImage:Image;
      
      private var _591318217finishBtn:BasicGlowButton;
      
      private var _core:Core = Core.getInstance();
      
      public function GuildBuildProcess()
      {
         super();
         mx_internal::_document = this;
         this.width = 480;
         this.height = 354;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         GuildBuildProcess._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get cancelBtn() : BasicGlowButton
      {
         return this._476548482cancelBtn;
      }
      
      private function _GuildBuildProcess_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.BUILD_S[7];
         _loc1_ = Language.GUILDBUILDPROCESS_U[7];
         _loc1_ = Language.GUILDBUILDPROCESS_U[8];
         _loc1_ = Language.GUILDBUILDPROCESS_U[9];
         _loc1_ = Language.GUILDBUILDPROCESS_U[10];
         _loc1_ = Language.GUILDBUILDPROCESS_U[11];
      }
      
      public function set cancelBtn(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._476548482cancelBtn;
         if(_loc2_ !== param1)
         {
            this._476548482cancelBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cancelBtn",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get require() : LinkTextArea
      {
         return this._1095696741require;
      }
      
      [Bindable(event="propertyChange")]
      public function get description() : LinkTextArea
      {
         return this._1724546052description;
      }
      
      [Bindable(event="propertyChange")]
      public function get buildImage() : Image
      {
         return this._490944627buildImage;
      }
      
      public function set finishBtn(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._591318217finishBtn;
         if(_loc2_ !== param1)
         {
            this._591318217finishBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"finishBtn",_loc2_,param1));
         }
      }
      
      private function cancelBuild() : void
      {
         Alert.show(Language.GUILDBUILDPROCESS_U[6],"",Alert.YES | Alert.NO,null,handler);
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:GuildBuildProcess = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _GuildBuildProcess_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_GuildBuildProcessWatcherSetupUtil");
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
      
      public function ___GuildBuildProcess_BasicGlowButton3_click(param1:MouseEvent) : void
      {
         hide();
      }
      
      public function set buildImage(param1:Image) : void
      {
         var _loc2_:Object = this._490944627buildImage;
         if(_loc2_ !== param1)
         {
            this._490944627buildImage = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buildImage",_loc2_,param1));
         }
      }
      
      private function finishBuild() : void
      {
         if(ToolKit.isEqual(currentBuild.tid,GamePredef.IN_BUILDING))
         {
            _core.remote.finishCreate(currentBuild.id);
         }
         else
         {
            _core.remote.finishUpgrade(currentBuild.id);
         }
         hide();
      }
      
      [Bindable(event="propertyChange")]
      public function get buildName() : Label
      {
         return this._1401172455buildName;
      }
      
      public function __cancelBtn_click(param1:MouseEvent) : void
      {
         cancelBuild();
      }
      
      public function __finishBtn_click(param1:MouseEvent) : void
      {
         finishBuild();
      }
      
      private function checkRequire() : void
      {
         var _loc2_:Object = null;
         var _loc1_:String = "";
         requireStr = "";
         if(Number(nextBuild.moneyCost) > 0)
         {
            if(Number(guild.money) < Number(nextBuild.moneyCost))
            {
               _loc1_ = "<font color=\'#FF0000\'>" + "(" + guild.money + "/" + nextBuild.moneyCost + ")" + "</font>";
            }
            else
            {
               _loc1_ = "(" + guild.money + "/" + nextBuild.moneyCost + ")";
            }
            requireStr += "<br>" + Language.GUILDBUILDPROCESS_U[1] + _loc1_ + "</br>";
         }
         if(Number(nextBuild.expCost) > 0)
         {
            if(Number(guild.exp) < Number(nextBuild.expCost))
            {
               _loc1_ = "<font color=\'#FF0000\'>" + "(" + guild.exp + "/" + nextBuild.expCost + ")" + "</font>";
            }
            else
            {
               _loc1_ = "(" + guild.exp + "/" + nextBuild.expCost + ")";
            }
            requireStr += "<br>" + Language.GUILDBUILDPROCESS_U[2] + _loc1_ + "</br>";
         }
         if(Number(nextBuild.genMCost) > 0)
         {
            _loc2_ = _core.getGuildItemNum(GamePredef.TBL_ITEM_TEMPLATE,GamePredef.GUILD_GENERAL_M).num;
            if(Number(_loc2_) < Number(nextBuild.genMCost))
            {
               _loc1_ = "<font color=\'#FF0000\'>" + "(" + _loc2_ + "/" + nextBuild.genMCost + ")" + "</font>";
            }
            else
            {
               _loc1_ = "(" + _loc2_ + "/" + nextBuild.genMCost + ")";
            }
            requireStr += "<br>" + Language.GUILDBUILDPROCESS_U[3] + _loc1_ + "</br>";
         }
         if(Number(nextBuild.rareMCost) > 0)
         {
            _loc2_ = _core.getGuildItemNum(GamePredef.TBL_ITEM_TEMPLATE,GamePredef.GUILD_RARE_M).num;
            if(Number(_loc2_) < Number(nextBuild.rareMCost))
            {
               _loc1_ = "<font color=\'#FF0000\'>" + "(" + _loc2_ + "/" + nextBuild.rareMCost + ")" + "</font>";
            }
            else
            {
               _loc1_ = "(" + _loc2_ + "/" + nextBuild.rareMCost + ")";
            }
            requireStr += "<br>" + Language.GUILDBUILDPROCESS_U[4] + _loc1_ + "</br>";
         }
         if(Number(nextBuild.spMCost) > 0)
         {
            _loc2_ = _core.getGuildItemNum(GamePredef.TBL_ITEM_TEMPLATE,GamePredef.GUILD_SPE_M).num;
            if(Number(_loc2_) < Number(nextBuild.spMCost))
            {
               _loc1_ = "<font color=\'#FF0000\'>" + "(" + _loc2_ + "/" + nextBuild.spMCost + ")" + "</font>";
            }
            else
            {
               _loc1_ = "(" + _loc2_ + "/" + nextBuild.spMCost + ")";
            }
            requireStr += "<br>" + Language.GUILDBUILDPROCESS_U[5] + _loc1_ + "</br>";
         }
         require.htmlText += requireStr;
      }
      
      public function set buildName(param1:Label) : void
      {
         var _loc2_:Object = this._1401172455buildName;
         if(_loc2_ !== param1)
         {
            this._1401172455buildName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buildName",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get finishBtn() : BasicGlowButton
      {
         return this._591318217finishBtn;
      }
      
      private function handler(param1:CloseEvent) : void
      {
         if(param1 != null && param1.detail == Alert.YES)
         {
            _core.remote.call("resetConstruction",null,currentBuild.id);
         }
         hide();
      }
      
      private function checkBtnEnable() : void
      {
         var _loc1_:Object = _core.getGuildItemNum(GamePredef.TBL_ITEM_TEMPLATE,GamePredef.GUILD_GENERAL_M).num;
         var _loc2_:Object = _core.getGuildItemNum(GamePredef.TBL_ITEM_TEMPLATE,GamePredef.GUILD_RARE_M).num;
         var _loc3_:Object = _core.getGuildItemNum(GamePredef.TBL_ITEM_TEMPLATE,GamePredef.GUILD_SPE_M).num;
         if(Number(guild.money) >= Number(nextBuild.moneyCost) && Number(guild.exp) >= Number(nextBuild.expCost) && Number(_loc1_) >= Number(nextBuild.genMCost) && Number(_loc2_) >= Number(nextBuild.rareMCost) && Number(_loc3_) >= Number(nextBuild.spMCost))
         {
            finishBtn.enabled = true;
         }
         else
         {
            finishBtn.enabled = false;
         }
      }
      
      public function set require(param1:LinkTextArea) : void
      {
         var _loc2_:Object = this._1095696741require;
         if(_loc2_ !== param1)
         {
            this._1095696741require = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"require",_loc2_,param1));
         }
      }
      
      private function _GuildBuildProcess_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BUILD_S[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildBuildProcess_BasicTitleCanvas1.text = param1;
         },"_GuildBuildProcess_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDBUILDPROCESS_U[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            buildName.text = param1;
         },"buildName.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDBUILDPROCESS_U[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildBuildProcess_Label2.text = param1;
         },"_GuildBuildProcess_Label2.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDBUILDPROCESS_U[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            finishBtn.label = param1;
         },"finishBtn.label");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDBUILDPROCESS_U[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            cancelBtn.label = param1;
         },"cancelBtn.label");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDBUILDPROCESS_U[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildBuildProcess_BasicGlowButton3.label = param1;
         },"_GuildBuildProcess_BasicGlowButton3.label");
         result[5] = binding;
         return result;
      }
      
      public function showBuild(param1:Object) : void
      {
         currentBuild = param1 as Building;
         var _loc2_:String = currentBuild.buildState;
         nextBuild = GameData.d[GamePredef.TBL_BUILDING][Number(_loc2_)];
         buildImage.source = ResManager.getIconUrl(nextBuild.iconCode);
         buildName.text = nextBuild.name;
         description.text = nextBuild.description;
         guild = _core.player.guild;
         if(guild == null)
         {
            Alert.show(Language.GUILDBUILDPROCESS_U[0],"");
            return;
         }
         require.htmlText = "";
         checkRequire();
         checkBtnEnable();
         show();
      }
      
      public function set description(param1:LinkTextArea) : void
      {
         var _loc2_:Object = this._1724546052description;
         if(_loc2_ !== param1)
         {
            this._1724546052description = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"description",_loc2_,param1));
         }
      }
   }
}

