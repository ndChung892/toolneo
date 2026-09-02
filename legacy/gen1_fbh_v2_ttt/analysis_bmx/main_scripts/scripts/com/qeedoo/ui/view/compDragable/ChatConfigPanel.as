package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
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
   import mx.collections.ArrayCollection;
   import mx.containers.Canvas;
   import mx.controls.Alert;
   import mx.controls.CheckBox;
   import mx.controls.Label;
   import mx.controls.List;
   import mx.controls.TextArea;
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class ChatConfigPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private static var index:int = -2;
      
      private var msg:String = Language.CHATCONFIGPANEL_U[1];
      
      public var _ChatConfigPanel_Label1:Label;
      
      public var _ChatConfigPanel_Label2:Label;
      
      private var _1048862271newMsg:TextArea;
      
      mx_internal var _watchers:Array = [];
      
      private var _8705306configCheck:CheckBox;
      
      private var _527147437pListArr:ArrayCollection = new ArrayCollection([{
         "name":Language.CHATCONFIGPANEL_U[2],
         "del":false
      },{
         "name":Language.CHATCONFIGPANEL_U[3],
         "del":false
      },{
         "name":Language.CHATCONFIGPANEL_U[4],
         "del":false
      }]);
      
      public var _ChatConfigPanel_BasicGlowButton1:BasicGlowButton;
      
      public var _ChatConfigPanel_BasicGlowButton2:BasicGlowButton;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _ChatConfigPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _105803054pList:List;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":420,
               "height":326,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_ChatConfigPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"_ChatConfigPanel_BasicGlowButton1",
                  "events":{"click":"___ChatConfigPanel_BasicGlowButton1_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":302.8,
                        "y":263,
                        "styleName":"BtnStdRed",
                        "width":83
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"_ChatConfigPanel_BasicGlowButton2",
                  "events":{"click":"___ChatConfigPanel_BasicGlowButton2_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":302.8,
                        "y":83,
                        "styleName":"BtnStdRed",
                        "width":83
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":CheckBox,
                  "id":"configCheck",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":25,
                        "y":40,
                        "width":269.8
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":25,
                        "y":83,
                        "width":269.8,
                        "height":155,
                        "styleName":"RoundedGradientBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":List,
                           "id":"pList",
                           "stylesFactory":function():void
                           {
                              this.left = "10";
                              this.top = "10";
                              this.bottom = "10";
                              this.right = "10";
                              this.backgroundAlpha = 0;
                              this.borderSides = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "labelField":"name",
                                 "itemRenderer":_ChatConfigPanel_ClassFactory1_c()
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":TextArea,
                  "id":"newMsg",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":25,
                        "y":263,
                        "width":269.8,
                        "styleName":"CSSBorder"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"_ChatConfigPanel_Label1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":25,
                        "y":244,
                        "width":269.8,
                        "styleName":"DescriptionText"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"_ChatConfigPanel_Label2",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":25,
                        "y":60,
                        "width":373,
                        "styleName":"DescriptionText"
                     };
                  }
               })]
            };
         }
      });
      
      public function ChatConfigPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 420;
         this.height = 326;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ChatConfigPanel._watcherSetupUtil = param1;
      }
      
      public function set newMsg(param1:TextArea) : void
      {
         var _loc2_:Object = this._1048862271newMsg;
         if(_loc2_ !== param1)
         {
            this._1048862271newMsg = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"newMsg",_loc2_,param1));
         }
      }
      
      public function onItemClick() : void
      {
         msg = pList.selectedItem.name;
         index = pList.selectedIndex;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:ChatConfigPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ChatConfigPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_ChatConfigPanelWatcherSetupUtil");
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
      
      private function set pListArr(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._527147437pListArr;
         if(_loc2_ !== param1)
         {
            this._527147437pListArr = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pListArr",_loc2_,param1));
         }
      }
      
      public function ___ChatConfigPanel_BasicGlowButton2_click(param1:MouseEvent) : void
      {
         onDeleteMsg();
      }
      
      [Bindable(event="propertyChange")]
      public function get pList() : List
      {
         return this._105803054pList;
      }
      
      private function onDeleteMsg() : void
      {
         if(index == pList.selectedIndex)
         {
            if(pList.selectedItem.del)
            {
               pListArr.removeItemAt(pList.selectedIndex);
               index = -2;
               msg = Language.CHATCONFIGPANEL_U[1];
            }
            else
            {
               Alert.show(Language.CHATCONFIGPANEL_U[6]);
            }
         }
         else
         {
            Alert.show(Language.CHATCONFIGPANEL_U[7]);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get newMsg() : TextArea
      {
         return this._1048862271newMsg;
      }
      
      public function getMsg() : String
      {
         return msg;
      }
      
      private function _ChatConfigPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.CHATCONFIGPANEL_U[0];
         _loc1_ = Language.CHATCONFIGPANEL_U[8];
         _loc1_ = Language.CHATCONFIGPANEL_U[9];
         _loc1_ = Language.CHATCONFIGPANEL_U[10];
         _loc1_ = pListArr;
         _loc1_ = Language.CHATCONFIGPANEL_U[12];
         _loc1_ = Language.CHATCONFIGPANEL_U[14];
      }
      
      private function _ChatConfigPanel_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = ChatConfigPanel_inlineComponent1;
         _loc1_.properties = {"outerDocument":this};
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      private function get pListArr() : ArrayCollection
      {
         return this._527147437pListArr;
      }
      
      private function _ChatConfigPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHATCONFIGPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ChatConfigPanel_BasicTitleCanvas1.text = param1;
         },"_ChatConfigPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHATCONFIGPANEL_U[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ChatConfigPanel_BasicGlowButton1.label = param1;
         },"_ChatConfigPanel_BasicGlowButton1.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHATCONFIGPANEL_U[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ChatConfigPanel_BasicGlowButton2.label = param1;
         },"_ChatConfigPanel_BasicGlowButton2.label");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHATCONFIGPANEL_U[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            configCheck.label = param1;
         },"configCheck.label");
         result[3] = binding;
         binding = new Binding(this,function():Object
         {
            return pListArr;
         },function(param1:Object):void
         {
            pList.dataProvider = param1;
         },"pList.dataProvider");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHATCONFIGPANEL_U[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ChatConfigPanel_Label1.text = param1;
         },"_ChatConfigPanel_Label1.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHATCONFIGPANEL_U[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ChatConfigPanel_Label2.text = param1;
         },"_ChatConfigPanel_Label2.text");
         result[6] = binding;
         return result;
      }
      
      public function set pList(param1:List) : void
      {
         var _loc2_:Object = this._105803054pList;
         if(_loc2_ !== param1)
         {
            this._105803054pList = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pList",_loc2_,param1));
         }
      }
      
      private function onAddMsg() : void
      {
         var _loc1_:Object = null;
         if(pListArr.length < 5)
         {
            if(newMsg.text != "")
            {
               if(newMsg.text.length <= 30)
               {
                  _loc1_ = {};
                  _loc1_.name = newMsg.text.toString();
                  _loc1_.del = true;
                  pListArr.addItemAt(_loc1_,pListArr.length);
                  newMsg.text = "";
                  if(index == -2)
                  {
                     index = pListArr.length - 1;
                     msg = _loc1_.name;
                     pList.selectedIndex = index;
                  }
               }
               else
               {
                  Alert.show(Language.CHATCONFIGPANEL_U[13]);
               }
            }
            else
            {
               Alert.show(Language.CHATCONFIGPANEL_U[5]);
            }
         }
         else
         {
            newMsg.text = "";
            Alert.show(Language.CHATCONFIGPANEL_U[11]);
         }
      }
      
      public function ___ChatConfigPanel_BasicGlowButton1_click(param1:MouseEvent) : void
      {
         onAddMsg();
      }
      
      public function set configCheck(param1:CheckBox) : void
      {
         var _loc2_:Object = this._8705306configCheck;
         if(_loc2_ !== param1)
         {
            this._8705306configCheck = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"configCheck",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get configCheck() : CheckBox
      {
         return this._8705306configCheck;
      }
      
      public function isAutoReply() : Boolean
      {
         return configCheck.selected;
      }
   }
}

