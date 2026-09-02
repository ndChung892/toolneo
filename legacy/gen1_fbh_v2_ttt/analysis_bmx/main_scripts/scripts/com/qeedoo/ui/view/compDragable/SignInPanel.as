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
   import mx.controls.Button;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.Text;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class SignInPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public static const ACTIVE_ICON:Class = SignInPanel_ACTIVE_ICON;
      
      public static const QianDaoKaPai:Class = SignInPanel_QianDaoKaPai;
      
      public static const QianDaoKaPai1:Class = SignInPanel_QianDaoKaPai1;
      
      public static const YiQianDao:Class = SignInPanel_YiQianDao;
      
      private var _1934594272imgBackGround1:Image;
      
      private var _24325233imgSignin4:Image;
      
      private var _1934594276imgBackGround5:Image;
      
      public var _SignInPanel_Label2:Label;
      
      public var _SignInPanel_Label3:Label;
      
      public var _SignInPanel_Label4:Label;
      
      public var _SignInPanel_Label5:Label;
      
      public var _SignInPanel_Label6:Label;
      
      private var _1934594273imgBackGround2:Image;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _24325236imgSignin1:Image;
      
      private var _24325232imgSignin5:Image;
      
      private var _2088273107signin5:Button;
      
      private var _core:Core = Core.getInstance();
      
      private var _1934594274imgBackGround3:Image;
      
      private var _2088273106signin4:Button;
      
      public var _SignInPanel_Image1:Image;
      
      private var _24325235imgSignin2:Image;
      
      private var _1020731910myLevel2:Label;
      
      mx_internal var _watchers:Array = [];
      
      private var _873453350title2:Canvas;
      
      private var _2088273105signin3:Button;
      
      public var _SignInPanel_Text1:Text;
      
      private var _1934594275imgBackGround4:Image;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _SignInPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _24325234imgSignin3:Image;
      
      private var _2088273103signin1:Button;
      
      mx_internal var _bindings:Array = [];
      
      private var _2088273104signin2:Button;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":560,
               "height":444,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_SignInPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.top = "40";
                     this.bottom = "10";
                     this.left = "10";
                     this.right = "10";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "label":"",
                        "percentWidth":100,
                        "percentHeight":100,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "stylesFactory":function():void
                           {
                              this.left = "10";
                              this.right = "10";
                              this.top = "10";
                              this.bottom = "10";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"RoundedGradientBorder",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_SignInPanel_Image1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":5,
                                          "width":500,
                                          "height":75
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"title2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"RoundedGradientBorder",
                                          "x":10,
                                          "y":85,
                                          "width":500,
                                          "height":100,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Text,
                                             "id":"_SignInPanel_Text1",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "10";
                                                this.top = "10";
                                                this.fontSize = 14;
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"height":80};
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"myLevel2",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":150,
                                          "width":410,
                                          "height":30,
                                          "text":""
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imgBackGround1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":50,
                                          "y":210
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_SignInPanel_Label2",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":70,
                                          "y":220,
                                          "width":80,
                                          "height":20
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imgSignin1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "visible":false,
                                          "x":40,
                                          "y":210
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Button,
                                    "id":"signin1",
                                    "events":{"click":"__signin1_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":62,
                                          "y":313,
                                          "styleName":"BtnStdRed",
                                          "enabled":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imgBackGround2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":135,
                                          "y":210
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_SignInPanel_Label3",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":155,
                                          "y":220,
                                          "width":80,
                                          "height":20
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imgSignin2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "visible":false,
                                          "x":125,
                                          "y":210
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Button,
                                    "id":"signin2",
                                    "events":{"click":"__signin2_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":147,
                                          "y":313,
                                          "styleName":"BtnStdRed",
                                          "enabled":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imgBackGround3",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":220,
                                          "y":210
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_SignInPanel_Label4",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":240,
                                          "y":220,
                                          "width":80,
                                          "height":20
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imgSignin3",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "visible":false,
                                          "x":210,
                                          "y":210
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Button,
                                    "id":"signin3",
                                    "events":{"click":"__signin3_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":232,
                                          "y":313,
                                          "styleName":"BtnStdRed",
                                          "enabled":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imgBackGround4",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":305,
                                          "y":210
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_SignInPanel_Label5",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":325,
                                          "y":220,
                                          "width":80,
                                          "height":20
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imgSignin4",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "visible":false,
                                          "x":295,
                                          "y":210
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Button,
                                    "id":"signin4",
                                    "events":{"click":"__signin4_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":315,
                                          "y":313,
                                          "styleName":"BtnStdRed",
                                          "enabled":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imgBackGround5",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":390,
                                          "y":210
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_SignInPanel_Label6",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":410,
                                          "y":220,
                                          "width":80,
                                          "height":20
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"imgSignin5",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "visible":false,
                                          "x":380,
                                          "y":210
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Button,
                                    "id":"signin5",
                                    "events":{"click":"__signin5_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":402,
                                          "y":313,
                                          "styleName":"BtnStdRed",
                                          "enabled":false
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
      
      public function SignInPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 560;
         this.height = 444;
         this.styleName = "StandardContent";
         this.x = 135;
         this.y = 258;
         this.addEventListener("creationComplete",___SignInPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         SignInPanel._watcherSetupUtil = param1;
      }
      
      public function ___SignInPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      public function init() : void
      {
         _core.remote.call("getSignInData",new Responder(onGetSignInData),null);
      }
      
      public function set imgSignin1(param1:Image) : void
      {
         var _loc2_:Object = this._24325236imgSignin1;
         if(_loc2_ !== param1)
         {
            this._24325236imgSignin1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imgSignin1",_loc2_,param1));
         }
      }
      
      public function set imgSignin5(param1:Image) : void
      {
         var _loc2_:Object = this._24325232imgSignin5;
         if(_loc2_ !== param1)
         {
            this._24325232imgSignin5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imgSignin5",_loc2_,param1));
         }
      }
      
      public function set imgSignin3(param1:Image) : void
      {
         var _loc2_:Object = this._24325234imgSignin3;
         if(_loc2_ !== param1)
         {
            this._24325234imgSignin3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imgSignin3",_loc2_,param1));
         }
      }
      
      public function set imgSignin4(param1:Image) : void
      {
         var _loc2_:Object = this._24325233imgSignin4;
         if(_loc2_ !== param1)
         {
            this._24325233imgSignin4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imgSignin4",_loc2_,param1));
         }
      }
      
      public function set imgSignin2(param1:Image) : void
      {
         var _loc2_:Object = this._24325235imgSignin2;
         if(_loc2_ !== param1)
         {
            this._24325235imgSignin2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imgSignin2",_loc2_,param1));
         }
      }
      
      public function __signin1_click(param1:MouseEvent) : void
      {
         signin();
      }
      
      public function __signin5_click(param1:MouseEvent) : void
      {
         signin();
      }
      
      public function __signin2_click(param1:MouseEvent) : void
      {
         signin();
      }
      
      [Bindable(event="propertyChange")]
      public function get imgSignin2() : Image
      {
         return this._24325235imgSignin2;
      }
      
      [Bindable(event="propertyChange")]
      public function get imgSignin4() : Image
      {
         return this._24325233imgSignin4;
      }
      
      [Bindable(event="propertyChange")]
      public function get imgSignin5() : Image
      {
         return this._24325232imgSignin5;
      }
      
      [Bindable(event="propertyChange")]
      public function get imgSignin3() : Image
      {
         return this._24325234imgSignin3;
      }
      
      [Bindable(event="propertyChange")]
      public function get imgSignin1() : Image
      {
         return this._24325236imgSignin1;
      }
      
      public function set signin1(param1:Button) : void
      {
         var _loc2_:Object = this._2088273103signin1;
         if(_loc2_ !== param1)
         {
            this._2088273103signin1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"signin1",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:SignInPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _SignInPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_SignInPanelWatcherSetupUtil");
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
      
      public function set signin2(param1:Button) : void
      {
         var _loc2_:Object = this._2088273104signin2;
         if(_loc2_ !== param1)
         {
            this._2088273104signin2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"signin2",_loc2_,param1));
         }
      }
      
      public function signin() : void
      {
         _core.remote.call("signinNow",new Responder(onGetSignInData),null);
      }
      
      public function set signin4(param1:Button) : void
      {
         var _loc2_:Object = this._2088273106signin4;
         if(_loc2_ !== param1)
         {
            this._2088273106signin4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"signin4",_loc2_,param1));
         }
      }
      
      public function set signin3(param1:Button) : void
      {
         var _loc2_:Object = this._2088273105signin3;
         if(_loc2_ !== param1)
         {
            this._2088273105signin3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"signin3",_loc2_,param1));
         }
      }
      
      public function set signin5(param1:Button) : void
      {
         var _loc2_:Object = this._2088273107signin5;
         if(_loc2_ !== param1)
         {
            this._2088273107signin5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"signin5",_loc2_,param1));
         }
      }
      
      public function set title2(param1:Canvas) : void
      {
         var _loc2_:Object = this._873453350title2;
         if(_loc2_ !== param1)
         {
            this._873453350title2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"title2",_loc2_,param1));
         }
      }
      
      public function set imgBackGround1(param1:Image) : void
      {
         var _loc2_:Object = this._1934594272imgBackGround1;
         if(_loc2_ !== param1)
         {
            this._1934594272imgBackGround1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imgBackGround1",_loc2_,param1));
         }
      }
      
      public function __signin3_click(param1:MouseEvent) : void
      {
         signin();
      }
      
      public function set imgBackGround2(param1:Image) : void
      {
         var _loc2_:Object = this._1934594273imgBackGround2;
         if(_loc2_ !== param1)
         {
            this._1934594273imgBackGround2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imgBackGround2",_loc2_,param1));
         }
      }
      
      public function set imgBackGround3(param1:Image) : void
      {
         var _loc2_:Object = this._1934594274imgBackGround3;
         if(_loc2_ !== param1)
         {
            this._1934594274imgBackGround3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imgBackGround3",_loc2_,param1));
         }
      }
      
      public function set imgBackGround4(param1:Image) : void
      {
         var _loc2_:Object = this._1934594275imgBackGround4;
         if(_loc2_ !== param1)
         {
            this._1934594275imgBackGround4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imgBackGround4",_loc2_,param1));
         }
      }
      
      public function set imgBackGround5(param1:Image) : void
      {
         var _loc2_:Object = this._1934594276imgBackGround5;
         if(_loc2_ !== param1)
         {
            this._1934594276imgBackGround5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imgBackGround5",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get signin2() : Button
      {
         return this._2088273104signin2;
      }
      
      [Bindable(event="propertyChange")]
      public function get signin3() : Button
      {
         return this._2088273105signin3;
      }
      
      [Bindable(event="propertyChange")]
      public function get signin4() : Button
      {
         return this._2088273106signin4;
      }
      
      private function _SignInPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.SERVERACTPANEL_S[37];
         _loc1_ = ACTIVE_ICON;
         _loc1_ = Language.SIGN_IN_U[0];
         _loc1_ = QianDaoKaPai1;
         _loc1_ = Language.SIGN_IN_U[1];
         _loc1_ = Language.SIGN_IN_U[6];
         _loc1_ = YiQianDao;
         _loc1_ = Language.SIGN_IN_U[11];
         _loc1_ = QianDaoKaPai1;
         _loc1_ = Language.SIGN_IN_U[2];
         _loc1_ = Language.SIGN_IN_U[7];
         _loc1_ = YiQianDao;
         _loc1_ = Language.SIGN_IN_U[11];
         _loc1_ = QianDaoKaPai1;
         _loc1_ = Language.SIGN_IN_U[3];
         _loc1_ = Language.SIGN_IN_U[8];
         _loc1_ = YiQianDao;
         _loc1_ = Language.SIGN_IN_U[11];
         _loc1_ = QianDaoKaPai1;
         _loc1_ = Language.SIGN_IN_U[4];
         _loc1_ = Language.SIGN_IN_U[9];
         _loc1_ = YiQianDao;
         _loc1_ = Language.SIGN_IN_U[11];
         _loc1_ = QianDaoKaPai1;
         _loc1_ = Language.SIGN_IN_U[5];
         _loc1_ = Language.SIGN_IN_U[10];
         _loc1_ = YiQianDao;
         _loc1_ = Language.SIGN_IN_U[11];
      }
      
      [Bindable(event="propertyChange")]
      public function get signin1() : Button
      {
         return this._2088273103signin1;
      }
      
      private function _SignInPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[37];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _SignInPanel_BasicTitleCanvas1.text = param1;
         },"_SignInPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return ACTIVE_ICON;
         },function(param1:Object):void
         {
            _SignInPanel_Image1.source = param1;
         },"_SignInPanel_Image1.source");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SIGN_IN_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _SignInPanel_Text1.text = param1;
         },"_SignInPanel_Text1.text");
         result[2] = binding;
         binding = new Binding(this,function():Object
         {
            return QianDaoKaPai1;
         },function(param1:Object):void
         {
            imgBackGround1.source = param1;
         },"imgBackGround1.source");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SIGN_IN_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            imgBackGround1.toolTip = param1;
         },"imgBackGround1.toolTip");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SIGN_IN_U[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _SignInPanel_Label2.text = param1;
         },"_SignInPanel_Label2.text");
         result[5] = binding;
         binding = new Binding(this,function():Object
         {
            return YiQianDao;
         },function(param1:Object):void
         {
            imgSignin1.source = param1;
         },"imgSignin1.source");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SIGN_IN_U[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            signin1.label = param1;
         },"signin1.label");
         result[7] = binding;
         binding = new Binding(this,function():Object
         {
            return QianDaoKaPai1;
         },function(param1:Object):void
         {
            imgBackGround2.source = param1;
         },"imgBackGround2.source");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SIGN_IN_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            imgBackGround2.toolTip = param1;
         },"imgBackGround2.toolTip");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SIGN_IN_U[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _SignInPanel_Label3.text = param1;
         },"_SignInPanel_Label3.text");
         result[10] = binding;
         binding = new Binding(this,function():Object
         {
            return YiQianDao;
         },function(param1:Object):void
         {
            imgSignin2.source = param1;
         },"imgSignin2.source");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SIGN_IN_U[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            signin2.label = param1;
         },"signin2.label");
         result[12] = binding;
         binding = new Binding(this,function():Object
         {
            return QianDaoKaPai1;
         },function(param1:Object):void
         {
            imgBackGround3.source = param1;
         },"imgBackGround3.source");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SIGN_IN_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            imgBackGround3.toolTip = param1;
         },"imgBackGround3.toolTip");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SIGN_IN_U[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _SignInPanel_Label4.text = param1;
         },"_SignInPanel_Label4.text");
         result[15] = binding;
         binding = new Binding(this,function():Object
         {
            return YiQianDao;
         },function(param1:Object):void
         {
            imgSignin3.source = param1;
         },"imgSignin3.source");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SIGN_IN_U[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            signin3.label = param1;
         },"signin3.label");
         result[17] = binding;
         binding = new Binding(this,function():Object
         {
            return QianDaoKaPai1;
         },function(param1:Object):void
         {
            imgBackGround4.source = param1;
         },"imgBackGround4.source");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SIGN_IN_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            imgBackGround4.toolTip = param1;
         },"imgBackGround4.toolTip");
         result[19] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SIGN_IN_U[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _SignInPanel_Label5.text = param1;
         },"_SignInPanel_Label5.text");
         result[20] = binding;
         binding = new Binding(this,function():Object
         {
            return YiQianDao;
         },function(param1:Object):void
         {
            imgSignin4.source = param1;
         },"imgSignin4.source");
         result[21] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SIGN_IN_U[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            signin4.label = param1;
         },"signin4.label");
         result[22] = binding;
         binding = new Binding(this,function():Object
         {
            return QianDaoKaPai1;
         },function(param1:Object):void
         {
            imgBackGround5.source = param1;
         },"imgBackGround5.source");
         result[23] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SIGN_IN_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            imgBackGround5.toolTip = param1;
         },"imgBackGround5.toolTip");
         result[24] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SIGN_IN_U[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _SignInPanel_Label6.text = param1;
         },"_SignInPanel_Label6.text");
         result[25] = binding;
         binding = new Binding(this,function():Object
         {
            return YiQianDao;
         },function(param1:Object):void
         {
            imgSignin5.source = param1;
         },"imgSignin5.source");
         result[26] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SIGN_IN_U[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            signin5.label = param1;
         },"signin5.label");
         result[27] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get imgBackGround1() : Image
      {
         return this._1934594272imgBackGround1;
      }
      
      [Bindable(event="propertyChange")]
      public function get imgBackGround3() : Image
      {
         return this._1934594274imgBackGround3;
      }
      
      public function onGetSignInData(param1:Object) : void
      {
         var _loc4_:* = undefined;
         if(!param1)
         {
            return;
         }
         var _loc2_:Number = Number(param1.continueSigninTime);
         var _loc3_:Boolean = Boolean(param1.signinedToday);
         _loc4_ = 1;
         while(_loc4_ <= 5)
         {
            this["signin" + _loc4_].enabled = false;
            this["imgSignin" + _loc4_].visible = false;
            this["imgBackGround" + _loc4_].source = QianDaoKaPai1;
            _loc4_++;
         }
         var _loc5_:Boolean = Boolean(param1.signedYesterday);
         if(!_loc5_)
         {
            if(_loc3_)
            {
               this["signin1"].enabled = false;
               this["imgBackGround1"].source = QianDaoKaPai1;
               this["imgSignin1"].visible = true;
            }
            else
            {
               this["signin1"].enabled = true;
               this["imgBackGround1"].source = QianDaoKaPai;
            }
            _loc4_ = 2;
            while(_loc4_ <= 5)
            {
               this["imgBackGround" + _loc4_].source = QianDaoKaPai1;
               _loc4_++;
            }
         }
         else if(!_loc3_)
         {
            if(_loc2_ == 4)
            {
               this["signin5"].enabled = true;
               this["imgBackGround5"].source = QianDaoKaPai;
            }
            else
            {
               this["signin" + (_loc2_ + 1) % 5].enabled = true;
               this["imgBackGround" + (_loc2_ + 1) % 5].source = QianDaoKaPai;
            }
            if(_loc2_ != 5)
            {
               _loc4_ = 1;
               while(_loc4_ <= _loc2_)
               {
                  this["imgSignin" + _loc4_].visible = true;
                  _loc4_++;
               }
            }
         }
         else
         {
            _loc4_ = 1;
            while(_loc4_ <= _loc2_)
            {
               this["imgSignin" + _loc4_].visible = true;
               _loc4_++;
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get imgBackGround5() : Image
      {
         return this._1934594276imgBackGround5;
      }
      
      [Bindable(event="propertyChange")]
      public function get imgBackGround2() : Image
      {
         return this._1934594273imgBackGround2;
      }
      
      [Bindable(event="propertyChange")]
      public function get title2() : Canvas
      {
         return this._873453350title2;
      }
      
      [Bindable(event="propertyChange")]
      public function get imgBackGround4() : Image
      {
         return this._1934594275imgBackGround4;
      }
      
      [Bindable(event="propertyChange")]
      public function get signin5() : Button
      {
         return this._2088273107signin5;
      }
      
      public function set myLevel2(param1:Label) : void
      {
         var _loc2_:Object = this._1020731910myLevel2;
         if(_loc2_ !== param1)
         {
            this._1020731910myLevel2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myLevel2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get myLevel2() : Label
      {
         return this._1020731910myLevel2;
      }
      
      public function __signin4_click(param1:MouseEvent) : void
      {
         signin();
      }
   }
}

