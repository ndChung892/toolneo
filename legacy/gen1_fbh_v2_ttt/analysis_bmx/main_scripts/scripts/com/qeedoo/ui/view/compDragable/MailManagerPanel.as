package com.qeedoo.ui.view.compDragable
{
   import com.adobe.crypto.MD5;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.comp.BasicDelayButton;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.BasicTxtButton;
   import com.qeedoo.ui.view.comp.Currency;
   import com.qeedoo.ui.view.comp.DescriptionLabel;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.ItemSlotMail;
   import com.qeedoo.ui.view.comp.PageSelector;
   import com.qeedoo.ui.view.comp.RendererImage;
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
   import mx.containers.Canvas;
   import mx.containers.HBox;
   import mx.containers.ViewStack;
   import mx.controls.Alert;
   import mx.controls.CheckBox;
   import mx.controls.DataGrid;
   import mx.controls.TextArea;
   import mx.controls.TextInput;
   import mx.controls.dataGridClasses.DataGridColumn;
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.ListEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class MailManagerPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _MailManagerPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _95727488doDel:BasicGlowButton;
      
      public var _MailManagerPanel_DataGridColumn10:DataGridColumn;
      
      private var senderId:Number;
      
      private var _830952030mailTab:ViewStack;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1554141559tabBtn0:BasicGlowButton;
      
      private var _3242771item:ItemSlotMail;
      
      private var _core:Core = Core.getInstance();
      
      private var PAGE_MAX_ITEM_NUM:* = 12;
      
      private var _1867885268subject:TextInput;
      
      private var pageMyMailAC:ArrayCollection;
      
      private var _557789977mailDataGrid:DataGrid;
      
      private var _940964344codGold:Currency;
      
      private var _1554141557tabBtn2:BasicGlowButton;
      
      private var firstTimeFlag:int = 0;
      
      private var _678360261presentMoney:Currency;
      
      private var _898785680codCheck:CheckBox;
      
      private var _10286204mailText:TextArea;
      
      private var _2085075210mailSystemDataGrid:DataGrid;
      
      private var _1335493226delAll:CheckBox;
      
      private var myMailAC:ArrayCollection;
      
      private var pageAC:ArrayCollection = new ArrayCollection();
      
      public var mailList:Object;
      
      private var _668907789presentCheck:CheckBox;
      
      private var delMailId:Number;
      
      public var _MailManagerPanel_DescriptionLabel1:DescriptionLabel;
      
      private var _889333208codMoney:Currency;
      
      private var _1225222213presentGold:Currency;
      
      public var _MailManagerPanel_DataGridColumn3:DataGridColumn;
      
      public var _MailManagerPanel_DataGridColumn4:DataGridColumn;
      
      public var _MailManagerPanel_DataGridColumn5:DataGridColumn;
      
      public var _MailManagerPanel_DataGridColumn8:DataGridColumn;
      
      public var _MailManagerPanel_DataGridColumn9:DataGridColumn;
      
      public var _MailManagerPanel_BasicTxtButton1:BasicTxtButton;
      
      public var _MailManagerPanel_BasicTxtButton2:BasicTxtButton;
      
      public var _MailManagerPanel_BasicTxtButton3:BasicTxtButton;
      
      private var idArr:Array;
      
      private var mailSystemAC:ArrayCollection;
      
      private var _1554141558tabBtn1:BasicGlowButton;
      
      mx_internal var _watchers:Array = [];
      
      private var pageMailSystemAC:ArrayCollection;
      
      private var itemPageNo:int = 1;
      
      public var _MailManagerPanel_Canvas1:Canvas;
      
      public var _MailManagerPanel_Canvas2:Canvas;
      
      public var _MailManagerPanel_Canvas3:Canvas;
      
      private var _607339634pageSelector:PageSelector;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _MailManagerPanel_BasicDelayButton1:BasicDelayButton;
      
      private var currentTime:Number;
      
      private var _808719889receiver:TextInput;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":280,
               "height":395,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_MailManagerPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":DescriptionLabel,
                  "id":"_MailManagerPanel_DescriptionLabel1",
                  "stylesFactory":function():void
                  {
                     this.left = "15";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":40,
                        "width":250,
                        "height":35
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ViewStack,
                  "id":"mailTab",
                  "stylesFactory":function():void
                  {
                     this.left = "15";
                     this.right = "15";
                     this.top = "80";
                     this.bottom = "15";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "creationPolicy":"all",
                        "resizeToContent":true,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"_MailManagerPanel_Canvas1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"RoundedGradientBorder",
                                 "percentWidth":100,
                                 "percentHeight":100,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":DataGrid,
                                    "id":"mailSystemDataGrid",
                                    "events":{
                                       "itemClick":"__mailSystemDataGrid_itemClick",
                                       "mouseMove":"__mailSystemDataGrid_mouseMove"
                                    },
                                    "stylesFactory":function():void
                                    {
                                       this.alternatingItemColors = [16777215,16777215];
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "resizableColumns":false,
                                          "draggableColumns":false,
                                          "height":256,
                                          "columns":[_MailManagerPanel_DataGridColumn1_c(),_MailManagerPanel_DataGridColumn2_c(),_MailManagerPanel_DataGridColumn3_i(),_MailManagerPanel_DataGridColumn4_i(),_MailManagerPanel_DataGridColumn5_i()]
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"_MailManagerPanel_Canvas2",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"RoundedGradientBorder",
                                 "percentWidth":100,
                                 "percentHeight":100,
                                 "creationPolicy":"all",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":DataGrid,
                                    "id":"mailDataGrid",
                                    "events":{
                                       "itemClick":"__mailDataGrid_itemClick",
                                       "mouseMove":"__mailDataGrid_mouseMove"
                                    },
                                    "stylesFactory":function():void
                                    {
                                       this.alternatingItemColors = [16777215,16777215];
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "resizableColumns":false,
                                          "draggableColumns":false,
                                          "columns":[_MailManagerPanel_DataGridColumn6_c(),_MailManagerPanel_DataGridColumn7_c(),_MailManagerPanel_DataGridColumn8_i(),_MailManagerPanel_DataGridColumn9_i(),_MailManagerPanel_DataGridColumn10_i()]
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"_MailManagerPanel_Canvas3",
                           "events":{"mouseDown":"___MailManagerPanel_Canvas3_mouseDown"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "percentWidth":100,
                                 "percentHeight":100,
                                 "styleName":"CanvasBorder",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":TextInput,
                                    "id":"receiver",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "height":19,
                                          "width":168,
                                          "y":10,
                                          "x":69
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":TextInput,
                                    "id":"subject",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "height":19,
                                          "width":168,
                                          "y":36,
                                          "x":69,
                                          "enabled":true
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":TextArea,
                                    "id":"mailText",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"CSSBorder",
                                          "height":125,
                                          "y":63,
                                          "width":227,
                                          "x":12,
                                          "enabled":true
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlotMail,
                                    "id":"item",
                                    "events":{"doubleClick":"__item_doubleClick"},
                                    "stylesFactory":function():void
                                    {
                                       this.left = "13";
                                       this.top = "220";
                                       this.borderStyle = "none";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "doubleClickEnabled":true,
                                          "movable":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":CheckBox,
                                    "id":"presentCheck",
                                    "events":{"click":"__presentCheck_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.left = "71";
                                       this.top = "193.05";
                                       this.fontSize = 12;
                                       this.fontWeight = "bold";
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":CheckBox,
                                    "id":"codCheck",
                                    "events":{"click":"__codCheck_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.fontWeight = "bold";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":160,
                                          "y":192
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Currency,
                                    "id":"presentMoney",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "inputEnabled":false,
                                          "x":59,
                                          "y":218,
                                          "width":80
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Currency,
                                    "id":"presentGold",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "inputEnabled":false,
                                          "x":59,
                                          "y":240,
                                          "width":80
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Currency,
                                    "id":"codMoney",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "inputEnabled":false,
                                          "x":147,
                                          "y":218,
                                          "width":80
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Currency,
                                    "id":"codGold",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "inputEnabled":false,
                                          "x":147,
                                          "y":240,
                                          "width":80
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicDelayButton,
                                    "id":"_MailManagerPanel_BasicDelayButton1",
                                    "events":{"click":"___MailManagerPanel_BasicDelayButton1_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "clickDelay":3000,
                                          "x":189,
                                          "y":265,
                                          "styleName":"BtnStdRed",
                                          "width":48.4
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_MailManagerPanel_BasicTxtButton1",
                                    "stylesFactory":function():void
                                    {
                                       this.paddingLeft = 1;
                                       this.paddingRight = 1;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":11,
                                          "width":50,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_MailManagerPanel_BasicTxtButton2",
                                    "stylesFactory":function():void
                                    {
                                       this.paddingLeft = 1;
                                       this.paddingRight = 1;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":36,
                                          "width":50,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_MailManagerPanel_BasicTxtButton3",
                                    "stylesFactory":function():void
                                    {
                                       this.paddingLeft = 1;
                                       this.paddingRight = 1;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":196,
                                          "width":38,
                                          "height":18
                                       };
                                    }
                                 })]
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":CheckBox,
                  "id":"delAll",
                  "events":{"click":"__delAll_click"},
                  "stylesFactory":function():void
                  {
                     this.left = "20";
                     this.bottom = "20";
                  }
               }),new UIComponentDescriptor({
                  "type":PageSelector,
                  "id":"pageSelector",
                  "stylesFactory":function():void
                  {
                     this.bottom = "20";
                     this.horizontalCenter = "41";
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"doDel",
                  "events":{"click":"__doDel_click"},
                  "stylesFactory":function():void
                  {
                     this.bottom = "20";
                     this.left = "67";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"styleName":"HorizontalTab"};
                  }
               }),new UIComponentDescriptor({
                  "type":HBox,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":60,
                        "x":25,
                        "styleName":"HTabWrapper",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"tabBtn0",
                           "events":{"click":"__tabBtn0_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HorizontalTab",
                                 "selected":true,
                                 "width":59
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"tabBtn1",
                           "events":{"click":"__tabBtn1_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HorizontalTab",
                                 "width":59
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"tabBtn2",
                           "events":{"click":"__tabBtn2_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HorizontalTab",
                                 "width":59
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      public function MailManagerPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 280;
         this.height = 395;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         MailManagerPanel._watcherSetupUtil = param1;
      }
      
      public function ___MailManagerPanel_Canvas3_mouseDown(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
      }
      
      public function __mailSystemDataGrid_itemClick(param1:ListEvent) : void
      {
         showMail(param1);
      }
      
      public function set presentCheck(param1:CheckBox) : void
      {
         var _loc2_:Object = this._668907789presentCheck;
         if(_loc2_ !== param1)
         {
            this._668907789presentCheck = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"presentCheck",_loc2_,param1));
         }
      }
      
      private function _MailManagerPanel_DataGridColumn4_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _MailManagerPanel_DataGridColumn4 = _loc1_;
         _loc1_.dataField = "subject";
         _loc1_.itemRenderer = _MailManagerPanel_ClassFactory4_c();
         _loc1_.setStyle("textAlign","center");
         BindingManager.executeBindings(this,"_MailManagerPanel_DataGridColumn4",_MailManagerPanel_DataGridColumn4);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get codMoney() : Currency
      {
         return this._889333208codMoney;
      }
      
      public function __doDel_click(param1:MouseEvent) : void
      {
         delMails();
      }
      
      public function set item(param1:ItemSlotMail) : void
      {
         var _loc2_:Object = this._3242771item;
         if(_loc2_ !== param1)
         {
            this._3242771item = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item",_loc2_,param1));
         }
      }
      
      private function _MailManagerPanel_ClassFactory8_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = MailManagerPanel_inlineComponent7;
         _loc1_.properties = {"outerDocument":this};
         return _loc1_;
      }
      
      private function _MailManagerPanel_DataGridColumn10_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _MailManagerPanel_DataGridColumn10 = _loc1_;
         _loc1_.width = 32;
         _loc1_.dataField = "remainDate";
         _loc1_.itemRenderer = _MailManagerPanel_ClassFactory10_c();
         BindingManager.executeBindings(this,"_MailManagerPanel_DataGridColumn10",_MailManagerPanel_DataGridColumn10);
         return _loc1_;
      }
      
      public function updateCurrentMail(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         if(mailList[param1.id].senderId > 0)
         {
            for(_loc3_ in myMailAC)
            {
               if(param1.id == myMailAC[_loc3_].id)
               {
                  setMailState(myMailAC[_loc3_],mailList[param1.id]);
                  pageSelector.refreshPage();
                  return;
               }
            }
            return;
         }
         for(_loc2_ in mailSystemAC)
         {
            if(param1.id == mailSystemAC[_loc2_].id)
            {
               setMailState(mailSystemAC[_loc2_],mailList[param1.id]);
               pageSelector.refreshPage();
               return;
            }
         }
      }
      
      public function set codMoney(param1:Currency) : void
      {
         var _loc2_:Object = this._889333208codMoney;
         if(_loc2_ !== param1)
         {
            this._889333208codMoney = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"codMoney",_loc2_,param1));
         }
      }
      
      private function delMails() : void
      {
         var _loc2_:Object = null;
         idArr = new Array();
         var _loc1_:Boolean = false;
         for each(_loc2_ in pageAC)
         {
            if(1 == _loc2_.delCheckBox)
            {
               idArr.push(_loc2_.id);
               if(_loc2_.mailData.money > 0 || _loc2_.mailData.gold > 0 || _loc2_.mailData.itemType > 0 && _loc2_.mailData.itemId > 0 && _loc2_.mailData.stackNum > 0)
               {
                  _loc1_ = true;
               }
            }
         }
         if(idArr.length <= 0)
         {
            Alert.show(Language.MAILMANAGERPANEL_S[22]);
            return;
         }
         if(_loc1_)
         {
            if(mailTab.selectedIndex)
            {
               Alert.show(Language.MAILMANAGERPANEL_S[19],"",3,this,delMailsHandler);
            }
            else
            {
               Alert.show(Language.MAILMANAGERPANEL_S[18],"",3,this,delMailsHandler);
            }
         }
         else
         {
            Alert.show(Language.MAILMANAGERPANEL_S[17],"",3,this,delMailsHandler);
         }
      }
      
      private function showMail(param1:ListEvent) : void
      {
         var _loc2_:Object = _core.view.getUI(ViewManager.PANEL_MAIL);
         _loc2_.showMail(param1.target.selectedItem.mailData);
         _loc2_.startFollow(this);
      }
      
      public function initNewMail(param1:String = "") : void
      {
         if(param1 != "")
         {
            receiver.text = param1;
            tabBtnClick(2);
            visible = true;
         }
         subject.text = "";
         mailText.text = "";
         presentCheck.selected = false;
         presentMoney.value = 0;
         presentGold.value = 0;
         codCheck.selected = false;
         codMoney.value = 0;
         codGold.value = 0;
         presentMoney.inputEnabled = false;
         presentGold.inputEnabled = false;
         codMoney.inputEnabled = false;
         codGold.inputEnabled = false;
         item.clean();
         presentMoney.maxValue = _core.player.money;
         presentGold.maxValue = _core.player.gold;
      }
      
      public function set subject(param1:TextInput) : void
      {
         var _loc2_:Object = this._1867885268subject;
         if(_loc2_ !== param1)
         {
            this._1867885268subject = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"subject",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mailTab() : ViewStack
      {
         return this._830952030mailTab;
      }
      
      private function _MailManagerPanel_DataGridColumn3_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _MailManagerPanel_DataGridColumn3 = _loc1_;
         _loc1_.width = 50;
         _loc1_.dataField = "senderName";
         _loc1_.itemRenderer = _MailManagerPanel_ClassFactory3_c();
         BindingManager.executeBindings(this,"_MailManagerPanel_DataGridColumn3",_MailManagerPanel_DataGridColumn3);
         return _loc1_;
      }
      
      public function delMail(param1:int) : void
      {
         var _loc2_:Object = mailList[param1];
         if(_loc2_ != null)
         {
            if(_loc2_.money > 0 || _loc2_.gold > 0 || _loc2_.itemType > 0 && _loc2_.itemId > 0 && _loc2_.stackNum > 0)
            {
               if(_loc2_.senderId > 0)
               {
                  delMailId = param1;
                  Alert.show(Language.MAILMANAGERPANEL_S[5],"",3,this,delMailHandler);
               }
               else
               {
                  delMailId = param1;
                  Alert.show(Language.MAILMANAGERPANEL_S[6],"",3,this,delMailHandler);
               }
            }
            else
            {
               delMailId = param1;
               Alert.show(Language.MAILMANAGERPANEL_S[7],"",3,this,delMailHandler);
            }
         }
      }
      
      private function _MailManagerPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.MAILMANAGERPANEL_U[4];
         _loc1_ = Language.MAILMANAGERPANEL_S[15];
         _loc1_ = Language.MAIL_MANAGER_PANEL_U[1];
         _loc1_ = Language.MAILMANAGERPANEL_S[8];
         _loc1_ = Language.MAILMANAGERPANEL_S[9];
         _loc1_ = Language.MAILMANAGERPANEL_S[10];
         _loc1_ = Language.MAIL_MANAGER_PANEL_U[2];
         _loc1_ = Language.MAILMANAGERPANEL_S[8];
         _loc1_ = Language.MAILMANAGERPANEL_S[9];
         _loc1_ = Language.MAILMANAGERPANEL_S[10];
         _loc1_ = Language.MAIL_MANAGER_PANEL_U[3];
         _loc1_ = Language.MAILMANAGERPANEL_S[11];
         _loc1_ = Language.MAILMANAGERPANEL_S[12];
         _loc1_ = Currency.TYPE_MONEY;
         _loc1_ = Currency.TYPE_GOLD;
         _loc1_ = Currency.TYPE_MONEY;
         _loc1_ = Currency.TYPE_GOLD;
         _loc1_ = Language.MAILMANAGERPANEL_U[0];
         _loc1_ = Language.MAILMANAGERPANEL_U[5];
         _loc1_ = Language.MAILMANAGERPANEL_U[6];
         _loc1_ = Language.MAILMANAGERPANEL_U[7];
         _loc1_ = Language.MAILMANAGERPANEL_U[8];
         _loc1_ = Language.MAILMANAGERPANEL_U[9];
         _loc1_ = Language.MAILMANAGERPANEL_U[10];
         _loc1_ = Language.MAILMANAGERPANEL_U[1];
         _loc1_ = Language.MAILMANAGERPANEL_U[2];
         _loc1_ = Language.MAILMANAGERPANEL_U[3];
      }
      
      public function chooseMail(param1:int) : void
      {
         var _loc2_:int = 0;
         if(0 == mailTab.selectedIndex)
         {
            _loc2_ = mailSystemDataGrid.selectedIndex + pageSelector.pageNo * PAGE_MAX_ITEM_NUM;
            pageAC[_loc2_].delCheckBox = param1;
         }
         else if(1 == mailTab.selectedIndex)
         {
            _loc2_ = mailDataGrid.selectedIndex + pageSelector.pageNo * PAGE_MAX_ITEM_NUM;
            pageAC[_loc2_].delCheckBox = param1;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get codCheck() : CheckBox
      {
         return this._898785680codCheck;
      }
      
      public function __tabBtn0_click(param1:MouseEvent) : void
      {
         tabBtnClick(0);
      }
      
      private function _MailManagerPanel_ClassFactory7_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = MailManagerPanel_inlineComponent6;
         _loc1_.properties = {"outerDocument":this};
         return _loc1_;
      }
      
      public function ___MailManagerPanel_BasicDelayButton1_click(param1:MouseEvent) : void
      {
         addMail();
      }
      
      private function delMailHandler(param1:CloseEvent) : void
      {
         if(param1.detail == Alert.YES)
         {
            _core.remote.call("delMail",new Responder(onDelMail),delMailId);
            _core.view.getUI(ViewManager.PANEL_MAIL).visible = false;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn0() : BasicGlowButton
      {
         return this._1554141559tabBtn0;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn1() : BasicGlowButton
      {
         return this._1554141558tabBtn1;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn2() : BasicGlowButton
      {
         return this._1554141557tabBtn2;
      }
      
      private function _MailManagerPanel_DataGridColumn2_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _loc1_.width = 21;
         _loc1_.dataField = "delCheckBox";
         _loc1_.headerText = "";
         _loc1_.itemRenderer = _MailManagerPanel_ClassFactory2_c();
         return _loc1_;
      }
      
      public function __mailDataGrid_mouseMove(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
      }
      
      private function _MailManagerPanel_ClassFactory6_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = MailManagerPanel_inlineComponent5;
         _loc1_.properties = {"outerDocument":this};
         return _loc1_;
      }
      
      public function set mailTab(param1:ViewStack) : void
      {
         var _loc2_:Object = this._830952030mailTab;
         if(_loc2_ !== param1)
         {
            this._830952030mailTab = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mailTab",_loc2_,param1));
         }
      }
      
      private function initPageSelector() : void
      {
         var _loc1_:int = 0;
         if(pageAC.length >= PAGE_MAX_ITEM_NUM)
         {
            _loc1_ = PAGE_MAX_ITEM_NUM;
         }
         else
         {
            _loc1_ = pageAC.length;
         }
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            pageMyMailAC.addItem(pageAC.getItemAt(_loc2_));
            _loc2_++;
         }
         pageSelector.onPageChanged = pageChange;
         pageSelector.onPageCleared = pageClear;
         pageSelector.initPageSeletor(pageAC.length,PAGE_MAX_ITEM_NUM);
      }
      
      public function __mailDataGrid_itemClick(param1:ListEvent) : void
      {
         showMail(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get presentMoney() : Currency
      {
         return this._678360261presentMoney;
      }
      
      private function setMailState(param1:Object, param2:Object) : void
      {
         var _loc3_:Class = null;
         var _loc4_:int = 0;
         if(param2.readDate == -1)
         {
            if(param2.itemType == -1)
            {
               _loc3_ = ResManager.ICON_MAIL_OPENED;
            }
            else
            {
               _loc3_ = ResManager.ICON_MAIL_ITEM_OPENED;
            }
         }
         else if(param2.itemType == -1)
         {
            _loc3_ = ResManager.ICON_MAIL_NORMAL;
         }
         else
         {
            _loc3_ = ResManager.ICON_MAIL_ITEM_NORMAL;
         }
         if(param2.readDate == -1)
         {
            _loc4_ = GamePredef.MAILDATE[0] - (currentTime - param2.date) / 86400000;
         }
         else
         {
            _loc4_ = GamePredef.MAILDATE[1] - (currentTime - param2.readDate) / 86400000;
         }
         var _loc5_:String = Language.MAILMANAGERPANEL_S[14].toString().replace("{remainDate}",_loc4_);
         param1.icon = _loc3_;
         param1.remainDate = _loc5_;
      }
      
      public function __codCheck_click(param1:MouseEvent) : void
      {
         codRadioClick();
      }
      
      private function _MailManagerPanel_DataGridColumn1_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _loc1_.width = 21;
         _loc1_.itemRenderer = _MailManagerPanel_ClassFactory1_c();
         _loc1_.dataField = "icon";
         _loc1_.headerText = "";
         return _loc1_;
      }
      
      public function set codCheck(param1:CheckBox) : void
      {
         var _loc2_:Object = this._898785680codCheck;
         if(_loc2_ !== param1)
         {
            this._898785680codCheck = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"codCheck",_loc2_,param1));
         }
      }
      
      override public function set visible(param1:Boolean) : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = undefined;
         super.visible = param1;
         if(param1 == true && firstTimeFlag == 0)
         {
            initView();
         }
         if(param1 == false && Boolean(_core.player))
         {
            if(!initialized)
            {
               addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
               return;
            }
            if(item.type != -1 && item.giid != -1 && item.stackNum != -1)
            {
               rmItemView();
            }
            initNewMail();
            _core.remote.closeMail();
         }
         if(Boolean(this.mailList) && Boolean(this.mailList != "") && param1 == true)
         {
            _loc2_ = 0;
            for each(_loc3_ in mailList)
            {
               _loc2_++;
            }
            if(_loc2_ > 99)
            {
               _core.sysMidNote(Language.MAILMANAGERPANEL_S[23]);
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mailDataGrid() : DataGrid
      {
         return this._557789977mailDataGrid;
      }
      
      public function __item_doubleClick(param1:MouseEvent) : void
      {
         rmItemView();
      }
      
      private function _MailManagerPanel_DataGridColumn9_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _MailManagerPanel_DataGridColumn9 = _loc1_;
         _loc1_.dataField = "subject";
         _loc1_.itemRenderer = _MailManagerPanel_ClassFactory9_c();
         _loc1_.setStyle("textAlign","center");
         BindingManager.executeBindings(this,"_MailManagerPanel_DataGridColumn9",_MailManagerPanel_DataGridColumn9);
         return _loc1_;
      }
      
      public function __tabBtn2_click(param1:MouseEvent) : void
      {
         tabBtnClick(2);
      }
      
      private function _MailManagerPanel_ClassFactory5_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = MailManagerPanel_inlineComponent4;
         _loc1_.properties = {"outerDocument":this};
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get mailSystemDataGrid() : DataGrid
      {
         return this._2085075210mailSystemDataGrid;
      }
      
      private function updatePage() : void
      {
         pageSelector.initPageSeletor(pageMyMailAC.length,PAGE_MAX_ITEM_NUM);
         pageSelector.pageNo = itemPageNo;
      }
      
      public function onAddAllServerMail(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Object = null;
         for each(_loc3_ in param1)
         {
            _loc3_.data.id = _loc3_.index;
            if(Number(_core.player.level) >= _loc3_.data.lev)
            {
               _core.view.getUI(ViewManager.PANEL_MAIL_NOTICE).addMail(_loc3_.data);
               _loc2_ = true;
            }
         }
         if(_loc2_)
         {
            _core.addWarn({
               "warnType":GamePredef.WARN_TYPE_ADDMAIL,
               "info":"[系统]" + GamePredef.WARN_TIP_ADDMAIL3,
               "mailId":1,
               "isReceiver":true
            });
         }
      }
      
      private function pageClear() : void
      {
         pageMyMailAC.removeAll();
      }
      
      public function set doDel(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._95727488doDel;
         if(_loc2_ !== param1)
         {
            this._95727488doDel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"doDel",_loc2_,param1));
         }
      }
      
      public function set mailText(param1:TextArea) : void
      {
         var _loc2_:Object = this._10286204mailText;
         if(_loc2_ !== param1)
         {
            this._10286204mailText = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mailText",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get presentCheck() : CheckBox
      {
         return this._668907789presentCheck;
      }
      
      public function updateView() : void
      {
         var _loc1_:* = undefined;
         var _loc2_:Sort = null;
         var _loc3_:Sort = null;
         var _loc4_:uint = 0;
         var _loc5_:Object = null;
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         myMailAC = new ArrayCollection();
         pageMyMailAC = new ArrayCollection();
         mailSystemAC = new ArrayCollection();
         if(mailList != null)
         {
            for each(_loc1_ in mailList)
            {
               if(_loc1_ != undefined && _loc1_ != null)
               {
                  _loc4_ = 734012;
                  if(_loc1_.senderId == "0")
                  {
                     _loc4_ = 16711680;
                  }
                  _loc5_ = new Object();
                  _loc5_.senderName = _loc1_.sn;
                  _loc5_.sort = _loc1_.date;
                  _loc5_.subject = _loc1_.subject;
                  _loc5_.delCheckBox = 0;
                  _loc5_.id = _loc1_.id;
                  _loc5_.sColor = _loc4_;
                  _loc5_.mailData = _loc1_;
                  setMailState(_loc5_,_loc1_);
                  if(_loc1_.senderId > 0)
                  {
                     myMailAC.addItem(_loc5_);
                  }
                  else
                  {
                     mailSystemAC.addItem(_loc5_);
                  }
               }
            }
            _loc2_ = new Sort();
            _loc2_.fields = [new SortField("sort",true,true,true)];
            mailSystemAC.sort = _loc2_;
            mailSystemAC.refresh();
            mailSystemDataGrid.dataProvider = pageMyMailAC;
            _loc3_ = new Sort();
            _loc3_.fields = [new SortField("sort",true,true,true)];
            myMailAC.sort = _loc3_;
            myMailAC.refresh();
            mailDataGrid.dataProvider = pageMyMailAC;
         }
         item.type = -1;
         item.giid = -1;
         item.stackNum = -1;
         item.slotData = null;
         presentMoney.maxValue = _core.player.money;
         presentGold.maxValue = _core.player.gold;
         if(tabBtn0.selected == true)
         {
            pageAC = mailSystemAC;
         }
         else if(tabBtn1.selected == true)
         {
            pageAC = myMailAC;
         }
         initPageSelector();
      }
      
      public function set tabBtn0(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1554141559tabBtn0;
         if(_loc2_ !== param1)
         {
            this._1554141559tabBtn0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn0",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get item() : ItemSlotMail
      {
         return this._3242771item;
      }
      
      public function set tabBtn1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1554141558tabBtn1;
         if(_loc2_ !== param1)
         {
            this._1554141558tabBtn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn1",_loc2_,param1));
         }
      }
      
      public function set tabBtn2(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1554141557tabBtn2;
         if(_loc2_ !== param1)
         {
            this._1554141557tabBtn2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn2",_loc2_,param1));
         }
      }
      
      public function onAddMail(param1:Object) : void
      {
         if(param1.id > 0)
         {
            senderId = param1.senderId;
            if(param1.receiverId == _core.player.id)
            {
               if(mailList)
               {
                  mailList[param1.id] = param1;
               }
               else
               {
                  mailList = new Object();
                  mailList[param1.id] = param1;
               }
               updateView();
               if(!_core.isBlack(param1.sn))
               {
                  _core.view.getUI(ViewManager.PANEL_MAIL_NOTICE).addMail(param1);
                  _core.addWarn({
                     "warnType":GamePredef.WARN_TYPE_ADDMAIL,
                     "info":"[" + param1.sn + "]" + GamePredef.WARN_TIP_ADDMAIL,
                     "mailId":param1.id,
                     "isReceiver":true
                  });
               }
            }
            else if(param1.senderId == _core.player.id)
            {
               _core.addWarn({
                  "warnType":GamePredef.WARN_TYPE_ADDMAIL,
                  "info":GamePredef.WARN_TIP_ADDMAIL2 + "[" + param1.receiverName + "]",
                  "mailId":param1.id,
                  "isReceiver":false
               });
               initNewMail();
            }
         }
         else if(param1.id == -1)
         {
            if(param1.type == "noSuchReceiver")
            {
               Alert.show(Language.MAILMANAGERPANEL_S[4],"",Alert.OK);
            }
            else if(param1.type == "overMaxMail")
            {
               Alert.show(Language.MAILMANAGERPANEL_S[13],"",Alert.OK);
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
      
      private function pageChange(param1:int, param2:int) : void
      {
         itemPageNo = pageSelector.pageNo;
         drawPage(param1,param2);
      }
      
      private function _MailManagerPanel_DataGridColumn8_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _MailManagerPanel_DataGridColumn8 = _loc1_;
         _loc1_.width = 40;
         _loc1_.dataField = "senderName";
         _loc1_.itemRenderer = _MailManagerPanel_ClassFactory8_c();
         BindingManager.executeBindings(this,"_MailManagerPanel_DataGridColumn8",_MailManagerPanel_DataGridColumn8);
         return _loc1_;
      }
      
      public function set delAll(param1:CheckBox) : void
      {
         var _loc2_:Object = this._1335493226delAll;
         if(_loc2_ !== param1)
         {
            this._1335493226delAll = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"delAll",_loc2_,param1));
         }
      }
      
      private function _MailManagerPanel_ClassFactory4_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = MailManagerPanel_inlineComponent3;
         _loc1_.properties = {"outerDocument":this};
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get subject() : TextInput
      {
         return this._1867885268subject;
      }
      
      private function tabBtnClick(param1:int) : void
      {
         tabBtn0.selected = false;
         tabBtn1.selected = false;
         tabBtn2.selected = false;
         delAll.selected = false;
         if(0 == param1)
         {
            pageAC = mailSystemAC;
            pageSelector.visible = true;
            doDel.visible = true;
            delAll.visible = true;
            initPageSelector();
         }
         else if(1 == param1)
         {
            pageAC = myMailAC;
            pageSelector.visible = true;
            doDel.visible = true;
            delAll.visible = true;
            initPageSelector();
         }
         else if(2 == param1)
         {
            pageSelector.visible = false;
            doDel.visible = false;
            delAll.visible = false;
         }
         mailTab.selectedIndex = param1;
         this["tabBtn" + param1].selected = true;
      }
      
      public function reset() : void
      {
         firstTimeFlag = 0;
      }
      
      private function onDelMails(param1:Object) : void
      {
         var _loc2_:Object = null;
         if(param1)
         {
            for(_loc2_ in param1)
            {
               if(param1[_loc2_] > 0 && mailList != null)
               {
                  delete mailList[param1[_loc2_]];
               }
            }
            updateView();
         }
      }
      
      public function onShowMailP(param1:Object) : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = undefined;
         if(param1)
         {
            firstTimeFlag = 1;
            this.mailList = param1.mailList;
            currentTime = param1.currentTime;
            updateView();
            if(Boolean(this.mailList) && this.mailList != "")
            {
               _loc2_ = 0;
               for each(_loc3_ in mailList)
               {
                  _loc2_++;
               }
               if(_loc2_ > 99)
               {
                  _core.sysMidNote(Language.MAILMANAGERPANEL_S[23]);
               }
            }
         }
         else
         {
            visible = false;
            _core.sysMidNote(Language.MAILMANAGERPANEL_S[0]);
         }
      }
      
      private function doSelection() : void
      {
         var _loc1_:Object = null;
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         if(delAll.selected)
         {
            for(_loc1_ in pageAC)
            {
               _loc2_ = pageAC[_loc1_];
               if(!(_loc2_.mailData.money > 0 || _loc2_.mailData.gold > 0 || _loc2_.mailData.itemType > 0 && _loc2_.mailData.itemId > 0 && _loc2_.mailData.stackNum > 0))
               {
                  pageAC[_loc1_].delCheckBox = 1;
               }
            }
         }
         else
         {
            for each(_loc3_ in pageAC)
            {
               _loc3_.delCheckBox = 0;
            }
         }
         initPageSelector();
      }
      
      private function _MailManagerPanel_DataGridColumn7_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _loc1_.width = 21;
         _loc1_.dataField = "delCheckBox";
         _loc1_.headerText = "";
         _loc1_.itemRenderer = _MailManagerPanel_ClassFactory7_c();
         return _loc1_;
      }
      
      private function presentRadioClick() : void
      {
         if(presentCheck.selected == true)
         {
            presentMoney.currencyInput.clearStyle("borderSkin");
            presentMoney.currencyInput.clearStyle("backgroundAlpha");
            presentMoney.currencyInput.validateNow();
            presentGold.currencyInput.clearStyle("borderSkin");
            presentGold.currencyInput.clearStyle("backgroundAlpha");
            presentGold.currencyInput.validateNow();
            presentMoney.inputEnabled = true;
            presentGold.inputEnabled = true;
         }
         else
         {
            presentMoney.inputEnabled = false;
            presentGold.inputEnabled = false;
            presentMoney.value = 0;
            presentGold.value = 0;
         }
      }
      
      private function _MailManagerPanel_ClassFactory3_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = MailManagerPanel_inlineComponent2;
         _loc1_.properties = {"outerDocument":this};
         return _loc1_;
      }
      
      public function set presentGold(param1:Currency) : void
      {
         var _loc2_:Object = this._1225222213presentGold;
         if(_loc2_ !== param1)
         {
            this._1225222213presentGold = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"presentGold",_loc2_,param1));
         }
      }
      
      public function __delAll_click(param1:MouseEvent) : void
      {
         doSelection();
      }
      
      [Bindable(event="propertyChange")]
      public function get doDel() : BasicGlowButton
      {
         return this._95727488doDel;
      }
      
      public function onDelMail(param1:Number) : void
      {
         if(param1 > 0)
         {
            if(mailList != null)
            {
               delete mailList[param1];
               updateView();
            }
         }
      }
      
      public function set presentMoney(param1:Currency) : void
      {
         var _loc2_:Object = this._678360261presentMoney;
         if(_loc2_ !== param1)
         {
            this._678360261presentMoney = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"presentMoney",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mailText() : TextArea
      {
         return this._10286204mailText;
      }
      
      [Bindable(event="propertyChange")]
      public function get pageSelector() : PageSelector
      {
         return this._607339634pageSelector;
      }
      
      [Bindable(event="propertyChange")]
      public function get delAll() : CheckBox
      {
         return this._1335493226delAll;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:MailManagerPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _MailManagerPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_MailManagerPanelWatcherSetupUtil");
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
      
      private function _MailManagerPanel_DataGridColumn6_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _loc1_.width = 21;
         _loc1_.dataField = "icon";
         _loc1_.headerText = "";
         _loc1_.itemRenderer = _MailManagerPanel_ClassFactory6_c();
         return _loc1_;
      }
      
      private function _MailManagerPanel_ClassFactory10_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = MailManagerPanel_inlineComponent9;
         _loc1_.properties = {"outerDocument":this};
         return _loc1_;
      }
      
      private function _MailManagerPanel_ClassFactory2_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = MailManagerPanel_inlineComponent1;
         _loc1_.properties = {"outerDocument":this};
         return _loc1_;
      }
      
      private function rmItemView() : void
      {
         item.clean();
         _core.view.getUI(ViewManager.PANEL_BAG).updateView();
      }
      
      public function __presentCheck_click(param1:MouseEvent) : void
      {
         presentRadioClick();
      }
      
      private function delMailsHandler(param1:CloseEvent) : void
      {
         if(param1.detail == Alert.YES)
         {
            _core.remote.call("delMails",new Responder(onDelMails),idArr);
            _core.view.getUI(ViewManager.PANEL_MAIL).visible = false;
         }
      }
      
      public function __tabBtn1_click(param1:MouseEvent) : void
      {
         tabBtnClick(1);
      }
      
      [Bindable(event="propertyChange")]
      public function get presentGold() : Currency
      {
         return this._1225222213presentGold;
      }
      
      public function set mailDataGrid(param1:DataGrid) : void
      {
         var _loc2_:Object = this._557789977mailDataGrid;
         if(_loc2_ !== param1)
         {
            this._557789977mailDataGrid = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mailDataGrid",_loc2_,param1));
         }
      }
      
      override public function initView() : void
      {
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         _core.remote.call("showMailP",new Responder(onShowMailP));
      }
      
      public function set receiver(param1:TextInput) : void
      {
         var _loc2_:Object = this._808719889receiver;
         if(_loc2_ !== param1)
         {
            this._808719889receiver = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"receiver",_loc2_,param1));
         }
      }
      
      private function codRadioClick() : void
      {
         if(codCheck.selected == true)
         {
            codMoney.inputEnabled = true;
            codGold.inputEnabled = true;
            codMoney.currencyInput.clearStyle("borderSkin");
            codMoney.currencyInput.clearStyle("backgroundAlpha");
            codMoney.currencyInput.validateNow();
            codGold.currencyInput.clearStyle("borderSkin");
            codGold.currencyInput.clearStyle("backgroundAlpha");
            codGold.currencyInput.validateNow();
         }
         else
         {
            codMoney.inputEnabled = false;
            codGold.inputEnabled = false;
            codMoney.value = 0;
            codGold.value = 0;
         }
      }
      
      private function _MailManagerPanel_DataGridColumn5_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _MailManagerPanel_DataGridColumn5 = _loc1_;
         _loc1_.width = 40;
         _loc1_.dataField = "remainDate";
         _loc1_.itemRenderer = _MailManagerPanel_ClassFactory5_c();
         BindingManager.executeBindings(this,"_MailManagerPanel_DataGridColumn5",_MailManagerPanel_DataGridColumn5);
         return _loc1_;
      }
      
      public function set mailSystemDataGrid(param1:DataGrid) : void
      {
         var _loc2_:Object = this._2085075210mailSystemDataGrid;
         if(_loc2_ !== param1)
         {
            this._2085075210mailSystemDataGrid = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mailSystemDataGrid",_loc2_,param1));
         }
      }
      
      public function __mailSystemDataGrid_mouseMove(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
      }
      
      [Bindable(event="propertyChange")]
      public function get receiver() : TextInput
      {
         return this._808719889receiver;
      }
      
      public function set codGold(param1:Currency) : void
      {
         var _loc2_:Object = this._940964344codGold;
         if(_loc2_ !== param1)
         {
            this._940964344codGold = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"codGold",_loc2_,param1));
         }
      }
      
      private function _MailManagerPanel_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = RendererImage;
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get codGold() : Currency
      {
         return this._940964344codGold;
      }
      
      private function _MailManagerPanel_ClassFactory9_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = MailManagerPanel_inlineComponent8;
         _loc1_.properties = {"outerDocument":this};
         return _loc1_;
      }
      
      private function drawPage(param1:int, param2:int) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param2)
         {
            _loc3_ = _loc4_ + param1;
            pageMyMailAC.addItem(pageAC.getItemAt(_loc3_));
            _loc4_++;
         }
      }
      
      private function _MailManagerPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAILMANAGERPANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MailManagerPanel_BasicTitleCanvas1.text = param1;
         },"_MailManagerPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAILMANAGERPANEL_S[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MailManagerPanel_DescriptionLabel1.text = param1;
         },"_MailManagerPanel_DescriptionLabel1.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAIL_MANAGER_PANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MailManagerPanel_Canvas1.label = param1;
         },"_MailManagerPanel_Canvas1.label");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAILMANAGERPANEL_S[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MailManagerPanel_DataGridColumn3.headerText = param1;
         },"_MailManagerPanel_DataGridColumn3.headerText");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAILMANAGERPANEL_S[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MailManagerPanel_DataGridColumn4.headerText = param1;
         },"_MailManagerPanel_DataGridColumn4.headerText");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAILMANAGERPANEL_S[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MailManagerPanel_DataGridColumn5.headerText = param1;
         },"_MailManagerPanel_DataGridColumn5.headerText");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAIL_MANAGER_PANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MailManagerPanel_Canvas2.label = param1;
         },"_MailManagerPanel_Canvas2.label");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAILMANAGERPANEL_S[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MailManagerPanel_DataGridColumn8.headerText = param1;
         },"_MailManagerPanel_DataGridColumn8.headerText");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAILMANAGERPANEL_S[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MailManagerPanel_DataGridColumn9.headerText = param1;
         },"_MailManagerPanel_DataGridColumn9.headerText");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAILMANAGERPANEL_S[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MailManagerPanel_DataGridColumn10.headerText = param1;
         },"_MailManagerPanel_DataGridColumn10.headerText");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAIL_MANAGER_PANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MailManagerPanel_Canvas3.label = param1;
         },"_MailManagerPanel_Canvas3.label");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAILMANAGERPANEL_S[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            presentCheck.label = param1;
         },"presentCheck.label");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAILMANAGERPANEL_S[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            codCheck.label = param1;
         },"codCheck.label");
         result[12] = binding;
         binding = new Binding(this,function():uint
         {
            return Currency.TYPE_MONEY;
         },function(param1:uint):void
         {
            presentMoney.type = param1;
         },"presentMoney.type");
         result[13] = binding;
         binding = new Binding(this,function():uint
         {
            return Currency.TYPE_GOLD;
         },function(param1:uint):void
         {
            presentGold.type = param1;
         },"presentGold.type");
         result[14] = binding;
         binding = new Binding(this,function():uint
         {
            return Currency.TYPE_MONEY;
         },function(param1:uint):void
         {
            codMoney.type = param1;
         },"codMoney.type");
         result[15] = binding;
         binding = new Binding(this,function():uint
         {
            return Currency.TYPE_GOLD;
         },function(param1:uint):void
         {
            codGold.type = param1;
         },"codGold.type");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAILMANAGERPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MailManagerPanel_BasicDelayButton1.label = param1;
         },"_MailManagerPanel_BasicDelayButton1.label");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAILMANAGERPANEL_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MailManagerPanel_BasicTxtButton1.label = param1;
         },"_MailManagerPanel_BasicTxtButton1.label");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAILMANAGERPANEL_U[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MailManagerPanel_BasicTxtButton2.label = param1;
         },"_MailManagerPanel_BasicTxtButton2.label");
         result[19] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAILMANAGERPANEL_U[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MailManagerPanel_BasicTxtButton3.label = param1;
         },"_MailManagerPanel_BasicTxtButton3.label");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAILMANAGERPANEL_U[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            delAll.label = param1;
         },"delAll.label");
         result[21] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAILMANAGERPANEL_U[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            delAll.toolTip = param1;
         },"delAll.toolTip");
         result[22] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAILMANAGERPANEL_U[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            doDel.label = param1;
         },"doDel.label");
         result[23] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAILMANAGERPANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn0.label = param1;
         },"tabBtn0.label");
         result[24] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAILMANAGERPANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn1.label = param1;
         },"tabBtn1.label");
         result[25] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAILMANAGERPANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn2.label = param1;
         },"tabBtn2.label");
         result[26] = binding;
         return result;
      }
      
      private function addMail() : void
      {
         var obj:Object = null;
         var tradeItem:Function = null;
         obj = new Object();
         if(receiver.text != "")
         {
            if(receiver.text != _core.player.name)
            {
               if(presentMoney.value <= _core.player.money && presentGold.value <= _core.player.gold)
               {
                  subject.text = _core.replaceBadWord(subject.text);
                  mailText.text = _core.replaceBadWord(mailText.text);
                  obj.subject = subject.text;
                  obj.text = mailText.text;
                  if(codCheck.selected == true && (codMoney.value > 0 || codGold.value > 0))
                  {
                     obj.codFlag = 1;
                     obj.codMoney = codMoney.value;
                     obj.codGold = codGold.value;
                  }
                  else
                  {
                     obj.codFlag = -1;
                     obj.codMoney = 0;
                     obj.codGold = 0;
                  }
                  if(presentCheck.selected == true)
                  {
                     obj.money = presentMoney.value;
                     obj.gold = presentGold.value;
                  }
                  else
                  {
                     obj.money = 0;
                     obj.gold = 0;
                  }
                  if(item.giid > 0 && item.type > 0 || item.giid == -1 && item.type == -1)
                  {
                     if(item.type == GamePredef.TBL_ITEM_INSTANCE || item.type == GamePredef.TBL_EQUIPT_INSTANCE)
                     {
                        obj.type = GamePredef.TBL_CHARACTOR_SLOT;
                     }
                     else if(item.type == GamePredef.TBL_PET)
                     {
                        obj.type = GamePredef.TBL_PET;
                     }
                     else
                     {
                        obj.type = -1;
                     }
                     if(item.slotData)
                     {
                        obj.id = item.slotData.id;
                     }
                     else
                     {
                        obj.id = -1;
                     }
                  }
                  obj.readDate = -1;
                  if(_core.delPass)
                  {
                     _core.remote.addMail(receiver.text,obj,_core.delPass);
                  }
                  else
                  {
                     tradeItem = function(param1:String):void
                     {
                        _core.remote.addMail(receiver.text,obj,MD5.hash(param1));
                     };
                     _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.MAIL_MANAGER_PANEL_U[0],tradeItem);
                  }
               }
               else
               {
                  Alert.show(Language.MAILMANAGERPANEL_S[1],"",Alert.OK);
               }
            }
            else
            {
               Alert.show(Language.MAILMANAGERPANEL_S[2],"",Alert.OK);
            }
         }
         else
         {
            Alert.show(Language.MAILMANAGERPANEL_S[3],"",Alert.OK);
         }
      }
   }
}

