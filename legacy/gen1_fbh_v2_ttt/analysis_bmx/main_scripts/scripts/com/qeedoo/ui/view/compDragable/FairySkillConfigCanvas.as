package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DelayButton;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.FairySkillComp;
   import com.qeedoo.ui.view.comp.FairySkillListComp;
   import com.qeedoo.ui.view.comp.IntroText;
   import com.qeedoo.ui.view.comp.ItemSlot;
   import com.qeedoo.ui.view.comp.PageSelector;
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
   import mx.containers.VBox;
   import mx.controls.Alert;
   import mx.controls.CheckBox;
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class FairySkillConfigCanvas extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _3616s3:FairySkillComp;
      
      private var _1872787359saveBtn:DelayButton;
      
      public var _FairySkillConfigCanvas_IntroText1:IntroText;
      
      private var _102982482list0:FairySkillListComp;
      
      private var skillAC:Array = new Array();
      
      private var _476548482cancelBtn:CheckBox;
      
      private var _3615s2:FairySkillComp;
      
      public var _FairySkillConfigCanvas_Label1:Label;
      
      public var _FairySkillConfigCanvas_Label2:Label;
      
      public var _FairySkillConfigCanvas_Label3:Label;
      
      private var _3619s6:FairySkillComp;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _102982484list2:FairySkillListComp;
      
      private var _core:Core = Core.getInstance();
      
      private var _3614s1:FairySkillComp;
      
      private var _3618s5:FairySkillComp;
      
      mx_internal var _watchers:Array = [];
      
      private var useIndex:int = -1;
      
      private var _607339634pageSelector:PageSelector;
      
      private var SKILL_COUNT_PER_PAGE:int = 7;
      
      private var _3613s0:FairySkillComp;
      
      private var _102982483list1:FairySkillListComp;
      
      private var _3617s4:FairySkillComp;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _fairy:Object;
      
      private var SKILL_LIST_COUNT:int = 3;
      
      public var saveAlert:Boolean = false;
      
      public var _FairySkillConfigCanvas_BasicTitleCanvas1:BasicTitleCanvas;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":420,
               "height":400,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_FairySkillConfigCanvas_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":30,
                        "width":420,
                        "height":370,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "stylesFactory":function():void
                           {
                              this.left = "10";
                              this.top = "5";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":120,
                                 "height":358,
                                 "styleName":"CanvasBorder",
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_FairySkillConfigCanvas_Label1",
                                    "stylesFactory":function():void
                                    {
                                       this.left = "5";
                                       this.top = "4";
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"width":103};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":VBox,
                                    "stylesFactory":function():void
                                    {
                                       this.verticalGap = 1;
                                       this.horizontalCenter = "0";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":25,
                                          "width":108,
                                          "height":297,
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":FairySkillComp,
                                             "id":"s0"
                                          }),new UIComponentDescriptor({
                                             "type":FairySkillComp,
                                             "id":"s1"
                                          }),new UIComponentDescriptor({
                                             "type":FairySkillComp,
                                             "id":"s2"
                                          }),new UIComponentDescriptor({
                                             "type":FairySkillComp,
                                             "id":"s3"
                                          }),new UIComponentDescriptor({
                                             "type":FairySkillComp,
                                             "id":"s4"
                                          }),new UIComponentDescriptor({
                                             "type":FairySkillComp,
                                             "id":"s5"
                                          }),new UIComponentDescriptor({
                                             "type":FairySkillComp,
                                             "id":"s6"
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":PageSelector,
                                    "id":"pageSelector",
                                    "stylesFactory":function():void
                                    {
                                       this.horizontalCenter = "0";
                                       this.bottom = "5";
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "stylesFactory":function():void
                           {
                              this.right = "18";
                              this.top = "5";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":265,
                                 "height":107,
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":IntroText,
                                    "id":"_FairySkillConfigCanvas_IntroText1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":270,
                                          "height":103,
                                          "x":0,
                                          "y":0
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "stylesFactory":function():void
                           {
                              this.right = "18";
                              this.bottom = "8";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":270,
                                 "height":250,
                                 "styleName":"CanvasBorder",
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_FairySkillConfigCanvas_Label2",
                                    "stylesFactory":function():void
                                    {
                                       this.horizontalCenter = "0";
                                       this.top = "5";
                                       this.color = 16777215;
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":5,
                                          "y":15,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":FairySkillListComp,
                                             "id":"list0",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "index":0,
                                                   "y":16
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":FairySkillListComp,
                                             "id":"list1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "index":1,
                                                   "y":88
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":FairySkillListComp,
                                             "id":"list2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "index":2,
                                                   "y":160
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":CheckBox,
                                    "id":"cancelBtn",
                                    "events":{"click":"__cancelBtn_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":180,
                                          "y":29
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":DelayButton,
                                    "id":"saveBtn",
                                    "events":{"click":"__saveBtn_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":210,
                                          "y":7,
                                          "styleName":"CrystalYellowButton",
                                          "width":40,
                                          "height":22
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_FairySkillConfigCanvas_Label3",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 45296;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":197,
                                          "y":28,
                                          "width":70
                                       };
                                    }
                                 })]
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      public function FairySkillConfigCanvas()
      {
         super();
         mx_internal::_document = this;
         this.width = 420;
         this.height = 400;
         this.styleName = "StandardContent";
         this.addEventListener("creationComplete",___FairySkillConfigCanvas_DragableCanvas1_creationComplete);
         this.addEventListener("remove",___FairySkillConfigCanvas_DragableCanvas1_remove);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         FairySkillConfigCanvas._watcherSetupUtil = param1;
      }
      
      public function set cancelBtn(param1:CheckBox) : void
      {
         var _loc2_:Object = this._476548482cancelBtn;
         if(_loc2_ !== param1)
         {
            this._476548482cancelBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cancelBtn",_loc2_,param1));
         }
      }
      
      public function __saveBtn_click(param1:MouseEvent) : void
      {
         saveConfig();
      }
      
      private function init() : void
      {
         pageSelector.lastBtnLabel = "";
         pageSelector.nextBtnLabel = "";
         pageSelector.btnLastPage.width = 13;
         pageSelector.btnNextPage.width = 13;
         pageSelector.setLastBtnStyle("fazendaPageLast");
         pageSelector.setNextBtnStyle("fazendaPageNext");
         var _loc1_:int = 0;
         _loc1_ = 0;
         while(_loc1_ < SKILL_COUNT_PER_PAGE)
         {
            this["s" + _loc1_].init();
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ < SKILL_LIST_COUNT)
         {
            this["list" + _loc1_].init();
            this["list" + _loc1_].addEventListener("select",skilllistSelect);
            _loc1_++;
         }
         pageSelector.onPageChanged = onPageChanged;
         pageSelector.onPageCleared = clearPage;
      }
      
      private function refreshSkillConfig() : void
      {
         var _loc2_:Object = null;
         useIndex = -1;
         cancelBtn.selected = false;
         var _loc1_:int = 0;
         _loc1_ = 0;
         while(_loc1_ < SKILL_LIST_COUNT)
         {
            this["list" + _loc1_].init();
            _loc1_++;
         }
         if(_fairy)
         {
            if(!_fairy.skillConfig)
            {
               _loc2_ = {};
            }
            else
            {
               _loc2_ = _fairy.skillConfig;
            }
            useIndex = int(_loc2_.select);
            cancelBtn.selected = useIndex == -1;
            _loc1_ = 0;
            while(_loc1_ < SKILL_LIST_COUNT)
            {
               if(this["list" + _loc1_])
               {
                  this["list" + _loc1_].refresh(useIndex,_loc2_[_loc1_]);
               }
               _loc1_++;
            }
         }
      }
      
      public function set pageSelector(param1:PageSelector) : void
      {
         var _loc2_:Object = this._607339634pageSelector;
         if(_loc2_ !== param1)
         {
            this._607339634pageSelector = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageSelector",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get s1() : FairySkillComp
      {
         return this._3614s1;
      }
      
      private function saveConfig() : void
      {
         if(!_fairy)
         {
            return;
         }
         saveAlert = false;
         var _loc1_:Object = {};
         var _loc2_:int = 0;
         while(_loc2_ < SKILL_LIST_COUNT)
         {
            _loc1_[_loc2_] = this["list" + _loc2_].getConfigData();
            _loc2_++;
         }
         _loc1_.select = useIndex;
         _fairy.skillConfig = _loc1_;
         _core.remote.call("fairySkillConfigChange",null,_fairy.id,_loc1_);
      }
      
      [Bindable(event="propertyChange")]
      public function get s3() : FairySkillComp
      {
         return this._3616s3;
      }
      
      [Bindable(event="propertyChange")]
      public function get s4() : FairySkillComp
      {
         return this._3617s4;
      }
      
      [Bindable(event="propertyChange")]
      public function get s0() : FairySkillComp
      {
         return this._3613s0;
      }
      
      [Bindable(event="propertyChange")]
      public function get s2() : FairySkillComp
      {
         return this._3615s2;
      }
      
      [Bindable(event="propertyChange")]
      public function get s5() : FairySkillComp
      {
         return this._3618s5;
      }
      
      [Bindable(event="propertyChange")]
      public function get s6() : FairySkillComp
      {
         return this._3619s6;
      }
      
      public function set s1(param1:FairySkillComp) : void
      {
         var _loc2_:Object = this._3614s1;
         if(_loc2_ !== param1)
         {
            this._3614s1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"s1",_loc2_,param1));
         }
      }
      
      public function set s2(param1:FairySkillComp) : void
      {
         var _loc2_:Object = this._3615s2;
         if(_loc2_ !== param1)
         {
            this._3615s2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"s2",_loc2_,param1));
         }
      }
      
      public function set s3(param1:FairySkillComp) : void
      {
         var _loc2_:Object = this._3616s3;
         if(_loc2_ !== param1)
         {
            this._3616s3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"s3",_loc2_,param1));
         }
      }
      
      public function ___FairySkillConfigCanvas_DragableCanvas1_remove(param1:FlexEvent) : void
      {
         askSave();
      }
      
      public function open(param1:Object) : void
      {
         if(!param1)
         {
            Alert.show(Language.FAIRY_MANAGER_PANEL_U[105]);
            return;
         }
         fairy = param1;
         if(!visible)
         {
            visible = true;
         }
      }
      
      private function skilllistSelect(param1:MouseEvent) : void
      {
         cancelBtn.selected = false;
         var _loc2_:int = 0;
         while(_loc2_ < SKILL_LIST_COUNT)
         {
            if(this["list" + _loc2_] == param1.target)
            {
               useIndex = _loc2_;
               this["list" + _loc2_].beSelect(true);
            }
            else
            {
               this["list" + _loc2_].beSelect(false);
            }
            _loc2_++;
         }
         saveAlert = true;
      }
      
      [Bindable(event="propertyChange")]
      public function get list0() : FairySkillListComp
      {
         return this._102982482list0;
      }
      
      [Bindable(event="propertyChange")]
      public function get list1() : FairySkillListComp
      {
         return this._102982483list1;
      }
      
      public function set s6(param1:FairySkillComp) : void
      {
         var _loc2_:Object = this._3619s6;
         if(_loc2_ !== param1)
         {
            this._3619s6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"s6",_loc2_,param1));
         }
      }
      
      public function set saveBtn(param1:DelayButton) : void
      {
         var _loc2_:Object = this._1872787359saveBtn;
         if(_loc2_ !== param1)
         {
            this._1872787359saveBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"saveBtn",_loc2_,param1));
         }
      }
      
      public function set s4(param1:FairySkillComp) : void
      {
         var _loc2_:Object = this._3617s4;
         if(_loc2_ !== param1)
         {
            this._3617s4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"s4",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get list2() : FairySkillListComp
      {
         return this._102982484list2;
      }
      
      public function set s0(param1:FairySkillComp) : void
      {
         var _loc2_:Object = this._3613s0;
         if(_loc2_ !== param1)
         {
            this._3613s0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"s0",_loc2_,param1));
         }
      }
      
      public function learnSkill(param1:int) : void
      {
         if(Boolean(visible) && Boolean(_fairy) && param1 == _fairy.id)
         {
            fairy = _core.player.fairyList[param1];
         }
      }
      
      public function set s5(param1:FairySkillComp) : void
      {
         var _loc2_:Object = this._3618s5;
         if(_loc2_ !== param1)
         {
            this._3618s5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"s5",_loc2_,param1));
         }
      }
      
      public function ___FairySkillConfigCanvas_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      private function allCancel() : void
      {
         var _loc1_:int = 0;
         if(cancelBtn.selected)
         {
            _loc1_ = 0;
            while(_loc1_ < SKILL_LIST_COUNT)
            {
               this["list" + _loc1_].beSelect(false);
               _loc1_++;
            }
            useIndex = -1;
         }
         else
         {
            useIndex = -2;
         }
         saveAlert = true;
      }
      
      private function clearPage() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < SKILL_COUNT_PER_PAGE)
         {
            this["s" + _loc1_].init();
            _loc1_++;
         }
      }
      
      public function changeSkill(param1:ItemSlot, param2:ItemSlot) : void
      {
         if(!param2 || !param1 || param2 == param1)
         {
            return;
         }
         var _loc3_:int = 0;
         while(_loc3_ < SKILL_LIST_COUNT)
         {
            if(this["list" + _loc3_].changeSkill(param1,param2))
            {
               saveAlert = true;
               break;
            }
            _loc3_++;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cancelBtn() : CheckBox
      {
         return this._476548482cancelBtn;
      }
      
      [Bindable(event="propertyChange")]
      public function get pageSelector() : PageSelector
      {
         return this._607339634pageSelector;
      }
      
      private function askSave() : void
      {
         var func:Function;
         if(!saveAlert)
         {
            return;
         }
         saveAlert = false;
         func = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               saveConfig();
            }
         };
         Alert.show(Language.FAIRY_MANAGER_PANEL_U[106],Language.FAIRY_MANAGER_PANEL_U[106],Alert.YES | Alert.NO,null,func);
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:FairySkillConfigCanvas = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _FairySkillConfigCanvas_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_FairySkillConfigCanvasWatcherSetupUtil");
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
      
      public function getSkill(param1:ItemSlot, param2:ItemSlot) : void
      {
         if(!param2 || !param1 || param2 == param1)
         {
            return;
         }
         var _loc3_:int = 0;
         while(_loc3_ < SKILL_LIST_COUNT)
         {
            if(this["list" + _loc3_].getSkill(param1,param2))
            {
               saveAlert = true;
               break;
            }
            _loc3_++;
         }
      }
      
      public function set list0(param1:FairySkillListComp) : void
      {
         var _loc2_:Object = this._102982482list0;
         if(_loc2_ !== param1)
         {
            this._102982482list0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"list0",_loc2_,param1));
         }
      }
      
      private function _FairySkillConfigCanvas_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[95];
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[96];
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[107];
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[97];
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[104];
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[101];
      }
      
      public function set list1(param1:FairySkillListComp) : void
      {
         var _loc2_:Object = this._102982483list1;
         if(_loc2_ !== param1)
         {
            this._102982483list1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"list1",_loc2_,param1));
         }
      }
      
      public function set list2(param1:FairySkillListComp) : void
      {
         var _loc2_:Object = this._102982484list2;
         if(_loc2_ !== param1)
         {
            this._102982484list2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"list2",_loc2_,param1));
         }
      }
      
      public function __cancelBtn_click(param1:MouseEvent) : void
      {
         allCancel();
      }
      
      [Bindable(event="propertyChange")]
      public function get saveBtn() : DelayButton
      {
         return this._1872787359saveBtn;
      }
      
      public function set fairy(param1:Object) : void
      {
         _fairy = param1;
         refreshSkillAC();
         refreshSkillConfig();
      }
      
      private function onPageChanged(param1:int, param2:int) : void
      {
         var _loc4_:Object = null;
         var _loc3_:int = 0;
         while(_loc3_ < SKILL_COUNT_PER_PAGE)
         {
            _loc4_ = skillAC[_loc3_ + param1];
            if(_loc4_)
            {
               this["s" + _loc3_].refresh(_loc4_);
            }
            _loc3_++;
         }
      }
      
      private function refreshSkillAC() : void
      {
         var _loc1_:Object = null;
         var _loc2_:int = 0;
         var _loc3_:Object = null;
         skillAC.length = 0;
         if(Boolean(_fairy) && Boolean(_fairy.skillFlag))
         {
            for(_loc1_ in _fairy.skillFlag)
            {
               _loc2_ = int(_fairy.skillFlag[_loc1_]);
               _loc3_ = _core.data.gameData[GamePredef.TBL_SKILL][_loc2_];
               if(Boolean(_loc3_) && _loc3_.kind == 1)
               {
                  skillAC.push(_loc3_);
               }
            }
         }
         pageSelector.initPageSeletor(skillAC.length,SKILL_COUNT_PER_PAGE);
      }
      
      private function _FairySkillConfigCanvas_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[95];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FairySkillConfigCanvas_BasicTitleCanvas1.text = param1;
         },"_FairySkillConfigCanvas_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[96];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FairySkillConfigCanvas_Label1.text = param1;
         },"_FairySkillConfigCanvas_Label1.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[107];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FairySkillConfigCanvas_IntroText1.htmlText = param1;
         },"_FairySkillConfigCanvas_IntroText1.htmlText");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[97];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FairySkillConfigCanvas_Label2.text = param1;
         },"_FairySkillConfigCanvas_Label2.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[104];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            saveBtn.label = param1;
         },"saveBtn.label");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[101];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FairySkillConfigCanvas_Label3.text = param1;
         },"_FairySkillConfigCanvas_Label3.text");
         result[5] = binding;
         return result;
      }
   }
}

