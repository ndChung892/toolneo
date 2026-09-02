package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
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
   import mx.controls.Button;
   import mx.controls.Text;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class MazeQuestionPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _totalNum:int = 0;
      
      mx_internal var _watchers:Array = [];
      
      private var _rightNum:int = 0;
      
      private var _1693512424answerNum:RoundedLabel;
      
      public var _MazeQuestionPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _question:Object;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      public var _MazeQuestionPanel_RoundedLabel1:RoundedLabel;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _MazeQuestionPanel_RoundedLabel3:RoundedLabel;
      
      private var _1436095542rightNum:RoundedLabel;
      
      private var _3034469btnA:Button;
      
      private var _answerNum:int = 0;
      
      private var _1504147653mazeQuestion:Text;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":350,
               "height":273,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_MazeQuestionPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.left = "10";
                     this.right = "10";
                     this.top = "55";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"RoundedGradientBorder",
                        "height":140,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Text,
                           "id":"mazeQuestion",
                           "stylesFactory":function():void
                           {
                              this.left = "10";
                              this.top = "10";
                              this.fontSize = 12;
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":300,
                                 "height":120
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"_MazeQuestionPanel_RoundedLabel1",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                     this.fontSize = 12;
                     this.textAlign = "center";
                     this.fontStyle = "normal";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":73,
                        "y":212
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"answerNum",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                     this.fontSize = 12;
                     this.textAlign = "center";
                     this.fontStyle = "normal";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":143,
                        "y":212
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"_MazeQuestionPanel_RoundedLabel3",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                     this.fontSize = 12;
                     this.textAlign = "center";
                     this.fontStyle = "normal";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":223,
                        "y":212
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"rightNum",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                     this.fontSize = 12;
                     this.textAlign = "center";
                     this.fontStyle = "normal";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":293,
                        "y":212
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"btnA",
                  "events":{"click":"__btnA_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":85,
                        "width":30,
                        "height":20,
                        "y":240,
                        "styleName":"BtnStdRed"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"btnB",
                  "events":{"click":"__btnB_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":135,
                        "width":30,
                        "height":20,
                        "y":240,
                        "styleName":"BtnStdRed"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"btnC",
                  "events":{"click":"__btnC_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":185,
                        "width":30,
                        "height":20,
                        "y":240,
                        "styleName":"BtnStdRed"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"btnD",
                  "events":{"click":"__btnD_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":235,
                        "width":30,
                        "height":20,
                        "y":240,
                        "styleName":"BtnStdRed"
                     };
                  }
               })]
            };
         }
      });
      
      private var _3034471btnC:Button;
      
      private var _3034472btnD:Button;
      
      private var _3034470btnB:Button;
      
      private var _core:Core = Core.getInstance();
      
      public function MazeQuestionPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 350;
         this.height = 273;
         this.styleName = "StandardContent";
         this.cacheAsBitmap = true;
         this.addEventListener("creationComplete",___MazeQuestionPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         MazeQuestionPanel._watcherSetupUtil = param1;
      }
      
      public function showPanel(param1:Object) : void
      {
         this.visible = true;
         if(!param1 || !param1.question)
         {
            return;
         }
         _question = param1.question;
         _answerNum = param1.answerNum;
         _rightNum = param1.rightNum;
         _totalNum = param1.totalNum;
         answerNum.text = Language.MAZE_QUESTION_PANEL_U[6].toString().replace("{num}",_answerNum).replace("{totalnum}",_totalNum);
         rightNum.text = Language.MAZE_QUESTION_PANEL_U[8].toString().replace("{num}",_rightNum);
         var _loc2_:int = -1;
         if(!_question[_answerNum])
         {
            return;
         }
         _loc2_ = int(_question[_answerNum]);
         var _loc3_:Object = GameData.d[GamePredef.TBL_ANSWER][_loc2_];
         if(_loc3_)
         {
            mazeQuestion.text = Language.MAZE_QUESTION_PANEL_U[9].toString().replace("{question}",_loc3_.t).replace("{a}",_loc3_.a).replace("{b}",_loc3_.b).replace("{c}",_loc3_.c).replace("{d}",_loc3_.d);
         }
      }
      
      public function ___MazeQuestionPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         initView();
      }
      
      public function __btnA_click(param1:MouseEvent) : void
      {
         answer("A");
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:MazeQuestionPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _MazeQuestionPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_MazeQuestionPanelWatcherSetupUtil");
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
      
      public function set mazeQuestion(param1:Text) : void
      {
         var _loc2_:Object = this._1504147653mazeQuestion;
         if(_loc2_ !== param1)
         {
            this._1504147653mazeQuestion = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mazeQuestion",_loc2_,param1));
         }
      }
      
      public function set rightNum(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1436095542rightNum;
         if(_loc2_ !== param1)
         {
            this._1436095542rightNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rightNum",_loc2_,param1));
         }
      }
      
      public function __btnC_click(param1:MouseEvent) : void
      {
         answer("C");
      }
      
      private function _MazeQuestionPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAZE_QUESTION_PANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MazeQuestionPanel_BasicTitleCanvas1.text = param1;
         },"_MazeQuestionPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAZE_QUESTION_PANEL_U[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            mazeQuestion.text = param1;
         },"mazeQuestion.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAZE_QUESTION_PANEL_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MazeQuestionPanel_RoundedLabel1.text = param1;
         },"_MazeQuestionPanel_RoundedLabel1.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAZE_QUESTION_PANEL_U[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            answerNum.text = param1;
         },"answerNum.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAZE_QUESTION_PANEL_U[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MazeQuestionPanel_RoundedLabel3.text = param1;
         },"_MazeQuestionPanel_RoundedLabel3.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAZE_QUESTION_PANEL_U[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            rightNum.text = param1;
         },"rightNum.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAZE_QUESTION_PANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnA.label = param1;
         },"btnA.label");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAZE_QUESTION_PANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnB.label = param1;
         },"btnB.label");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAZE_QUESTION_PANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnC.label = param1;
         },"btnC.label");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAZE_QUESTION_PANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnD.label = param1;
         },"btnD.label");
         result[9] = binding;
         return result;
      }
      
      public function answer(param1:String) : void
      {
         if(_answerNum >= _totalNum)
         {
            this.visible = false;
            return;
         }
         var _loc2_:int = -1;
         _loc2_ = int(_question[_answerNum]);
         var _loc3_:Object = GameData.d[GamePredef.TBL_ANSWER][_loc2_];
         if(_loc3_.r == param1)
         {
            ++_rightNum;
         }
         ++_answerNum;
         var _loc4_:Object = {};
         _loc4_.answerNum = _answerNum;
         _loc4_.rightNum = _rightNum;
         if(_answerNum >= _totalNum)
         {
            _core.remote.call("answerMazeQuestion",null,_loc4_);
            this.visible = false;
            return;
         }
         if(!_question[_answerNum])
         {
            return;
         }
         _loc2_ = int(_question[_answerNum]);
         _loc3_ = GameData.d[GamePredef.TBL_ANSWER][_loc2_];
         if(_loc3_)
         {
            mazeQuestion.text = Language.MAZE_QUESTION_PANEL_U[9].toString().replace("{question}",_loc3_.t).replace("{a}",_loc3_.a).replace("{b}",_loc3_.b).replace("{c}",_loc3_.c).replace("{d}",_loc3_.d);
         }
         answerNum.text = Language.MAZE_QUESTION_PANEL_U[6].toString().replace("{num}",_answerNum).replace("{totalnum}",_totalNum);
         rightNum.text = Language.MAZE_QUESTION_PANEL_U[8].toString().replace("{num}",_rightNum);
         _core.remote.call("answerMazeQuestion",null,_loc4_);
      }
      
      public function set btnC(param1:Button) : void
      {
         var _loc2_:Object = this._3034471btnC;
         if(_loc2_ !== param1)
         {
            this._3034471btnC = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnC",_loc2_,param1));
         }
      }
      
      public function __btnB_click(param1:MouseEvent) : void
      {
         answer("B");
      }
      
      public function set answerNum(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1693512424answerNum;
         if(_loc2_ !== param1)
         {
            this._1693512424answerNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"answerNum",_loc2_,param1));
         }
      }
      
      public function __btnD_click(param1:MouseEvent) : void
      {
         answer("D");
      }
      
      public function set btnB(param1:Button) : void
      {
         var _loc2_:Object = this._3034470btnB;
         if(_loc2_ !== param1)
         {
            this._3034470btnB = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnB",_loc2_,param1));
         }
      }
      
      override public function initView() : void
      {
      }
      
      public function set btnD(param1:Button) : void
      {
         var _loc2_:Object = this._3034472btnD;
         if(_loc2_ !== param1)
         {
            this._3034472btnD = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnD",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mazeQuestion() : Text
      {
         return this._1504147653mazeQuestion;
      }
      
      public function set btnA(param1:Button) : void
      {
         var _loc2_:Object = this._3034469btnA;
         if(_loc2_ !== param1)
         {
            this._3034469btnA = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnA",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btnA() : Button
      {
         return this._3034469btnA;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnB() : Button
      {
         return this._3034470btnB;
      }
      
      private function _MazeQuestionPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.MAZE_QUESTION_PANEL_U[0];
         _loc1_ = Language.MAZE_QUESTION_PANEL_U[9];
         _loc1_ = Language.MAZE_QUESTION_PANEL_U[5];
         _loc1_ = Language.MAZE_QUESTION_PANEL_U[6];
         _loc1_ = Language.MAZE_QUESTION_PANEL_U[7];
         _loc1_ = Language.MAZE_QUESTION_PANEL_U[8];
         _loc1_ = Language.MAZE_QUESTION_PANEL_U[1];
         _loc1_ = Language.MAZE_QUESTION_PANEL_U[2];
         _loc1_ = Language.MAZE_QUESTION_PANEL_U[3];
         _loc1_ = Language.MAZE_QUESTION_PANEL_U[4];
      }
      
      [Bindable(event="propertyChange")]
      public function get answerNum() : RoundedLabel
      {
         return this._1693512424answerNum;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnC() : Button
      {
         return this._3034471btnC;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnD() : Button
      {
         return this._3034472btnD;
      }
      
      [Bindable(event="propertyChange")]
      public function get rightNum() : RoundedLabel
      {
         return this._1436095542rightNum;
      }
   }
}

