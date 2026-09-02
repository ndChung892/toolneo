package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.system.Core;
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
   import mx.controls.List;
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class FriendCanvas extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _3322014list:List;
      
      mx_internal var _watchers:Array = [];
      
      private var _607339634pageSelector:PageSelector;
      
      private var _1712717872_pageAc:ArrayCollection = new ArrayCollection();
      
      private var _3642rl:RoundedLabel;
      
      private var _519914063_friendsFarmEnable:Boolean = false;
      
      public var _FriendCanvas_DelayButton1:DelayButton;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _FriendsArr:ArrayCollection;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var MAX_PAGE_NUM:* = 10;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":150,
               "height":270,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.left = "5";
                     this.right = "5";
                     this.top = "10";
                     this.bottom = "30";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"childDescriptors":[new UIComponentDescriptor({
                        "type":List,
                        "id":"list",
                        "stylesFactory":function():void
                        {
                           this.backgroundAlpha = 0;
                           this.borderStyle = "none";
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "percentWidth":100,
                              "percentHeight":100,
                              "itemRenderer":_FriendCanvas_ClassFactory1_c()
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":RoundedLabel,
                        "id":"rl",
                        "stylesFactory":function():void
                        {
                           this.verticalCenter = "-5";
                           this.horizontalCenter = "0";
                           this.fontSize = 12;
                        }
                     })]};
                  }
               }),new UIComponentDescriptor({
                  "type":PageSelector,
                  "id":"pageSelector",
                  "stylesFactory":function():void
                  {
                     this.bottom = "10";
                     this.left = "10";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"width":120};
                  }
               }),new UIComponentDescriptor({
                  "type":DelayButton,
                  "id":"_FriendCanvas_DelayButton1",
                  "events":{"click":"___FriendCanvas_DelayButton1_click"},
                  "stylesFactory":function():void
                  {
                     this.right = "10";
                     this.bottom = "10";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "clickDelay":300000,
                        "width":19,
                        "height":21,
                        "styleName":"BtnChangeLine"
                     };
                  }
               })]
            };
         }
      });
      
      private var _core:Core = Core.getInstance();
      
      public function FriendCanvas()
      {
         super();
         mx_internal::_document = this;
         this.width = 150;
         this.height = 270;
         this.styleName = "CanvasBorder";
         this.addEventListener("creationComplete",___FriendCanvas_Canvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         FriendCanvas._watcherSetupUtil = param1;
      }
      
      private function _FriendCanvas_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = _pageAc;
         _loc1_ = _friendsFarmEnable;
         _loc1_ = Language.FAZENDAPANEL_S[4];
         _loc1_ = !_friendsFarmEnable;
         _loc1_ = _friendsFarmEnable;
         _loc1_ = Language.FAZENDAPANEL_S[15];
      }
      
      public function refreshFriendsData() : void
      {
         _core.remote.getFriendFarm();
      }
      
      private function clearPage() : void
      {
         _pageAc.removeAll();
      }
      
      [Bindable(event="propertyChange")]
      public function get pageSelector() : PageSelector
      {
         return this._607339634pageSelector;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:FriendCanvas = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _FriendCanvas_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_FriendCanvasWatcherSetupUtil");
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
      public function get list() : List
      {
         return this._3322014list;
      }
      
      public function init() : void
      {
      }
      
      private function set _friendsFarmEnable(param1:Boolean) : void
      {
         var _loc2_:Object = this._519914063_friendsFarmEnable;
         if(_loc2_ !== param1)
         {
            this._519914063_friendsFarmEnable = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_friendsFarmEnable",_loc2_,param1));
         }
      }
      
      public function onSteelMine(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         for(_loc4_ in _FriendsArr)
         {
            if(_FriendsArr[_loc4_].farm.cid == param2)
            {
               for(_loc5_ in _FriendsArr[_loc4_].mine)
               {
                  if(_loc5_ == param1)
                  {
                     _FriendsArr[_loc4_].mine[_loc5_].num -= param3;
                     break;
                  }
               }
            }
         }
      }
      
      public function ___FriendCanvas_DelayButton1_click(param1:MouseEvent) : void
      {
         refreshFriendsData();
      }
      
      [Bindable(event="propertyChange")]
      private function get _pageAc() : ArrayCollection
      {
         return this._1712717872_pageAc;
      }
      
      public function initFriendsData(param1:Object) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:Sort = null;
         if(param1)
         {
            _FriendsArr = new ArrayCollection();
            for(_loc2_ in param1)
            {
               if(param1[_loc2_])
               {
                  _FriendsArr.addItem(param1[_loc2_]);
               }
            }
            _loc3_ = new Sort();
            _loc3_.fields = [new SortField("st",true,true)];
            _FriendsArr.sort = _loc3_;
            _FriendsArr.refresh();
            initPageSelector();
            _friendsFarmEnable = true;
         }
         else
         {
            _friendsFarmEnable = false;
         }
      }
      
      public function updateSingleFriendData(param1:Object) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         for(_loc2_ in _FriendsArr)
         {
            if(_FriendsArr[_loc2_].farm.cid == param1.farm.cid)
            {
               _FriendsArr[_loc2_].farm = param1.farm;
               _FriendsArr[_loc2_].mine = param1.mine;
               if(param1.icon)
               {
                  _FriendsArr[_loc2_].icon = param1.icon;
               }
               if(param1.lv)
               {
                  _FriendsArr[_loc2_].lv = param1.lv;
               }
               break;
            }
         }
         for(_loc3_ in _pageAc)
         {
            if(_pageAc[_loc3_].farm.cid == param1.farm.cid)
            {
               _pageAc[_loc3_].farm = param1.farm;
               _pageAc[_loc3_].mine = param1.mine;
               if(param1.icon)
               {
                  _FriendsArr[_loc3_].icon = param1.icon;
               }
               if(param1.lv)
               {
                  _FriendsArr[_loc3_].lv = param1.lv;
               }
               break;
            }
         }
         list.dataProvider = _pageAc;
      }
      
      [Bindable(event="propertyChange")]
      public function get rl() : RoundedLabel
      {
         return this._3642rl;
      }
      
      public function set list(param1:List) : void
      {
         var _loc2_:Object = this._3322014list;
         if(_loc2_ !== param1)
         {
            this._3322014list = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"list",_loc2_,param1));
         }
      }
      
      private function initPageSelector() : void
      {
         var _loc1_:int = 0;
         pageSelector.lastBtnLabel = "";
         pageSelector.nextBtnLabel = "";
         pageSelector.btnLastPage.width = 13;
         pageSelector.btnNextPage.width = 13;
         pageSelector.setLastBtnStyle("fazendaPageLast");
         pageSelector.setNextBtnStyle("fazendaPageNext");
         if(_FriendsArr.length >= MAX_PAGE_NUM)
         {
            _loc1_ = MAX_PAGE_NUM;
         }
         else
         {
            _loc1_ = _FriendsArr.length;
         }
         _pageAc.removeAll();
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            _pageAc.addItem(_FriendsArr.getItemAt(_loc2_));
            _loc2_++;
         }
         pageSelector.onPageChanged = onPageChanged;
         pageSelector.onPageCleared = clearPage;
         pageSelector.initPageSeletor(_FriendsArr.length,MAX_PAGE_NUM);
      }
      
      public function ___FriendCanvas_Canvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      private function onPageChanged(param1:int, param2:int) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param2)
         {
            _loc3_ = _loc4_ + param1;
            _pageAc.addItem(_FriendsArr.getItemAt(_loc3_));
            _loc4_++;
         }
      }
      
      public function reset() : void
      {
         _friendsFarmEnable = false;
      }
      
      [Bindable(event="propertyChange")]
      private function get _friendsFarmEnable() : Boolean
      {
         return this._519914063_friendsFarmEnable;
      }
      
      private function _FriendCanvas_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = FriendsBar;
         return _loc1_;
      }
      
      private function set _pageAc(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._1712717872_pageAc;
         if(_loc2_ !== param1)
         {
            this._1712717872_pageAc = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_pageAc",_loc2_,param1));
         }
      }
      
      private function _FriendCanvas_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return _pageAc;
         },function(param1:Object):void
         {
            list.dataProvider = param1;
         },"list.dataProvider");
         result[0] = binding;
         binding = new Binding(this,function():Boolean
         {
            return _friendsFarmEnable;
         },function(param1:Boolean):void
         {
            list.visible = param1;
         },"list.visible");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAZENDAPANEL_S[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            rl.text = param1;
         },"rl.text");
         result[2] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !_friendsFarmEnable;
         },function(param1:Boolean):void
         {
            rl.visible = param1;
         },"rl.visible");
         result[3] = binding;
         binding = new Binding(this,function():Boolean
         {
            return _friendsFarmEnable;
         },function(param1:Boolean):void
         {
            pageSelector.visible = param1;
         },"pageSelector.visible");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAZENDAPANEL_S[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FriendCanvas_DelayButton1.toolTip = param1;
         },"_FriendCanvas_DelayButton1.toolTip");
         result[5] = binding;
         return result;
      }
      
      public function set rl(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._3642rl;
         if(_loc2_ !== param1)
         {
            this._3642rl = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rl",_loc2_,param1));
         }
      }
   }
}

