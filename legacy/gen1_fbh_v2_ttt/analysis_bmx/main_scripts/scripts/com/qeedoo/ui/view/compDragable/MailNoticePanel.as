package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
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
   import mx.controls.DataGrid;
   import mx.controls.dataGridClasses.DataGridColumn;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.formatters.DateFormatter;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class MailNoticePanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _MailNoticePanel_DataGridColumn1:DataGridColumn;
      
      public var _MailNoticePanel_DataGridColumn2:DataGridColumn;
      
      private var _3203dg:DataGrid;
      
      public var _MailNoticePanel_DataGridColumn4:DataGridColumn;
      
      public var _MailNoticePanel_DataGridColumn3:DataGridColumn;
      
      public var _MailNoticePanel_DataGridColumn5:DataGridColumn;
      
      private var _1287834292panelTitle:BasicTitleCanvas;
      
      mx_internal var _watchers:Array = [];
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _3106ac:ArrayCollection = new ArrayCollection();
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":520,
               "height":350,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"panelTitle"
               }),new UIComponentDescriptor({
                  "type":DataGrid,
                  "id":"dg",
                  "stylesFactory":function():void
                  {
                     this.top = "45";
                     this.left = "20";
                     this.right = "20";
                     this.bottom = "30";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "resizableColumns":false,
                        "draggableColumns":false,
                        "columns":[_MailNoticePanel_DataGridColumn1_i(),_MailNoticePanel_DataGridColumn2_i(),_MailNoticePanel_DataGridColumn3_i(),_MailNoticePanel_DataGridColumn4_i(),_MailNoticePanel_DataGridColumn5_i()]
                     };
                  }
               })]
            };
         }
      });
      
      public function MailNoticePanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 520;
         this.height = 350;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         MailNoticePanel._watcherSetupUtil = param1;
      }
      
      private function _MailNoticePanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.MAIL_NOTICE_PANEL_U[0];
         _loc1_ = ac;
         _loc1_ = Language.MAIL_NOTICE_PANEL_U[1];
         _loc1_ = Language.MAIL_NOTICE_PANEL_U[2];
         _loc1_ = Language.MAIL_NOTICE_PANEL_U[3];
         _loc1_ = Language.MAIL_NOTICE_PANEL_U[4];
         _loc1_ = Language.MAIL_NOTICE_PANEL_U[5];
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:MailNoticePanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _MailNoticePanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_MailNoticePanelWatcherSetupUtil");
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
      
      [Bindable(event="propertyChange")]
      public function get dg() : DataGrid
      {
         return this._3203dg;
      }
      
      private function _MailNoticePanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAIL_NOTICE_PANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            panelTitle.text = param1;
         },"panelTitle.text");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return ac;
         },function(param1:Object):void
         {
            dg.dataProvider = param1;
         },"dg.dataProvider");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAIL_NOTICE_PANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MailNoticePanel_DataGridColumn1.headerText = param1;
         },"_MailNoticePanel_DataGridColumn1.headerText");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAIL_NOTICE_PANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MailNoticePanel_DataGridColumn2.headerText = param1;
         },"_MailNoticePanel_DataGridColumn2.headerText");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAIL_NOTICE_PANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MailNoticePanel_DataGridColumn3.headerText = param1;
         },"_MailNoticePanel_DataGridColumn3.headerText");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAIL_NOTICE_PANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MailNoticePanel_DataGridColumn4.headerText = param1;
         },"_MailNoticePanel_DataGridColumn4.headerText");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAIL_NOTICE_PANEL_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MailNoticePanel_DataGridColumn5.headerText = param1;
         },"_MailNoticePanel_DataGridColumn5.headerText");
         result[6] = binding;
         return result;
      }
      
      public function reset() : void
      {
         ac.removeAll();
      }
      
      private function set ac(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._3106ac;
         if(_loc2_ !== param1)
         {
            this._3106ac = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ac",_loc2_,param1));
         }
      }
      
      public function set dg(param1:DataGrid) : void
      {
         var _loc2_:Object = this._3203dg;
         if(_loc2_ !== param1)
         {
            this._3203dg = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dg",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get panelTitle() : BasicTitleCanvas
      {
         return this._1287834292panelTitle;
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
      private function get ac() : ArrayCollection
      {
         return this._3106ac;
      }
      
      private function _MailNoticePanel_DataGridColumn1_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _MailNoticePanel_DataGridColumn1 = _loc1_;
         _loc1_.width = 70;
         _loc1_.dataField = "sn";
         BindingManager.executeBindings(this,"_MailNoticePanel_DataGridColumn1",_MailNoticePanel_DataGridColumn1);
         return _loc1_;
      }
      
      private function _MailNoticePanel_DataGridColumn2_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _MailNoticePanel_DataGridColumn2 = _loc1_;
         _loc1_.width = 220;
         _loc1_.dataField = "subject";
         BindingManager.executeBindings(this,"_MailNoticePanel_DataGridColumn2",_MailNoticePanel_DataGridColumn2);
         return _loc1_;
      }
      
      private function _MailNoticePanel_DataGridColumn3_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _MailNoticePanel_DataGridColumn3 = _loc1_;
         _loc1_.width = 60;
         _loc1_.dataField = "haveItem";
         BindingManager.executeBindings(this,"_MailNoticePanel_DataGridColumn3",_MailNoticePanel_DataGridColumn3);
         return _loc1_;
      }
      
      private function _MailNoticePanel_DataGridColumn4_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _MailNoticePanel_DataGridColumn4 = _loc1_;
         _loc1_.width = 50;
         _loc1_.dataField = "charge";
         BindingManager.executeBindings(this,"_MailNoticePanel_DataGridColumn4",_MailNoticePanel_DataGridColumn4);
         return _loc1_;
      }
      
      private function _MailNoticePanel_DataGridColumn5_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _MailNoticePanel_DataGridColumn5 = _loc1_;
         _loc1_.width = 80;
         _loc1_.dataField = "date";
         BindingManager.executeBindings(this,"_MailNoticePanel_DataGridColumn5",_MailNoticePanel_DataGridColumn5);
         return _loc1_;
      }
      
      public function closeHandler() : void
      {
         var _loc4_:int = 0;
         var _loc1_:Array = [];
         var _loc2_:uint = 0;
         while(_loc2_ < ac.length)
         {
            if(ac.getItemAt(_loc2_).id > 1400000000000)
            {
               _loc1_.push(ac.getItemAt(_loc2_));
            }
            _loc2_++;
         }
         var _loc3_:uint = 0;
         while(_loc3_ < _loc1_.length)
         {
            _loc4_ = ac.getItemIndex(_loc1_[_loc3_]);
            ac.removeItemAt(_loc4_);
            _loc3_++;
         }
      }
      
      public function addMail(param1:Object) : void
      {
         var _loc2_:Object = new Object();
         _loc2_.id = param1.id;
         _loc2_.sn = param1.sn;
         _loc2_.subject = param1.subject;
         if(param1.money > 0 || param1.gold > 0 || param1.itemId > 0)
         {
            _loc2_.haveItem = Language.MAIL_NOTICE_PANEL_S[0];
         }
         else
         {
            _loc2_.haveItem = Language.MAIL_NOTICE_PANEL_S[1];
         }
         if(param1.codMoney > 0 || param1.codGold > 0)
         {
            _loc2_.charge = Language.MAIL_NOTICE_PANEL_S[2];
         }
         else
         {
            _loc2_.charge = Language.MAIL_NOTICE_PANEL_S[3];
         }
         var _loc3_:Date = new Date();
         _loc3_.setTime(param1.date);
         var _loc4_:DateFormatter = new DateFormatter();
         _loc4_.formatString = "MM-DD JJ:NN";
         _loc2_.date = _loc4_.format(_loc3_);
         var _loc5_:int = -1;
         var _loc6_:uint = 0;
         while(_loc6_ < ac.length)
         {
            if(ac.getItemAt(_loc6_).id == _loc2_.id)
            {
               _loc5_ = int(_loc6_);
               break;
            }
            _loc6_++;
         }
         ac.addItemAt(_loc2_,0);
         if(_loc5_ != -1)
         {
            ac.removeItemAt(_loc5_ + 1);
         }
      }
   }
}

