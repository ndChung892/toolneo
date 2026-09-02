package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.view.comp.AutoComplete;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.RoundedLabel;
   import com.qeedoo.ui.view.comp.TextCombo;
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
   import mx.collections.Sort;
   import mx.collections.SortField;
   import mx.controls.Image;
   import mx.controls.NumericStepper;
   import mx.controls.TextInput;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class InputPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _94069048btnOK:BasicGlowButton;
      
      private var _1287834292panelTitle:BasicTitleCanvas;
      
      private var _100358090input:TextInput;
      
      private var _itemMaxNum:int = 1;
      
      private var _470699868inputNum:NumericStepper;
      
      mx_internal var _watchers:Array = [];
      
      private var _1969449099imgVerificationCode:Image;
      
      private var textArray:ArrayCollection = new ArrayCollection();
      
      private var _itemId:int = 0;
      
      public var hideAble:Boolean = true;
      
      private var npcInRadar:ArrayCollection;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _callBack:Function;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _1707293932input_npc:AutoComplete;
      
      private var _837054846map_npc:AutoComplete;
      
      private var _106934lbl:RoundedLabel;
      
      private var _1360672740inputCombo:TextCombo;
      
      private var _117924854btnCancel:BasicGlowButton;
      
      mx_internal var _bindings:Array = [];
      
      private var _834773891idMaxNum:BasicGlowButton;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":190,
               "height":126,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"panelTitle"
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"lbl",
                  "stylesFactory":function():void
                  {
                     this.textAlign = "center";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":10,
                        "y":34,
                        "width":170,
                        "height":19
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"imgVerificationCode",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":52,
                        "y":30,
                        "width":85,
                        "height":30,
                        "visible":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":TextInput,
                  "id":"input",
                  "events":{
                     "enter":"__input_enter",
                     "mouseDown":"__input_mouseDown"
                  },
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":62,
                        "width":128,
                        "height":20
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":AutoComplete,
                  "id":"input_npc",
                  "events":{
                     "enter":"__input_npc_enter",
                     "mouseDown":"__input_npc_mouseDown"
                  },
                  "stylesFactory":function():void
                  {
                     this.borderThickness = 5;
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "labelField":"name",
                        "y":62,
                        "width":128,
                        "height":20,
                        "IsAutoComplete":true,
                        "IsfocusInDropDown":true
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":AutoComplete,
                  "id":"map_npc",
                  "events":{
                     "enter":"__map_npc_enter",
                     "mouseDown":"__map_npc_mouseDown"
                  },
                  "stylesFactory":function():void
                  {
                     this.borderThickness = 5;
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "labelField":"name",
                        "y":62,
                        "width":128,
                        "height":20,
                        "IsAutoComplete":true,
                        "IsfocusInDropDown":true
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":NumericStepper,
                  "id":"inputNum",
                  "events":{"mouseDown":"__inputNum_mouseDown"},
                  "stylesFactory":function():void
                  {
                     this.backgroundAlpha = 0;
                     this.color = 16777215;
                     this.cornerRadius = 0;
                     this.borderStyle = "none";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":33.5,
                        "y":62,
                        "width":75,
                        "height":20,
                        "visible":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"btnOK",
                  "events":{"click":"__btnOK_click"},
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "-29";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":89,
                        "styleName":"BtnNormalRed",
                        "width":40,
                        "height":19
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"btnCancel",
                  "events":{"click":"__btnCancel_click"},
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "29";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":89,
                        "styleName":"BtnNormalRed",
                        "width":40,
                        "height":19
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":TextCombo,
                  "id":"inputCombo",
                  "events":{"mouseDown":"__inputCombo_mouseDown"},
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "editable":false,
                        "y":63,
                        "width":128,
                        "height":18,
                        "labelField":"name",
                        "x":31
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"idMaxNum",
                  "events":{"click":"__idMaxNum_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":115,
                        "y":62,
                        "width":45,
                        "styleName":"BtnNormalRed",
                        "height":19
                     };
                  }
               })]
            };
         }
      });
      
      public function InputPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 190;
         this.height = 126;
         this.styleName = "StandardContent";
         this.addEventListener("creationComplete",___InputPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         InputPanel._watcherSetupUtil = param1;
      }
      
      public function set map_npc(param1:AutoComplete) : void
      {
         var _loc2_:Object = this._837054846map_npc;
         if(_loc2_ !== param1)
         {
            this._837054846map_npc = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"map_npc",_loc2_,param1));
         }
      }
      
      public function __map_npc_mouseDown(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
      }
      
      public function set idMaxNum(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._834773891idMaxNum;
         if(_loc2_ !== param1)
         {
            this._834773891idMaxNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idMaxNum",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get imgVerificationCode() : Image
      {
         return this._1969449099imgVerificationCode;
      }
      
      [Bindable(event="propertyChange")]
      public function get idMaxNum() : BasicGlowButton
      {
         return this._834773891idMaxNum;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:InputPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _InputPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_InputPanelWatcherSetupUtil");
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
      
      public function set btnOK(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._94069048btnOK;
         if(_loc2_ !== param1)
         {
            this._94069048btnOK = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnOK",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get input_npc() : AutoComplete
      {
         return this._1707293932input_npc;
      }
      
      public function set imgVerificationCode(param1:Image) : void
      {
         var _loc2_:Object = this._1969449099imgVerificationCode;
         if(_loc2_ !== param1)
         {
            this._1969449099imgVerificationCode = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imgVerificationCode",_loc2_,param1));
         }
      }
      
      public function __btnCancel_click(param1:MouseEvent) : void
      {
         cancel();
      }
      
      public function set panelTitle(param1:BasicTitleCanvas) : void
      {
         var _loc2_:Object = this._1287834292panelTitle;
         if(_loc2_ !== param1)
         {
            this._1287834292panelTitle = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"panelTitle",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btnCancel() : BasicGlowButton
      {
         return this._117924854btnCancel;
      }
      
      public function showPositionInput(param1:String, param2:String, param3:Function = null, param4:ArrayCollection = null, param5:String = "", param6:int = 50, param7:Boolean = true) : void
      {
         var _loc8_:String = null;
         param4.filterFunction = null;
         param4.refresh();
         map_npc.dataProvider = param4;
         lbl.text = param1;
         _callBack = param3;
         imgVerificationCode.visible = false;
         input.visible = false;
         inputNum.visible = false;
         idMaxNum.visible = false;
         inputCombo.visible = false;
         input_npc.visible = false;
         map_npc.visible = true;
         this.hideAble = param7;
         setButtons(true);
         show();
         x = (stage.stageWidth - width) / 2;
         y = (stage.stageHeight - height) / 2;
         map_npc.text = "";
         map_npc.prompt = "";
         map_npc.setFocus();
      }
      
      public function set lbl(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._106934lbl;
         if(_loc2_ !== param1)
         {
            this._106934lbl = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lbl",_loc2_,param1));
         }
      }
      
      private function setInputNumMax() : void
      {
         inputNum.value = _itemMaxNum;
      }
      
      public function __inputNum_mouseDown(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
      }
      
      [Bindable(event="propertyChange")]
      public function get panelTitle() : BasicTitleCanvas
      {
         return this._1287834292panelTitle;
      }
      
      public function __idMaxNum_click(param1:MouseEvent) : void
      {
         setInputNumMax();
      }
      
      public function set input(param1:TextInput) : void
      {
         var _loc2_:Object = this._100358090input;
         if(_loc2_ !== param1)
         {
            this._100358090input = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"input",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btnOK() : BasicGlowButton
      {
         return this._94069048btnOK;
      }
      
      public function showNpcNameInput(param1:String, param2:String, param3:Function = null, param4:String = "", param5:int = 50, param6:Boolean = true) : void
      {
         var _loc7_:String = null;
         lbl.text = param1;
         _callBack = param3;
         imgVerificationCode.visible = false;
         input.visible = false;
         inputNum.visible = false;
         idMaxNum.visible = false;
         inputCombo.visible = false;
         input_npc.visible = true;
         map_npc.visible = false;
         this.hideAble = param6;
         setButtons(true);
         show();
         x = (stage.stageWidth - width) / 2;
         y = (stage.stageHeight - height) / 2;
         input_npc.setFocus();
      }
      
      [Bindable(event="propertyChange")]
      public function get lbl() : RoundedLabel
      {
         return this._106934lbl;
      }
      
      private function setButtons(param1:Boolean) : void
      {
         if(param1)
         {
            panelTitle.closeButtonVisible = true;
            btnCancel.visible = true;
            btnOK.x = 42.5;
         }
         else
         {
            panelTitle.closeButtonVisible = false;
            btnCancel.visible = false;
            btnOK.x = 70;
         }
      }
      
      public function showInputCombo(param1:String, param2:String, param3:Function = null, param4:String = "", param5:int = 50, param6:ArrayCollection = null, param7:Boolean = true) : void
      {
         if(!param1)
         {
            param1 = Language.INPUTPANEL_S[0];
         }
         if(!param2)
         {
            param2 = Language.INPUTPANEL_S[1];
         }
         if(param1 == Language.INPUTPANEL_S[0])
         {
            param1 = Language.INPUTPANEL_S[0];
         }
         if(param2 == Language.INPUTPANEL_S[1])
         {
            param2 = Language.INPUTPANEL_S[1];
         }
         _callBack = param3;
         lbl.text = param1;
         imgVerificationCode.visible = false;
         input.visible = false;
         inputNum.visible = false;
         inputCombo.visible = true;
         input_npc.visible = false;
         map_npc.visible = false;
         inputCombo.text = param4;
         inputCombo.maxChars = param5;
         inputCombo.dataProvider = param6;
         this.hideAble = param7;
         setButtons(true);
         show();
         x = (stage.stageWidth - width) / 2;
         y = (stage.stageHeight - height) / 2;
      }
      
      public function __input_enter(param1:FlexEvent) : void
      {
         ok();
      }
      
      public function showVerificationCode(param1:Object, param2:Function = null, param3:Boolean = true) : void
      {
         var _loc4_:ByteArray = new ByteArray();
         var _loc5_:int = 0;
         while(_loc5_ < param1.length)
         {
            _loc4_.writeByte(param1[_loc5_]);
            _loc5_++;
         }
         imgVerificationCode.source = _loc4_;
         input.displayAsPassword = false;
         lbl.text = "";
         panelTitle.text = Language.INPUTPANEL_S[2];
         _callBack = param2;
         input.restrict = "[0-9a-z]";
         imgVerificationCode.visible = true;
         input.visible = true;
         inputNum.visible = false;
         idMaxNum.visible = false;
         inputCombo.visible = false;
         input_npc.visible = false;
         map_npc.visible = false;
         input.text = "";
         input.maxChars = 8;
         this.hideAble = param3;
         setButtons(false);
         show();
         x = (stage.stageWidth - width) / 2;
         y = (stage.stageHeight - height) / 2;
      }
      
      public function set inputNum(param1:NumericStepper) : void
      {
         var _loc2_:Object = this._470699868inputNum;
         if(_loc2_ !== param1)
         {
            this._470699868inputNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inputNum",_loc2_,param1));
         }
      }
      
      public function set inputCombo(param1:TextCombo) : void
      {
         var _loc2_:Object = this._1360672740inputCombo;
         if(_loc2_ !== param1)
         {
            this._1360672740inputCombo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inputCombo",_loc2_,param1));
         }
      }
      
      override public function hide() : void
      {
         visible = false;
         var _loc1_:Event = new Event(DragableCanvas.EVENT_CLOSE);
         dispatchEvent(_loc1_);
         input_npc.close();
         map_npc.close();
      }
      
      public function showInput(param1:String, param2:String, param3:Function = null, param4:String = "", param5:int = 50, param6:Boolean = true) : void
      {
         var _loc8_:String = null;
         var _loc9_:* = undefined;
         if(param1)
         {
            _loc8_ = GamePredef.INPUT_PANEL_TITLE_SPLIT;
            _loc9_ = param1.split(_loc8_);
            param1 = _loc9_[0];
            _itemId = _loc9_[1];
         }
         if(!param1)
         {
            param1 = Language.INPUTPANEL_S[0];
         }
         if(!param2)
         {
            param2 = Language.INPUTPANEL_S[1];
         }
         if(param1 == Language.INPUTPANEL_S[0])
         {
            param1 = Language.INPUTPANEL_S[0];
         }
         var _loc7_:String = null;
         if(param1 == Language.DELETE_BY_PASS[0])
         {
            input.displayAsPassword = true;
            lbl.htmlText = param1;
            param5 = 6;
            _loc7_ = "[0-9]";
         }
         else
         {
            input.displayAsPassword = false;
            lbl.text = param1;
         }
         if(param2 == Language.INPUTPANEL_S[1])
         {
            param2 = Language.INPUTPANEL_S[1];
         }
         _callBack = param3;
         input.restrict = _loc7_;
         imgVerificationCode.visible = false;
         input.visible = true;
         inputNum.visible = false;
         idMaxNum.visible = false;
         inputCombo.visible = false;
         input_npc.visible = false;
         map_npc.visible = false;
         input.text = param4;
         input.maxChars = param5;
         this.hideAble = param6;
         setButtons(true);
         show();
         x = (stage.stageWidth - width) / 2;
         y = (stage.stageHeight - height) / 2;
         input.selectionBeginIndex = 0;
         input.selectionEndIndex = input.text.length;
      }
      
      public function __inputCombo_mouseDown(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
      }
      
      [Bindable(event="propertyChange")]
      public function get input() : TextInput
      {
         return this._100358090input;
      }
      
      public function __input_mouseDown(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
      }
      
      private function ok() : void
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc1_:Core = Core.getInstance();
         if(!_itemId && _loc1_.haveBadWord(input.text))
         {
            return;
         }
         if(_callBack != null)
         {
            if(input.visible)
            {
               _callBack.apply(_callBack,[input.text]);
            }
            else if(inputNum.visible)
            {
               _callBack.apply(_callBack,[inputNum.value]);
            }
            else if(input_npc.visible)
            {
               if(!input_npc.selectedItem && input_npc.text.length == 0)
               {
                  return;
               }
               if(Boolean(input_npc.selectedItem) && input_npc.selectedItem.hasOwnProperty("name"))
               {
                  _loc2_ = input_npc.selectedItem.name;
               }
               else if(input_npc.text.length > 0)
               {
                  _loc2_ = input_npc.text;
               }
               _callBack.apply(_callBack,[_loc2_]);
            }
            else if(map_npc.visible)
            {
               if(!map_npc.selectedItem && map_npc.text.length == 0)
               {
                  return;
               }
               if(Boolean(map_npc.selectedItem) && map_npc.selectedItem.hasOwnProperty("name"))
               {
                  _loc3_ = map_npc.selectedItem.name;
               }
               else if(map_npc.text.length > 0)
               {
                  _loc3_ = map_npc.text;
               }
               _callBack.apply(_callBack,[_loc3_]);
            }
            else
            {
               _callBack.apply(_callBack,[inputCombo.text]);
            }
         }
         cancel();
      }
      
      public function set input_npc(param1:AutoComplete) : void
      {
         var _loc2_:Object = this._1707293932input_npc;
         if(_loc2_ !== param1)
         {
            this._1707293932input_npc = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"input_npc",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get inputCombo() : TextCombo
      {
         return this._1360672740inputCombo;
      }
      
      public function __input_npc_enter(param1:FlexEvent) : void
      {
         ok();
      }
      
      private function _InputPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.INPUTPANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            panelTitle.text = param1;
         },"panelTitle.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.INPUTPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnOK.label = param1;
         },"btnOK.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.INPUTPANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnCancel.label = param1;
         },"btnCancel.label");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.INPUTPANEL_U[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            idMaxNum.label = param1;
         },"idMaxNum.label");
         result[3] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get inputNum() : NumericStepper
      {
         return this._470699868inputNum;
      }
      
      public function initNpcList() : void
      {
         var _loc2_:Object = null;
         var _loc3_:Sort = null;
         var _loc4_:Boolean = false;
         var _loc5_:* = undefined;
         var _loc1_:Core = Core.getInstance();
         npcInRadar = new ArrayCollection();
         for each(_loc2_ in _loc1_.data.gameData[GamePredef.TBL_NPC])
         {
            _loc4_ = false;
            if(_loc2_.fd > 0)
            {
               for(_loc5_ in npcInRadar)
               {
                  if(npcInRadar.getItemAt(_loc5_).name == _loc2_.name)
                  {
                     _loc4_ = true;
                     break;
                  }
               }
               !_loc4_ && npcInRadar.addItem(_loc2_);
            }
         }
         _loc3_ = new Sort();
         _loc3_.fields = [new SortField("type",true,false,true)];
         npcInRadar.sort = _loc3_;
         npcInRadar.refresh();
         input_npc.dataProvider = npcInRadar;
      }
      
      public function __btnOK_click(param1:MouseEvent) : void
      {
         ok();
      }
      
      public function ___InputPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         initNpcList();
      }
      
      public function set btnCancel(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._117924854btnCancel;
         if(_loc2_ !== param1)
         {
            this._117924854btnCancel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnCancel",_loc2_,param1));
         }
      }
      
      public function __map_npc_enter(param1:FlexEvent) : void
      {
         ok();
      }
      
      public function showInputNum(param1:String = "内容：", param2:String = "标题", param3:Function = null, param4:int = 1, param5:int = 0, param6:int = 9999, param7:Boolean = true) : void
      {
         if(param1 == "内容：")
         {
            param1 = Language.INPUTPANEL_S[0];
         }
         if(!param2)
         {
            param2 = Language.INPUTPANEL_S[1];
         }
         if(param1 == Language.INPUTPANEL_S[0])
         {
            param1 = Language.INPUTPANEL_S[0];
         }
         if(param2 == Language.INPUTPANEL_S[1])
         {
            param2 = Language.INPUTPANEL_S[1];
         }
         _callBack = param3;
         lbl.text = param1;
         imgVerificationCode.visible = false;
         input.visible = false;
         inputNum.visible = true;
         idMaxNum.visible = true;
         inputCombo.visible = false;
         input_npc.visible = false;
         map_npc.visible = false;
         inputNum.value = param4;
         inputNum.minimum = param5;
         inputNum.maximum = param6;
         this.hideAble = param7;
         setButtons(true);
         _itemMaxNum = param6;
         show();
         x = (stage.stageWidth - width) / 2;
         y = (stage.stageHeight - height) / 2;
      }
      
      private function cancel() : void
      {
         input.text = "";
         inputNum.value = 1;
         inputNum.visible = false;
         panelTitle.text = Language.INPUTPANEL_U[2];
         hide();
      }
      
      public function __input_npc_mouseDown(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
      }
      
      override public function show() : void
      {
         super.show();
         input.setFocus();
      }
      
      [Bindable(event="propertyChange")]
      public function get map_npc() : AutoComplete
      {
         return this._837054846map_npc;
      }
      
      private function _InputPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.INPUTPANEL_U[2];
         _loc1_ = Language.INPUTPANEL_U[0];
         _loc1_ = Language.INPUTPANEL_U[1];
         _loc1_ = Language.INPUTPANEL_U[6];
      }
   }
}

