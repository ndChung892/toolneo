package com.qeedoo.ui.view.compDragable
{
   import com.adobe.crypto.MD5;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.event.GameDataEvent;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.BasicTxtButton;
   import com.qeedoo.ui.view.comp.BoxLabel;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.IntroText;
   import com.qeedoo.ui.view.comp.ItemSlot;
   import com.qeedoo.ui.view.comp.ItemSlotMaterial;
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
   import mx.containers.Canvas;
   import mx.containers.HBox;
   import mx.containers.ViewStack;
   import mx.controls.Alert;
   import mx.controls.Label;
   import mx.controls.TextInput;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.DragEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class GuildContribPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1584105757viewStack:ViewStack;
      
      private var SPE_MATERIAL:* = 2039;
      
      private var _616657662contribMaterialSlot:ItemSlotMaterial;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":400,
               "height":321.4,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_GuildContribPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":ViewStack,
                  "id":"viewStack",
                  "stylesFactory":function():void
                  {
                     this.left = "15";
                     this.right = "15";
                     this.top = "60";
                     this.bottom = "15";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"CanvasBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "label":"moneyTab",
                                 "percentWidth":100,
                                 "percentHeight":100,
                                 "horizontalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":IntroText,
                                    "id":"itxt_money",
                                    "stylesFactory":function():void
                                    {
                                       this.left = "10";
                                       this.right = "10";
                                       this.top = "10";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"height":78};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":TextInput,
                                    "id":"silverNumText",
                                    "events":{"change":"__silverNumText_change"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":85,
                                          "y":112,
                                          "width":85,
                                          "height":19,
                                          "restrict":"[0-9]",
                                          "maxChars":14
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":TextInput,
                                    "id":"goldNumText",
                                    "events":{"change":"__goldNumText_change"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":228,
                                          "y":112,
                                          "width":85,
                                          "height":19,
                                          "restrict":"[0-9]",
                                          "maxChars":14
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_GuildContribPanel_BasicTxtButton1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":39,
                                          "y":112,
                                          "width":40,
                                          "height":19
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_GuildContribPanel_BasicTxtButton2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":180,
                                          "y":112,
                                          "width":40,
                                          "height":19
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"rlb_Contrib1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":39,
                                          "y":149,
                                          "width":274
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"rlb_Contrib2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":39,
                                          "y":175,
                                          "width":274
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "label":"materialTab",
                                 "percentWidth":100,
                                 "percentHeight":100,
                                 "horizontalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_GuildContribPanel_BasicTxtButton3",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":222,
                                          "y":120,
                                          "height":20,
                                          "width":30
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BoxLabel,
                                    "id":"materialContrib",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "center";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":160,
                                          "y":120,
                                          "width":61,
                                          "height":19
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlotMaterial,
                                    "id":"contribMaterialSlot",
                                    "events":{"dragDrop":"__contribMaterialSlot_dragDrop"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":118,
                                          "y":113,
                                          "haveRequireSlot":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"tip",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16468278;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":118,
                                          "y":92,
                                          "width":160,
                                          "height":20
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":IntroText,
                                    "id":"itxt_material",
                                    "stylesFactory":function():void
                                    {
                                       this.left = "10";
                                       this.right = "10";
                                       this.top = "10";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"height":78};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"rlb_Contrib3",
                                    "stylesFactory":function():void
                                    {
                                       this.horizontalCenter = "0";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"y":162};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"rlb_Contrib4",
                                    "stylesFactory":function():void
                                    {
                                       this.horizontalCenter = "0";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"y":180.5};
                                    }
                                 })]
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"contribBtn",
                  "events":{"click":"__contribBtn_click"},
                  "stylesFactory":function():void
                  {
                     this.bottom = "30";
                     this.horizontalCenter = "-35";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"BtnStdRed",
                        "width":45
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"_GuildContribPanel_BasicGlowButton2",
                  "events":{"click":"___GuildContribPanel_BasicGlowButton2_click"},
                  "stylesFactory":function():void
                  {
                     this.bottom = "30";
                     this.horizontalCenter = "35";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"BtnStdRed",
                        "width":45
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":HBox,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":25,
                        "y":40,
                        "styleName":"HTabWrapper",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"moneyBtn",
                           "events":{"click":"__moneyBtn_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HorizontalTab",
                                 "width":50
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"materialBtn",
                           "events":{"click":"__materialBtn_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HorizontalTab",
                                 "width":50
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      private var _114843tip:Label;
      
      public var _GuildContribPanel_BasicTxtButton3:BasicTxtButton;
      
      private var _1456922671rlb_Contrib3:RoundedLabel;
      
      public var _GuildContribPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _1456922673rlb_Contrib1:RoundedLabel;
      
      private var RARE_MATERIAL:* = 1;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1732852661materialBtn:BasicGlowButton;
      
      private var _526049965goldNumText:TextInput;
      
      public var _GuildContribPanel_BasicGlowButton2:BasicGlowButton;
      
      private var _1682497030silverNumText:TextInput;
      
      private var _631549699contribBtn:BasicGlowButton;
      
      private var _core:Core = Core.getInstance();
      
      private var _1286465560itxt_money:IntroText;
      
      mx_internal var _watchers:Array = [];
      
      private var UNKNOWN_MATERIAL:* = 10000;
      
      private var _1456922672rlb_Contrib2:RoundedLabel;
      
      private var _1456922670rlb_Contrib4:RoundedLabel;
      
      private var _332386948moneyBtn:BasicGlowButton;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _280939890materialContrib:BoxLabel;
      
      mx_internal var _bindings:Array = [];
      
      private var _470795009itxt_material:IntroText;
      
      private var COMMON_MATERIAL:* = 2;
      
      public var _GuildContribPanel_BasicTxtButton1:BasicTxtButton;
      
      public var _GuildContribPanel_BasicTxtButton2:BasicTxtButton;
      
      public function GuildContribPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 400;
         this.height = 321.4;
         this.styleName = "StandardContent";
         this.x = 60;
         this.y = 60;
         this.addEventListener("creationComplete",___GuildContribPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         GuildContribPanel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get contribBtn() : BasicGlowButton
      {
         return this._631549699contribBtn;
      }
      
      public function set contribBtn(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._631549699contribBtn;
         if(_loc2_ !== param1)
         {
            this._631549699contribBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"contribBtn",_loc2_,param1));
         }
      }
      
      public function set silverNumText(param1:TextInput) : void
      {
         var _loc2_:Object = this._1682497030silverNumText;
         if(_loc2_ !== param1)
         {
            this._1682497030silverNumText = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"silverNumText",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get contribMaterialSlot() : ItemSlotMaterial
      {
         return this._616657662contribMaterialSlot;
      }
      
      public function __goldNumText_change(param1:Event) : void
      {
         onContribution();
      }
      
      private function silverToGuildMoney(param1:Number) : Number
      {
         if(isNaN(param1))
         {
            return 0;
         }
         return param1;
      }
      
      public function init() : void
      {
         itxt_money.content.verticalScrollPolicy = "off";
         itxt_material.content.verticalScrollPolicy = "off";
      }
      
      public function set contribMaterialSlot(param1:ItemSlotMaterial) : void
      {
         var _loc2_:Object = this._616657662contribMaterialSlot;
         if(_loc2_ !== param1)
         {
            this._616657662contribMaterialSlot = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"contribMaterialSlot",_loc2_,param1));
         }
      }
      
      public function set itxt_material(param1:IntroText) : void
      {
         var _loc2_:Object = this._470795009itxt_material;
         if(_loc2_ !== param1)
         {
            this._470795009itxt_material = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itxt_material",_loc2_,param1));
         }
      }
      
      private function contribMReturn(param1:Object) : void
      {
         var _loc2_:Number = Number(param1);
         if(_loc2_ != 0)
         {
            contribMaterialSlot.update();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get silverNumText() : TextInput
      {
         return this._1682497030silverNumText;
      }
      
      private function _GuildContribPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_U[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildContribPanel_BasicTitleCanvas1.text = param1;
         },"_GuildContribPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_S[61];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            itxt_money.text = param1;
         },"itxt_money.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDCONTRIBPANEL_U[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildContribPanel_BasicTxtButton1.label = param1;
         },"_GuildContribPanel_BasicTxtButton1.label");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDCONTRIBPANEL_U[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildContribPanel_BasicTxtButton2.label = param1;
         },"_GuildContribPanel_BasicTxtButton2.label");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDCONTRIBPANEL_U[17].toString().replace("{num}",0);
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            rlb_Contrib1.text = param1;
         },"rlb_Contrib1.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDCONTRIBPANEL_U[18].toString().replace("{num}",0);
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            rlb_Contrib2.text = param1;
         },"rlb_Contrib2.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDCONTRIBPANEL_U[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildContribPanel_BasicTxtButton3.label = param1;
         },"_GuildContribPanel_BasicTxtButton3.label");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_S[62];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            itxt_material.text = param1;
         },"itxt_material.text");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDCONTRIBPANEL_U[17].toString().replace("{num}",0);
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            rlb_Contrib3.text = param1;
         },"rlb_Contrib3.text");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDCONTRIBPANEL_U[19].toString().replace("{item}",Language.GUILDCONTRIBPANEL_U[10]).replace("{num}",0);
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            rlb_Contrib4.text = param1;
         },"rlb_Contrib4.text");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDCONTRIBPANEL_U[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            contribBtn.label = param1;
         },"contribBtn.label");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDCONTRIBPANEL_U[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildContribPanel_BasicGlowButton2.label = param1;
         },"_GuildContribPanel_BasicGlowButton2.label");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDCONTRIBPANEL_U[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            moneyBtn.label = param1;
         },"moneyBtn.label");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDCONTRIBPANEL_U[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            materialBtn.label = param1;
         },"materialBtn.label");
         result[13] = binding;
         return result;
      }
      
      public function ___GuildContribPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      public function set tip(param1:Label) : void
      {
         var _loc2_:Object = this._114843tip;
         if(_loc2_ !== param1)
         {
            this._114843tip = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tip",_loc2_,param1));
         }
      }
      
      public function __contribMaterialSlot_dragDrop(param1:DragEvent) : void
      {
         dragDropHandler(param1);
      }
      
      private function selectBtnClicked(param1:Event) : void
      {
         if(param1.target == moneyBtn)
         {
            viewStack.selectedIndex = 0;
            materialBtn.selected = false;
            moneyBtn.selected = true;
            contribBtn.enabled = true;
         }
         else
         {
            if(param1.target != materialBtn)
            {
               return;
            }
            viewStack.selectedIndex = 1;
            materialBtn.selected = true;
            moneyBtn.selected = false;
            contribBtn.enabled = false;
         }
      }
      
      public function __contribBtn_click(param1:MouseEvent) : void
      {
         contribute();
      }
      
      public function reset() : void
      {
         contribMaterialSlot.clean();
         materialContrib.text = "";
         silverNumText.text = "";
         goldNumText.text = "";
      }
      
      private function contributeMoney() : void
      {
         var gold:String;
         var func:Function;
         var silver:String;
         var sNum:Number = NaN;
         var gNum:Number = NaN;
         var gfunc:Function = null;
         if(!_core.delPass)
         {
            gfunc = function(param1:String):void
            {
               _core.remote.call("unlockMoney",null,MD5.hash(param1));
            };
            _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.DELETE_BY_PASS[1],gfunc);
            return;
         }
         silver = silverNumText.text;
         gold = goldNumText.text;
         sNum = Number(trimFrontZero(silver));
         gNum = Number(trimFrontZero(gold));
         if(sNum <= 0 && gNum <= 0)
         {
            return;
         }
         if(sNum % 1000 != 0)
         {
            Alert.show(Language.GUILDCONTRIBPANEL_U[0],"");
            return;
         }
         func = function(param1:CloseEvent):void
         {
            if(param1 != null && param1.detail == Alert.OK)
            {
               Core.getInstance().remote.contribMoney({
                  "g":gNum,
                  "s":sNum
               });
            }
            reset();
         };
         if(_core.player.gold < gNum)
         {
            Alert.show(Language.GUILDCONTRIBPANEL_U[1],"",Alert.OK);
         }
         else if(_core.player.money < sNum)
         {
            Alert.show(Language.GUILDCONTRIBPANEL_U[2],"",Alert.OK);
         }
         else
         {
            Alert.show(Language.GUILDCONTRIBPANEL_U[3],"",Alert.OK | Alert.NO,null,func);
         }
      }
      
      private function setItemNumHandler(param1:Number) : *
      {
         contribMaterialSlot.stackNum = param1;
         materialContrib.text = param1.toString();
         contribBtn.enabled = true;
         onContribMaterialTab(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get goldNumText() : TextInput
      {
         return this._526049965goldNumText;
      }
      
      public function ___GuildContribPanel_BasicGlowButton2_click(param1:MouseEvent) : void
      {
         hide();
      }
      
      private function dataLoaded(param1:GameDataEvent) : void
      {
         var _loc4_:NumPanel = null;
         param1.currentTarget.removeEventListener(GameDataEvent.DATA_RECIEVED + "_" + param1.data.type + "_" + param1.data.index,dataLoaded);
         var _loc2_:Object = Core.getInstance().data.getGameData(param1.data.type,param1.data.index);
         var _loc3_:Number = Number(_loc2_.color);
         if(_loc3_ < 2)
         {
            contribMaterialSlot.clean();
            tip.text = Language.GUILDCONTRIBPANEL_U[7];
         }
         else
         {
            tip.text = "";
            _loc4_ = NumPanel(_core.view.getUI(ViewManager.PANEL_NUM));
            _loc4_.showSelected(contribMaterialSlot,null,NumPanel.TYPE_BUY,setItemNumHandler,cancelHandler);
            _loc4_.closeWith(this);
         }
      }
      
      private function createPanel() : void
      {
         moneyBtn.selected = true;
         materialBtn.selected = false;
         viewStack.selectedIndex = 0;
      }
      
      public function set materialBtn(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1732852661materialBtn;
         if(_loc2_ !== param1)
         {
            this._1732852661materialBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"materialBtn",_loc2_,param1));
         }
      }
      
      private function contribute() : void
      {
         if(viewStack.selectedIndex == 0)
         {
            contributeMoney();
         }
         else
         {
            contributeMaterial();
         }
      }
      
      private function trimFrontZero(param1:String) : String
      {
         var _loc2_:* = 0;
         while(_loc2_ < param1.length)
         {
            if(param1.charAt(_loc2_) != "0")
            {
               return param1.substr(_loc2_);
            }
            _loc2_++;
         }
         return "";
      }
      
      private function cancelHandler() : void
      {
         contribMaterialSlot.clean();
         materialContrib.text = "";
      }
      
      [Bindable(event="propertyChange")]
      public function get materialContrib() : BoxLabel
      {
         return this._280939890materialContrib;
      }
      
      private function getMaterialType(param1:*) : *
      {
         switch(Number(param1))
         {
            case 16:
            case 7:
            case 18:
            case 22:
            case 25:
            case 27:
               return COMMON_MATERIAL;
            case 24:
            case 21:
            case 23:
            case 26:
            case 28:
               return RARE_MATERIAL;
            case 2039:
               return SPE_MATERIAL;
            default:
               return UNKNOWN_MATERIAL;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get moneyBtn() : BasicGlowButton
      {
         return this._332386948moneyBtn;
      }
      
      private function dragDropHandler(param1:DragEvent) : void
      {
         var _loc2_:ItemSlot = null;
         var _loc3_:Object = null;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Object = null;
         var _loc7_:Number = NaN;
         var _loc8_:NumPanel = null;
         if(param1.dragSource.hasFormat("slot"))
         {
            _loc2_ = param1.dragSource.dataForFormat("slot") as ItemSlot;
            if(_loc2_ == contribMaterialSlot)
            {
               return;
            }
            _loc3_ = _core.getTemplateData(_loc2_.type,_loc2_.giid);
            if(!_loc3_)
            {
               return;
            }
            if(!(ToolKit.isEqual(_loc3_.kind,GamePredef.ITEM_KIND_MATERIAL) || ToolKit.isEqual(_loc3_.id,2039)))
            {
               tip.text = Language.GUILDCONTRIBPANEL_U[8];
               return;
            }
            _loc4_ = _loc2_.type;
            _loc5_ = Number(_loc2_.slotData.itemId);
            if(_core.data.hasData(_loc4_,_loc5_))
            {
               _loc6_ = _core.data.getGameData(_loc4_,_loc5_);
               _loc7_ = Number(_loc6_.color);
               if(_loc7_ < 2 && !ToolKit.isEqual(_loc3_.id,2039))
               {
                  contribMaterialSlot.clean();
                  tip.text = Language.GUILDCONTRIBPANEL_U[7];
               }
               else
               {
                  tip.text = "";
                  _loc8_ = NumPanel(_core.view.getUI(ViewManager.PANEL_NUM));
                  _loc8_.showSelected(_loc2_,null,NumPanel.TYPE_BUY,setItemNumHandler,cancelHandler);
                  _loc8_.closeWith(this);
               }
            }
            else
            {
               _core.data.addEventListener(GameDataEvent.DATA_RECIEVED + "_" + _loc4_ + "_" + _loc5_,dataLoaded);
               _core.data.getGameData(_loc4_,_loc5_);
            }
         }
      }
      
      private function onContribution() : void
      {
         var _loc1_:Number = silverToContribution(parseInt(silverNumText.text)) + goldToContribution(parseInt(goldNumText.text));
         rlb_Contrib1.text = Language.GUILDCONTRIBPANEL_U[17].toString().replace("{num}",Math.floor(_loc1_));
         var _loc2_:Number = silverToGuildMoney(parseInt(silverNumText.text)) + goldToGuildMoney(parseInt(goldNumText.text));
         rlb_Contrib2.text = Language.GUILDCONTRIBPANEL_U[18].toString().replace("{num}",Math.floor(_loc2_));
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:GuildContribPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _GuildContribPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_GuildContribPanelWatcherSetupUtil");
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
      
      private function silverToContribution(param1:Number) : Number
      {
         if(isNaN(param1))
         {
            return 0;
         }
         return param1 / 8;
      }
      
      [Bindable(event="propertyChange")]
      public function get tip() : Label
      {
         return this._114843tip;
      }
      
      public function __materialBtn_click(param1:MouseEvent) : void
      {
         selectBtnClicked(param1);
      }
      
      public function set rlb_Contrib2(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1456922672rlb_Contrib2;
         if(_loc2_ !== param1)
         {
            this._1456922672rlb_Contrib2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rlb_Contrib2",_loc2_,param1));
         }
      }
      
      public function set rlb_Contrib3(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1456922671rlb_Contrib3;
         if(_loc2_ !== param1)
         {
            this._1456922671rlb_Contrib3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rlb_Contrib3",_loc2_,param1));
         }
      }
      
      public function set rlb_Contrib4(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1456922670rlb_Contrib4;
         if(_loc2_ !== param1)
         {
            this._1456922670rlb_Contrib4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rlb_Contrib4",_loc2_,param1));
         }
      }
      
      public function set rlb_Contrib1(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1456922673rlb_Contrib1;
         if(_loc2_ !== param1)
         {
            this._1456922673rlb_Contrib1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rlb_Contrib1",_loc2_,param1));
         }
      }
      
      public function set goldNumText(param1:TextInput) : void
      {
         var _loc2_:Object = this._526049965goldNumText;
         if(_loc2_ !== param1)
         {
            this._526049965goldNumText = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"goldNumText",_loc2_,param1));
         }
      }
      
      private function contributeMaterial() : void
      {
         var func:Function;
         var mNum:Number = NaN;
         if(contribMaterialSlot.slotData == null)
         {
            return;
         }
         mNum = contribMaterialSlot.stackNum;
         if(contribMaterialSlot.slotData == null || mNum <= 0 || mNum > contribMaterialSlot.slotData.stackNum)
         {
            Alert.show(Language.GUILDCONTRIBPANEL_U[4],"",Alert.OK);
            return;
         }
         func = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               Core.getInstance().remote.call("contribMaterial",new Responder(contribMReturn),{
                  "num":mNum,
                  "slotId":Number(contribMaterialSlot.slotData.id)
               });
               reset();
               contribBtn.enabled = false;
            }
         };
         Alert.show(Language.GUILDCONTRIBPANEL_U[5],"",Alert.YES | Alert.NO,this,func);
      }
      
      [Bindable(event="propertyChange")]
      public function get materialBtn() : BasicGlowButton
      {
         return this._1732852661materialBtn;
      }
      
      private function goldToContribution(param1:Number) : Number
      {
         if(isNaN(param1))
         {
            return 0;
         }
         return param1 * 2000 / 8;
      }
      
      public function set viewStack(param1:ViewStack) : void
      {
         var _loc2_:Object = this._1584105757viewStack;
         if(_loc2_ !== param1)
         {
            this._1584105757viewStack = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"viewStack",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rlb_Contrib1() : RoundedLabel
      {
         return this._1456922673rlb_Contrib1;
      }
      
      public function set itxt_money(param1:IntroText) : void
      {
         var _loc2_:Object = this._1286465560itxt_money;
         if(_loc2_ !== param1)
         {
            this._1286465560itxt_money = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itxt_money",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rlb_Contrib3() : RoundedLabel
      {
         return this._1456922671rlb_Contrib3;
      }
      
      [Bindable(event="propertyChange")]
      public function get rlb_Contrib4() : RoundedLabel
      {
         return this._1456922670rlb_Contrib4;
      }
      
      private function onContribMaterialTab(param1:Number) : void
      {
         var _loc2_:Number = Number(contribMaterialSlot.slotData.itemId);
         var _loc3_:int = contribMaterialSlot.type;
         var _loc4_:int = int(contribMaterialSlot.slotData.tid);
         var _loc5_:Object = _core.data.getGameData(_loc3_,_loc2_);
         var _loc6_:Number = Number(_loc5_.color);
         var _loc7_:Object = new Object();
         _loc7_.type = getMaterialType(_loc4_);
         _loc7_.num = Math.floor(param1 * Math.pow(_loc6_,5) / 8);
         if(_loc7_.type == COMMON_MATERIAL)
         {
            _loc7_.contrib = Math.floor(param1 * Math.pow(_loc6_,5) * 50 / 8);
            _loc7_.materialName = Language.GUILDBUILDPROCESS_U[3];
         }
         else if(_loc7_.type == RARE_MATERIAL)
         {
            _loc7_.contrib = Math.floor(param1 * Math.pow(_loc6_,5) * 100 / 8);
            _loc7_.materialName = Language.GUILDBUILDPROCESS_U[4];
         }
         else if(_loc7_.type == SPE_MATERIAL)
         {
            _loc7_.contrib = param1 * 100;
            _loc7_.materialName = Language.GUILDBUILDPROCESS_U[5];
            _loc7_.num = param1;
         }
         else
         {
            _loc7_ = null;
         }
         rlb_Contrib3.text = Language.GUILDCONTRIBPANEL_U[17].toString().replace("{num}",Math.floor(_loc7_.contrib));
         rlb_Contrib4.text = Language.GUILDCONTRIBPANEL_U[19].toString().replace("{item}",_loc7_.materialName).replace("{num}",_loc7_.num);
      }
      
      [Bindable(event="propertyChange")]
      public function get rlb_Contrib2() : RoundedLabel
      {
         return this._1456922672rlb_Contrib2;
      }
      
      [Bindable(event="propertyChange")]
      public function get viewStack() : ViewStack
      {
         return this._1584105757viewStack;
      }
      
      override public function set visible(param1:Boolean) : void
      {
         if(param1)
         {
            reset();
         }
         super.visible = param1;
      }
      
      public function __moneyBtn_click(param1:MouseEvent) : void
      {
         selectBtnClicked(param1);
      }
      
      public function __silverNumText_change(param1:Event) : void
      {
         onContribution();
      }
      
      private function goldToGuildMoney(param1:Number) : Number
      {
         if(isNaN(param1))
         {
            return 0;
         }
         return param1 * 2000;
      }
      
      public function set materialContrib(param1:BoxLabel) : void
      {
         var _loc2_:Object = this._280939890materialContrib;
         if(_loc2_ !== param1)
         {
            this._280939890materialContrib = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"materialContrib",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get itxt_money() : IntroText
      {
         return this._1286465560itxt_money;
      }
      
      public function set moneyBtn(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._332386948moneyBtn;
         if(_loc2_ !== param1)
         {
            this._332386948moneyBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moneyBtn",_loc2_,param1));
         }
      }
      
      private function _GuildContribPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.GUILDPANEL_U[13];
         _loc1_ = Language.GUILDPANEL_S[61];
         _loc1_ = Language.GUILDCONTRIBPANEL_U[11];
         _loc1_ = Language.GUILDCONTRIBPANEL_U[13];
         _loc1_ = Language.GUILDCONTRIBPANEL_U[17].toString().replace("{num}",0);
         _loc1_ = Language.GUILDCONTRIBPANEL_U[18].toString().replace("{num}",0);
         _loc1_ = Language.GUILDCONTRIBPANEL_U[14];
         _loc1_ = Language.GUILDPANEL_S[62];
         _loc1_ = Language.GUILDCONTRIBPANEL_U[17].toString().replace("{num}",0);
         _loc1_ = Language.GUILDCONTRIBPANEL_U[19].toString().replace("{item}",Language.GUILDCONTRIBPANEL_U[10]).replace("{num}",0);
         _loc1_ = Language.GUILDCONTRIBPANEL_U[15];
         _loc1_ = Language.GUILDCONTRIBPANEL_U[16];
         _loc1_ = Language.GUILDCONTRIBPANEL_U[9];
         _loc1_ = Language.GUILDCONTRIBPANEL_U[10];
      }
      
      [Bindable(event="propertyChange")]
      public function get itxt_material() : IntroText
      {
         return this._470795009itxt_material;
      }
   }
}

