package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.BasicTxtButton;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.IntroText;
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
   import mx.controls.Alert;
   import mx.controls.ComboBox;
   import mx.controls.TextInput;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.ListEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   import mx.utils.StringUtil;
   
   use namespace mx_internal;
   
   public class AddictEnterPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private static var _custom_question:String = "custom";
      
      private var _1642224713idText1:BasicTxtButton;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var _878393397defaultQuestionIndex:uint = 0;
      
      private var _617127391idQuestion:ComboBox;
      
      mx_internal var _watchers:Array;
      
      public var _AddictEnterPanel_IntroText1:IntroText;
      
      private var _282075953idUserName:TextInput;
      
      private var _1642224716idText4:BasicTxtButton;
      
      private var _425268921idBtnSubmit:BasicGlowButton;
      
      private var _1642224715idText3:BasicTxtButton;
      
      mx_internal var _bindingsByDestination:Object;
      
      private var _1241186495idClassify:TextInput;
      
      private var questions:Array;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public var _AddictEnterPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _1966962802idCustomQuestion:TextInput;
      
      private var _1642224714idText2:BasicTxtButton;
      
      mx_internal var _bindings:Array;
      
      private var _firstTimeVisible:Boolean = true;
      
      private var _1166427975idAnswer:TextInput;
      
      private var _core:Core;
      
      public function AddictEnterPanel()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":DragableCanvas,
            "propertiesFactory":function():Object
            {
               return {
                  "width":300,
                  "height":370,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":BasicTitleCanvas,
                     "id":"_AddictEnterPanel_BasicTitleCanvas1"
                  }),new UIComponentDescriptor({
                     "type":IntroText,
                     "id":"_AddictEnterPanel_IntroText1",
                     "stylesFactory":function():void
                     {
                        this.left = "15";
                        this.right = "15";
                        this.top = "40";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {"height":110};
                     }
                  }),new UIComponentDescriptor({
                     "type":ComboBox,
                     "id":"idQuestion",
                     "events":{"change":"__idQuestion_change"},
                     "stylesFactory":function():void
                     {
                        this.textAlign = "left";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":80,
                           "y":163.5,
                           "width":190,
                           "labelField":"name",
                           "name":"question"
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":TextInput,
                     "id":"idCustomQuestion",
                     "stylesFactory":function():void
                     {
                        this.textAlign = "left";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":80,
                           "y":195.55,
                           "maxChars":20,
                           "name":"custom_question",
                           "width":190,
                           "visible":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":TextInput,
                     "id":"idAnswer",
                     "stylesFactory":function():void
                     {
                        this.textAlign = "left";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":80,
                           "y":195.55,
                           "maxChars":20,
                           "name":"answer",
                           "width":190
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":TextInput,
                     "id":"idUserName",
                     "stylesFactory":function():void
                     {
                        this.textAlign = "left";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":80,
                           "y":231.5,
                           "name":"user_name",
                           "width":190
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":TextInput,
                     "id":"idClassify",
                     "stylesFactory":function():void
                     {
                        this.textAlign = "left";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":80,
                           "y":263.5,
                           "name":"classify",
                           "width":190
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":BasicTxtButton,
                     "id":"idText1",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":16.2,
                           "y":163.5,
                           "width":60,
                           "height":18
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":BasicTxtButton,
                     "id":"idText2",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":16.2,
                           "y":197.5,
                           "width":60,
                           "height":18
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":BasicTxtButton,
                     "id":"idText3",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":16.2,
                           "y":231.5,
                           "width":60,
                           "height":18
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":BasicTxtButton,
                     "id":"idText4",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":16.2,
                           "y":265.5,
                           "width":60,
                           "height":18
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":BasicGlowButton,
                     "id":"idBtnSubmit",
                     "events":{"click":"__idBtnSubmit_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":124.95,
                           "y":305.5,
                           "styleName":"BtnStdGreen",
                           "width":50
                        };
                     }
                  })]
               };
            }
         });
         questions = [{
            "name":Language.ANTIADDICTCANVAS_U[20],
            "value":""
         },{
            "name":Language.ANTIADDICTCANVAS_U[21],
            "value":Language.ANTIADDICTCANVAS_U[21]
         },{
            "name":Language.ANTIADDICTCANVAS_U[22],
            "value":Language.ANTIADDICTCANVAS_U[22]
         },{
            "name":Language.ANTIADDICTCANVAS_U[23],
            "value":Language.ANTIADDICTCANVAS_U[23]
         },{
            "name":Language.ANTIADDICTCANVAS_U[24],
            "value":Language.ANTIADDICTCANVAS_U[24]
         },{
            "name":Language.ANTIADDICTCANVAS_U[25],
            "value":Language.ANTIADDICTCANVAS_U[25]
         },{
            "name":Language.ANTIADDICTCANVAS_U[26],
            "value":Language.ANTIADDICTCANVAS_U[26]
         },{
            "name":Language.ANTIADDICTCANVAS_U[27],
            "value":_custom_question
         }];
         mx_internal::_bindings = [];
         mx_internal::_watchers = [];
         mx_internal::_bindingsByDestination = {};
         mx_internal::_bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         if(!this.styleDeclaration)
         {
            this.styleDeclaration = new CSSStyleDeclaration();
         }
         this.styleDeclaration.defaultFactory = function():void
         {
            this.backgroundColor = 11908533;
         };
         this.width = 300;
         this.height = 370;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         AddictEnterPanel._watcherSetupUtil = param1;
      }
      
      private function checkAddict(param1:Array) : Boolean
      {
         var _loc3_:String = null;
         var _loc2_:Boolean = true;
         for each(_loc3_ in param1)
         {
            if(!_loc3_)
            {
               _loc2_ = false;
               Alert.show(Language.ANTIADDICTCANVAS_U[30]);
               break;
            }
         }
         return _loc2_;
      }
      
      public function set idCustomQuestion(param1:TextInput) : void
      {
         var _loc2_:Object = this._1966962802idCustomQuestion;
         if(_loc2_ !== param1)
         {
            this._1966962802idCustomQuestion = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idCustomQuestion",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get idCustomQuestion() : TextInput
      {
         return this._1966962802idCustomQuestion;
      }
      
      public function set idClassify(param1:TextInput) : void
      {
         var _loc2_:Object = this._1241186495idClassify;
         if(_loc2_ !== param1)
         {
            this._1241186495idClassify = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idClassify",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:AddictEnterPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _AddictEnterPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_AddictEnterPanelWatcherSetupUtil");
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
      
      private function submitAddict() : void
      {
         var _loc1_:Array = new Array();
         _loc1_["question"] = StringUtil.trim(idQuestion.selectedItem.value);
         _loc1_["answer"] = StringUtil.trim(idAnswer.text);
         _loc1_["user_name"] = StringUtil.trim(idUserName.text);
         _loc1_["classify"] = StringUtil.trim(idClassify.text);
         if(_loc1_["question"] == _custom_question)
         {
            _loc1_["question"] = idCustomQuestion.text;
         }
         if(!checkAddict(_loc1_))
         {
            return;
         }
         _core.remote.call("submitAddict",new Responder(onInputAddict),_loc1_);
      }
      
      public function set idText1(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._1642224713idText1;
         if(_loc2_ !== param1)
         {
            this._1642224713idText1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idText1",_loc2_,param1));
         }
      }
      
      public function set idText2(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._1642224714idText2;
         if(_loc2_ !== param1)
         {
            this._1642224714idText2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idText2",_loc2_,param1));
         }
      }
      
      public function set idText3(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._1642224715idText3;
         if(_loc2_ !== param1)
         {
            this._1642224715idText3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idText3",_loc2_,param1));
         }
      }
      
      public function set idText4(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._1642224716idText4;
         if(_loc2_ !== param1)
         {
            this._1642224716idText4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idText4",_loc2_,param1));
         }
      }
      
      public function __idBtnSubmit_click(param1:MouseEvent) : void
      {
         submitAddict();
      }
      
      private function set defaultQuestionIndex(param1:uint) : void
      {
         var _loc2_:Object = this._878393397defaultQuestionIndex;
         if(_loc2_ !== param1)
         {
            this._878393397defaultQuestionIndex = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"defaultQuestionIndex",_loc2_,param1));
         }
      }
      
      public function __idQuestion_change(param1:ListEvent) : void
      {
         customQuestion();
      }
      
      [Bindable(event="propertyChange")]
      public function get idQuestion() : ComboBox
      {
         return this._617127391idQuestion;
      }
      
      [Bindable(event="propertyChange")]
      public function get idUserName() : TextInput
      {
         return this._282075953idUserName;
      }
      
      private function _AddictEnterPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.ANTIADDICTCANVAS_U[19];
         _loc1_ = Language.ANTIADDICTCANVAS_U[14];
         _loc1_ = defaultQuestionIndex;
         _loc1_ = questions;
         _loc1_ = Language.ANTIADDICTCANVAS_U[17];
         _loc1_ = Language.ANTIADDICTCANVAS_U[18];
         _loc1_ = Language.ANTIADDICTCANVAS_U[15];
         _loc1_ = Language.ANTIADDICTCANVAS_U[16];
         _loc1_ = Language.CONTACTGMCANVAS_U[7];
      }
      
      private function onGetAddictQuestion(param1:String) : void
      {
         var _loc3_:Object = null;
         var _loc2_:String = param1;
         trace("onGetAddict questions len : " + questions.length);
         if(param1)
         {
            for each(_loc3_ in questions)
            {
               if(_loc3_.name == _loc2_)
               {
                  break;
               }
               ++defaultQuestionIndex;
            }
            if(questions.length == defaultQuestionIndex)
            {
               --defaultQuestionIndex;
            }
         }
         trace("questions len : " + param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get idAnswer() : TextInput
      {
         return this._1166427975idAnswer;
      }
      
      [Bindable(event="propertyChange")]
      public function get idClassify() : TextInput
      {
         return this._1241186495idClassify;
      }
      
      [Bindable(event="propertyChange")]
      public function get idBtnSubmit() : BasicGlowButton
      {
         return this._425268921idBtnSubmit;
      }
      
      public function set idQuestion(param1:ComboBox) : void
      {
         var _loc2_:Object = this._617127391idQuestion;
         if(_loc2_ !== param1)
         {
            this._617127391idQuestion = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idQuestion",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get idText1() : BasicTxtButton
      {
         return this._1642224713idText1;
      }
      
      [Bindable(event="propertyChange")]
      public function get idText2() : BasicTxtButton
      {
         return this._1642224714idText2;
      }
      
      [Bindable(event="propertyChange")]
      public function get idText3() : BasicTxtButton
      {
         return this._1642224715idText3;
      }
      
      private function _AddictEnterPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ANTIADDICTCANVAS_U[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AddictEnterPanel_BasicTitleCanvas1.text = param1;
         },"_AddictEnterPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ANTIADDICTCANVAS_U[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AddictEnterPanel_IntroText1.htmlText = param1;
         },"_AddictEnterPanel_IntroText1.htmlText");
         result[1] = binding;
         binding = new Binding(this,function():int
         {
            return defaultQuestionIndex;
         },function(param1:int):void
         {
            idQuestion.selectedIndex = param1;
         },"idQuestion.selectedIndex");
         result[2] = binding;
         binding = new Binding(this,function():Object
         {
            return questions;
         },function(param1:Object):void
         {
            idQuestion.dataProvider = param1;
         },"idQuestion.dataProvider");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ANTIADDICTCANVAS_U[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            idText1.label = param1;
         },"idText1.label");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ANTIADDICTCANVAS_U[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            idText2.label = param1;
         },"idText2.label");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ANTIADDICTCANVAS_U[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            idText3.label = param1;
         },"idText3.label");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ANTIADDICTCANVAS_U[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            idText4.label = param1;
         },"idText4.label");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CONTACTGMCANVAS_U[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            idBtnSubmit.label = param1;
         },"idBtnSubmit.label");
         result[8] = binding;
         return result;
      }
      
      public function onSubmitAddictNotAdult(param1:int) : void
      {
      }
      
      private function initPanel() : void
      {
         trace("initPanel");
         _core = Core.getInstance();
         _core.remote.call("getAddictQuestion",new Responder(onGetAddictQuestion));
      }
      
      private function onInputAddict(param1:Array) : void
      {
      }
      
      public function set idUserName(param1:TextInput) : void
      {
         var _loc2_:Object = this._282075953idUserName;
         if(_loc2_ !== param1)
         {
            this._282075953idUserName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idUserName",_loc2_,param1));
         }
      }
      
      override public function set visible(param1:Boolean) : void
      {
         super.visible = param1;
         if(param1)
         {
            if(_firstTimeVisible)
            {
               _firstTimeVisible = false;
               initPanel();
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get idText4() : BasicTxtButton
      {
         return this._1642224716idText4;
      }
      
      public function set idAnswer(param1:TextInput) : void
      {
         var _loc2_:Object = this._1166427975idAnswer;
         if(_loc2_ !== param1)
         {
            this._1166427975idAnswer = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idAnswer",_loc2_,param1));
         }
      }
      
      private function customQuestion() : void
      {
         if(idQuestion.selectedItem.value == _custom_question)
         {
            idCustomQuestion.visible = true;
            idText2.y = idAnswer.y = 231.5;
            idText3.y = idUserName.y = 263.5;
            idText4.y = idClassify.y = 295.5;
            idBtnSubmit.y = 334;
         }
         else
         {
            idCustomQuestion.visible = false;
            idText2.y = idAnswer.y = 195.55;
            idText3.y = idUserName.y = 231.5;
            idText4.y = idClassify.y = 263.5;
            idBtnSubmit.y = 305.5;
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get defaultQuestionIndex() : uint
      {
         return this._878393397defaultQuestionIndex;
      }
      
      public function set idBtnSubmit(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._425268921idBtnSubmit;
         if(_loc2_ !== param1)
         {
            this._425268921idBtnSubmit = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idBtnSubmit",_loc2_,param1));
         }
      }
      
      public function submitAddictCallback(param1:int) : void
      {
         var _loc2_:String = new String();
         switch(param1)
         {
            case 0:
               _loc2_ = Language.ANTIADDICTCANVAS_U[34];
               _core.sysMsg(Language.ANTIADDICTCANVAS_U[34]);
               break;
            case 1:
               _loc2_ = Language.ANTIADDICTCANVAS_U[35];
               _core.sysMsg(Language.ANTIADDICTCANVAS_U[35]);
               break;
            case 2:
               _loc2_ = Language.ANTIADDICTCANVAS_U[36];
               _core.sysMsg(Language.ANTIADDICTCANVAS_U[36]);
               break;
            case -5:
               _loc2_ = Language.ANTIADDICTCANVAS_U[37];
               break;
            case -11:
               _loc2_ = Language.ANTIADDICTCANVAS_U[30];
               break;
            case -12:
               _loc2_ = Language.ANTIADDICTCANVAS_U[38];
               break;
            case -3:
               _loc2_ = Language.ANTIADDICTCANVAS_U[39];
               break;
            default:
               _loc2_ = Language.ANTIADDICTCANVAS_U[40];
         }
         Alert.show(_loc2_);
         if(param1 != 0)
         {
            idBtnSubmit.enabled = true;
         }
      }
   }
}

