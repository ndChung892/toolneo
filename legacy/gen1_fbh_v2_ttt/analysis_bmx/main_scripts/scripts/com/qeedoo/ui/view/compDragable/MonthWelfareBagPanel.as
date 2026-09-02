package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.event.GameEvent;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DescriptionLabel;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.ItemSlot;
   import com.qeedoo.ui.view.comp.PageSelector;
   import com.qeedoo.ui.view.comp.Slot;
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
   import mx.containers.HBox;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class MonthWelfareBagPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1177985702iSlot32:ItemSlot;
      
      private var _1177985733iSlot42:ItemSlot;
      
      private var _1208926451iSlot4:ItemSlot;
      
      private var _1177985670iSlot21:ItemSlot;
      
      private var _1177985709iSlot39:ItemSlot;
      
      private var _1177985646iSlot18:ItemSlot;
      
      private var _1177985677iSlot28:ItemSlot;
      
      private var _1177985700iSlot30:ItemSlot;
      
      private var _1177985731iSlot40:ItemSlot;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      public var _MonthWelfareBagPanel_DescriptionLabel1:DescriptionLabel;
      
      private var _1177985707iSlot37:ItemSlot;
      
      private var _1177985738iSlot47:ItemSlot;
      
      private var _1177985644iSlot16:ItemSlot;
      
      private var _1177985675iSlot26:ItemSlot;
      
      private var _1177985740iSlot49:ItemSlot;
      
      private var _1249367445getAll:BasicGlowButton;
      
      private var itemAC:ArrayCollection = new ArrayCollection();
      
      private var _core:Core = Core.getInstance();
      
      private var _1208926453iSlot2:ItemSlot;
      
      private var _1177985705iSlot35:ItemSlot;
      
      private var _1177985736iSlot45:ItemSlot;
      
      private var _1177985642iSlot14:ItemSlot;
      
      private var _1177985673iSlot24:ItemSlot;
      
      private var _1208926447iSlot8:ItemSlot;
      
      private var _1208926450iSlot5:ItemSlot;
      
      private var _1177985734iSlot43:ItemSlot;
      
      private var _1177985638iSlot10:ItemSlot;
      
      private var _1177985640iSlot12:ItemSlot;
      
      private var _1177985671iSlot22:ItemSlot;
      
      private var _1177985669iSlot20:ItemSlot;
      
      private var _1177985703iSlot33:ItemSlot;
      
      private var _1208926455iSlot0:ItemSlot;
      
      private var _1177985647iSlot19:ItemSlot;
      
      private var _1177985678iSlot29:ItemSlot;
      
      private var _1177985701iSlot31:ItemSlot;
      
      private var _1177985732iSlot41:ItemSlot;
      
      private var _1208926449iSlot6:ItemSlot;
      
      public var _MonthWelfareBagPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var countPerPage:uint = 50;
      
      private var _1177985708iSlot38:ItemSlot;
      
      private var _1177985739iSlot48:ItemSlot;
      
      private var _1177985645iSlot17:ItemSlot;
      
      private var _1177985676iSlot27:ItemSlot;
      
      private var _1208926452iSlot3:ItemSlot;
      
      public var _MonthWelfareBagPanel_BasicGlowButton1:BasicGlowButton;
      
      private var _1208926446iSlot9:ItemSlot;
      
      private var _changed:Boolean = false;
      
      private var _1177985737iSlot46:ItemSlot;
      
      private var _1177985706iSlot36:ItemSlot;
      
      private var _1177985643iSlot15:ItemSlot;
      
      private var _1177985674iSlot25:ItemSlot;
      
      mx_internal var _watchers:Array = [];
      
      private var _1273109611pageSelect:PageSelector;
      
      private var itemPageNo:uint = 0;
      
      private var _1177985639iSlot11:ItemSlot;
      
      private var _1177985735iSlot44:ItemSlot;
      
      private var _1208926454iSlot1:ItemSlot;
      
      private var _1177985704iSlot34:ItemSlot;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _1177985641iSlot13:ItemSlot;
      
      private var _1177985672iSlot23:ItemSlot;
      
      private var _344219194bagSort:BasicGlowButton;
      
      mx_internal var _bindings:Array = [];
      
      private var _1208926448iSlot7:ItemSlot;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":430,
               "height":320,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_MonthWelfareBagPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"iSlot0",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":10,
                        "y":64,
                        "movable":false,
                        "index":2000
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"iSlot1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":52,
                        "y":64,
                        "movable":false,
                        "index":2001
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"iSlot2",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":94,
                        "y":64,
                        "movable":false,
                        "index":2002
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"iSlot3",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":136,
                        "y":64,
                        "movable":false,
                        "index":2003
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"iSlot4",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":178,
                        "y":64,
                        "movable":false,
                        "index":2004
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"iSlot5",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":220,
                        "y":64,
                        "movable":false,
                        "index":2005
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"iSlot6",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":262,
                        "y":64,
                        "movable":false,
                        "index":2006
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"iSlot7",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":304,
                        "y":64,
                        "movable":false,
                        "index":2007
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"iSlot8",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":346,
                        "y":64,
                        "movable":false,
                        "index":2008
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"iSlot9",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":388,
                        "y":64,
                        "movable":false,
                        "index":2009
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"iSlot10",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":10,
                        "y":106,
                        "movable":false,
                        "index":2010
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"iSlot11",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":52,
                        "y":106,
                        "movable":false,
                        "index":2011
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"iSlot12",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":94,
                        "y":106,
                        "movable":false,
                        "index":2012
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"iSlot13",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":136,
                        "y":106,
                        "movable":false,
                        "index":2013
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"iSlot14",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":178,
                        "y":106,
                        "movable":false,
                        "index":2014
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"iSlot15",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":220,
                        "y":106,
                        "movable":false,
                        "index":2015
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"iSlot16",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":262,
                        "y":106,
                        "movable":false,
                        "index":2016
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"iSlot17",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":304,
                        "y":106,
                        "movable":false,
                        "index":2017
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"iSlot18",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":346,
                        "y":106,
                        "movable":false,
                        "index":2018
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"iSlot19",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":388,
                        "y":106,
                        "movable":false,
                        "index":2019
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"iSlot20",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":10,
                        "y":148,
                        "movable":false,
                        "index":2020
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"iSlot21",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":52,
                        "y":148,
                        "movable":false,
                        "index":2021
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"iSlot22",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":94,
                        "y":148,
                        "movable":false,
                        "index":2022
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"iSlot23",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":136,
                        "y":148,
                        "movable":false,
                        "index":2023
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"iSlot24",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":178,
                        "y":148,
                        "movable":false,
                        "index":2024
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"iSlot25",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":220,
                        "y":148,
                        "movable":false,
                        "index":2025
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"iSlot26",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":262,
                        "y":148,
                        "movable":false,
                        "index":2026
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"iSlot27",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":304,
                        "y":148,
                        "movable":false,
                        "index":2027
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"iSlot28",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":346,
                        "y":148,
                        "movable":false,
                        "index":2028
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"iSlot29",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":388,
                        "y":148,
                        "movable":false,
                        "index":2029
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"iSlot30",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":10,
                        "y":190,
                        "movable":false,
                        "index":2030
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"iSlot31",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":52,
                        "y":190,
                        "movable":false,
                        "index":2031
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"iSlot32",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":94,
                        "y":190,
                        "movable":false,
                        "index":2032
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"iSlot33",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":136,
                        "y":190,
                        "movable":false,
                        "index":2033
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"iSlot34",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":178,
                        "y":190,
                        "movable":false,
                        "index":2034
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"iSlot35",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":220,
                        "y":190,
                        "movable":false,
                        "index":2035
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"iSlot36",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":262,
                        "y":190,
                        "movable":false,
                        "index":2036
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"iSlot37",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":304,
                        "y":190,
                        "movable":false,
                        "index":2037
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"iSlot38",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":346,
                        "y":190,
                        "movable":false,
                        "index":2038
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"iSlot39",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":388,
                        "y":190,
                        "movable":false,
                        "index":2039
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"iSlot40",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":10,
                        "y":232,
                        "movable":false,
                        "index":2040
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"iSlot41",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":52,
                        "y":232,
                        "movable":false,
                        "index":2041
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"iSlot42",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":94,
                        "y":232,
                        "movable":false,
                        "index":2042
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"iSlot43",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":136,
                        "y":232,
                        "movable":false,
                        "index":2043
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"iSlot44",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":178,
                        "y":232,
                        "movable":false,
                        "index":2044
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"iSlot45",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":220,
                        "y":232,
                        "movable":false,
                        "index":2045
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"iSlot46",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":262,
                        "y":232,
                        "movable":false,
                        "index":2046
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"iSlot47",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":304,
                        "y":232,
                        "movable":false,
                        "index":2047
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"iSlot48",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":346,
                        "y":232,
                        "movable":false,
                        "index":2048
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"iSlot49",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":388,
                        "y":232,
                        "movable":false,
                        "index":2049
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":PageSelector,
                  "id":"pageSelect",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":280,
                        "x":140
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":DescriptionLabel,
                  "id":"_MonthWelfareBagPanel_DescriptionLabel1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":280,
                        "y":38
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":HBox,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":10,
                        "y":36,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"_MonthWelfareBagPanel_BasicGlowButton1",
                           "events":{"click":"___MonthWelfareBagPanel_BasicGlowButton1_click"},
                           "propertiesFactory":function():Object
                           {
                              return {"styleName":"BtnStdRed"};
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"getAll",
                           "events":{"click":"__getAll_click"},
                           "propertiesFactory":function():Object
                           {
                              return {"styleName":"BtnStdRed"};
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"bagSort",
                           "events":{"click":"__bagSort_click"},
                           "propertiesFactory":function():Object
                           {
                              return {"styleName":"BtnStdRed"};
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      private var max_slot:uint = 100;
      
      public function MonthWelfareBagPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 430;
         this.height = 320;
         this.styleName = "StandardContent";
         this.x = 105;
         this.y = 231;
         this.addEventListener("creationComplete",___MonthWelfareBagPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         MonthWelfareBagPanel._watcherSetupUtil = param1;
      }
      
      public function set iSlot0(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1208926455iSlot0;
         if(_loc2_ !== param1)
         {
            this._1208926455iSlot0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iSlot0",_loc2_,param1));
         }
      }
      
      private function addSlotListener() : void
      {
         var _loc1_:int = 50;
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this["iSlot" + _loc2_].addEventListener(Slot.EVENT_SLOT_DCLICK,dClickHandler);
            _loc2_++;
         }
      }
      
      public function set iSlot1(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1208926454iSlot1;
         if(_loc2_ !== param1)
         {
            this._1208926454iSlot1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iSlot1",_loc2_,param1));
         }
      }
      
      public function set iSlot2(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1208926453iSlot2;
         if(_loc2_ !== param1)
         {
            this._1208926453iSlot2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iSlot2",_loc2_,param1));
         }
      }
      
      public function set iSlot3(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1208926452iSlot3;
         if(_loc2_ !== param1)
         {
            this._1208926452iSlot3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iSlot3",_loc2_,param1));
         }
      }
      
      public function set iSlot6(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1208926449iSlot6;
         if(_loc2_ !== param1)
         {
            this._1208926449iSlot6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iSlot6",_loc2_,param1));
         }
      }
      
      public function set iSlot7(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1208926448iSlot7;
         if(_loc2_ !== param1)
         {
            this._1208926448iSlot7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iSlot7",_loc2_,param1));
         }
      }
      
      private function monthwelfareBagSort() : void
      {
         _core.remote.call("monthWelfareBagSort",null);
      }
      
      public function set iSlot8(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1208926447iSlot8;
         if(_loc2_ !== param1)
         {
            this._1208926447iSlot8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iSlot8",_loc2_,param1));
         }
      }
      
      public function set iSlot4(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1208926451iSlot4;
         if(_loc2_ !== param1)
         {
            this._1208926451iSlot4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iSlot4",_loc2_,param1));
         }
      }
      
      public function set iSlot5(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1208926450iSlot5;
         if(_loc2_ !== param1)
         {
            this._1208926450iSlot5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iSlot5",_loc2_,param1));
         }
      }
      
      private function _MonthWelfareBagPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MONTH_WELFARE_PANEL[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MonthWelfareBagPanel_BasicTitleCanvas1.text = param1;
         },"_MonthWelfareBagPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONTHWELFARE;
         },function(param1:int):void
         {
            iSlot0.slotType = param1;
         },"iSlot0.slotType");
         result[1] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONTHWELFARE;
         },function(param1:int):void
         {
            iSlot1.slotType = param1;
         },"iSlot1.slotType");
         result[2] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONTHWELFARE;
         },function(param1:int):void
         {
            iSlot2.slotType = param1;
         },"iSlot2.slotType");
         result[3] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONTHWELFARE;
         },function(param1:int):void
         {
            iSlot3.slotType = param1;
         },"iSlot3.slotType");
         result[4] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONTHWELFARE;
         },function(param1:int):void
         {
            iSlot4.slotType = param1;
         },"iSlot4.slotType");
         result[5] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONTHWELFARE;
         },function(param1:int):void
         {
            iSlot5.slotType = param1;
         },"iSlot5.slotType");
         result[6] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONTHWELFARE;
         },function(param1:int):void
         {
            iSlot6.slotType = param1;
         },"iSlot6.slotType");
         result[7] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONTHWELFARE;
         },function(param1:int):void
         {
            iSlot7.slotType = param1;
         },"iSlot7.slotType");
         result[8] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONTHWELFARE;
         },function(param1:int):void
         {
            iSlot8.slotType = param1;
         },"iSlot8.slotType");
         result[9] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONTHWELFARE;
         },function(param1:int):void
         {
            iSlot9.slotType = param1;
         },"iSlot9.slotType");
         result[10] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONTHWELFARE;
         },function(param1:int):void
         {
            iSlot10.slotType = param1;
         },"iSlot10.slotType");
         result[11] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONTHWELFARE;
         },function(param1:int):void
         {
            iSlot11.slotType = param1;
         },"iSlot11.slotType");
         result[12] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONTHWELFARE;
         },function(param1:int):void
         {
            iSlot12.slotType = param1;
         },"iSlot12.slotType");
         result[13] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONTHWELFARE;
         },function(param1:int):void
         {
            iSlot13.slotType = param1;
         },"iSlot13.slotType");
         result[14] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONTHWELFARE;
         },function(param1:int):void
         {
            iSlot14.slotType = param1;
         },"iSlot14.slotType");
         result[15] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONTHWELFARE;
         },function(param1:int):void
         {
            iSlot15.slotType = param1;
         },"iSlot15.slotType");
         result[16] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONTHWELFARE;
         },function(param1:int):void
         {
            iSlot16.slotType = param1;
         },"iSlot16.slotType");
         result[17] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONTHWELFARE;
         },function(param1:int):void
         {
            iSlot17.slotType = param1;
         },"iSlot17.slotType");
         result[18] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONTHWELFARE;
         },function(param1:int):void
         {
            iSlot18.slotType = param1;
         },"iSlot18.slotType");
         result[19] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONTHWELFARE;
         },function(param1:int):void
         {
            iSlot19.slotType = param1;
         },"iSlot19.slotType");
         result[20] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONTHWELFARE;
         },function(param1:int):void
         {
            iSlot20.slotType = param1;
         },"iSlot20.slotType");
         result[21] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONTHWELFARE;
         },function(param1:int):void
         {
            iSlot21.slotType = param1;
         },"iSlot21.slotType");
         result[22] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONTHWELFARE;
         },function(param1:int):void
         {
            iSlot22.slotType = param1;
         },"iSlot22.slotType");
         result[23] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONTHWELFARE;
         },function(param1:int):void
         {
            iSlot23.slotType = param1;
         },"iSlot23.slotType");
         result[24] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONTHWELFARE;
         },function(param1:int):void
         {
            iSlot24.slotType = param1;
         },"iSlot24.slotType");
         result[25] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONTHWELFARE;
         },function(param1:int):void
         {
            iSlot25.slotType = param1;
         },"iSlot25.slotType");
         result[26] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONTHWELFARE;
         },function(param1:int):void
         {
            iSlot26.slotType = param1;
         },"iSlot26.slotType");
         result[27] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONTHWELFARE;
         },function(param1:int):void
         {
            iSlot27.slotType = param1;
         },"iSlot27.slotType");
         result[28] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONTHWELFARE;
         },function(param1:int):void
         {
            iSlot28.slotType = param1;
         },"iSlot28.slotType");
         result[29] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONTHWELFARE;
         },function(param1:int):void
         {
            iSlot29.slotType = param1;
         },"iSlot29.slotType");
         result[30] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONTHWELFARE;
         },function(param1:int):void
         {
            iSlot30.slotType = param1;
         },"iSlot30.slotType");
         result[31] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONTHWELFARE;
         },function(param1:int):void
         {
            iSlot31.slotType = param1;
         },"iSlot31.slotType");
         result[32] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONTHWELFARE;
         },function(param1:int):void
         {
            iSlot32.slotType = param1;
         },"iSlot32.slotType");
         result[33] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONTHWELFARE;
         },function(param1:int):void
         {
            iSlot33.slotType = param1;
         },"iSlot33.slotType");
         result[34] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONTHWELFARE;
         },function(param1:int):void
         {
            iSlot34.slotType = param1;
         },"iSlot34.slotType");
         result[35] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONTHWELFARE;
         },function(param1:int):void
         {
            iSlot35.slotType = param1;
         },"iSlot35.slotType");
         result[36] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONTHWELFARE;
         },function(param1:int):void
         {
            iSlot36.slotType = param1;
         },"iSlot36.slotType");
         result[37] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONTHWELFARE;
         },function(param1:int):void
         {
            iSlot37.slotType = param1;
         },"iSlot37.slotType");
         result[38] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONTHWELFARE;
         },function(param1:int):void
         {
            iSlot38.slotType = param1;
         },"iSlot38.slotType");
         result[39] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONTHWELFARE;
         },function(param1:int):void
         {
            iSlot39.slotType = param1;
         },"iSlot39.slotType");
         result[40] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONTHWELFARE;
         },function(param1:int):void
         {
            iSlot40.slotType = param1;
         },"iSlot40.slotType");
         result[41] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONTHWELFARE;
         },function(param1:int):void
         {
            iSlot41.slotType = param1;
         },"iSlot41.slotType");
         result[42] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONTHWELFARE;
         },function(param1:int):void
         {
            iSlot42.slotType = param1;
         },"iSlot42.slotType");
         result[43] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONTHWELFARE;
         },function(param1:int):void
         {
            iSlot43.slotType = param1;
         },"iSlot43.slotType");
         result[44] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONTHWELFARE;
         },function(param1:int):void
         {
            iSlot44.slotType = param1;
         },"iSlot44.slotType");
         result[45] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONTHWELFARE;
         },function(param1:int):void
         {
            iSlot45.slotType = param1;
         },"iSlot45.slotType");
         result[46] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONTHWELFARE;
         },function(param1:int):void
         {
            iSlot46.slotType = param1;
         },"iSlot46.slotType");
         result[47] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONTHWELFARE;
         },function(param1:int):void
         {
            iSlot47.slotType = param1;
         },"iSlot47.slotType");
         result[48] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONTHWELFARE;
         },function(param1:int):void
         {
            iSlot48.slotType = param1;
         },"iSlot48.slotType");
         result[49] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_MONTHWELFARE;
         },function(param1:int):void
         {
            iSlot49.slotType = param1;
         },"iSlot49.slotType");
         result[50] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MONTH_WELFARE_PANEL[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MonthWelfareBagPanel_DescriptionLabel1.text = param1;
         },"_MonthWelfareBagPanel_DescriptionLabel1.text");
         result[51] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MONTH_WELFARE_PANEL[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MonthWelfareBagPanel_BasicGlowButton1.label = param1;
         },"_MonthWelfareBagPanel_BasicGlowButton1.label");
         result[52] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MONTH_WELFARE_PANEL[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            getAll.label = param1;
         },"getAll.label");
         result[53] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MONTH_WELFARE_PANEL[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bagSort.label = param1;
         },"bagSort.label");
         result[54] = binding;
         return result;
      }
      
      public function set iSlot9(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1208926446iSlot9;
         if(_loc2_ !== param1)
         {
            this._1208926446iSlot9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iSlot9",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get iSlot11() : ItemSlot
      {
         return this._1177985639iSlot11;
      }
      
      [Bindable(event="propertyChange")]
      public function get iSlot12() : ItemSlot
      {
         return this._1177985640iSlot12;
      }
      
      [Bindable(event="propertyChange")]
      public function get iSlot13() : ItemSlot
      {
         return this._1177985641iSlot13;
      }
      
      [Bindable(event="propertyChange")]
      public function get iSlot14() : ItemSlot
      {
         return this._1177985642iSlot14;
      }
      
      [Bindable(event="propertyChange")]
      public function get getAll() : BasicGlowButton
      {
         return this._1249367445getAll;
      }
      
      [Bindable(event="propertyChange")]
      public function get iSlot16() : ItemSlot
      {
         return this._1177985644iSlot16;
      }
      
      [Bindable(event="propertyChange")]
      public function get iSlot19() : ItemSlot
      {
         return this._1177985647iSlot19;
      }
      
      [Bindable(event="propertyChange")]
      public function get iSlot15() : ItemSlot
      {
         return this._1177985643iSlot15;
      }
      
      [Bindable(event="propertyChange")]
      public function get iSlot17() : ItemSlot
      {
         return this._1177985645iSlot17;
      }
      
      [Bindable(event="propertyChange")]
      public function get iSlot18() : ItemSlot
      {
         return this._1177985646iSlot18;
      }
      
      [Bindable(event="propertyChange")]
      public function get iSlot10() : ItemSlot
      {
         return this._1177985638iSlot10;
      }
      
      [Bindable(event="propertyChange")]
      public function get pageSelect() : PageSelector
      {
         return this._1273109611pageSelect;
      }
      
      [Bindable(event="propertyChange")]
      public function get iSlot21() : ItemSlot
      {
         return this._1177985670iSlot21;
      }
      
      [Bindable(event="propertyChange")]
      public function get iSlot22() : ItemSlot
      {
         return this._1177985671iSlot22;
      }
      
      [Bindable(event="propertyChange")]
      public function get iSlot24() : ItemSlot
      {
         return this._1177985673iSlot24;
      }
      
      [Bindable(event="propertyChange")]
      public function get iSlot26() : ItemSlot
      {
         return this._1177985675iSlot26;
      }
      
      [Bindable(event="propertyChange")]
      public function get iSlot20() : ItemSlot
      {
         return this._1177985669iSlot20;
      }
      
      [Bindable(event="propertyChange")]
      public function get iSlot28() : ItemSlot
      {
         return this._1177985677iSlot28;
      }
      
      [Bindable(event="propertyChange")]
      public function get iSlot29() : ItemSlot
      {
         return this._1177985678iSlot29;
      }
      
      [Bindable(event="propertyChange")]
      public function get iSlot27() : ItemSlot
      {
         return this._1177985676iSlot27;
      }
      
      public function __getAll_click(param1:MouseEvent) : void
      {
         getAllMonthWelfareItem();
      }
      
      [Bindable(event="propertyChange")]
      public function get iSlot25() : ItemSlot
      {
         return this._1177985674iSlot25;
      }
      
      [Bindable(event="propertyChange")]
      public function get iSlot23() : ItemSlot
      {
         return this._1177985672iSlot23;
      }
      
      public function set itemList(param1:ArrayCollection) : void
      {
         itemAC = param1;
         if(this.visible)
         {
            updatePage();
         }
         else
         {
            _changed = true;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get iSlot32() : ItemSlot
      {
         return this._1177985702iSlot32;
      }
      
      [Bindable(event="propertyChange")]
      public function get iSlot33() : ItemSlot
      {
         return this._1177985703iSlot33;
      }
      
      [Bindable(event="propertyChange")]
      public function get iSlot34() : ItemSlot
      {
         return this._1177985704iSlot34;
      }
      
      [Bindable(event="propertyChange")]
      public function get iSlot35() : ItemSlot
      {
         return this._1177985705iSlot35;
      }
      
      [Bindable(event="propertyChange")]
      public function get iSlot36() : ItemSlot
      {
         return this._1177985706iSlot36;
      }
      
      [Bindable(event="propertyChange")]
      public function get iSlot30() : ItemSlot
      {
         return this._1177985700iSlot30;
      }
      
      [Bindable(event="propertyChange")]
      public function get iSlot31() : ItemSlot
      {
         return this._1177985701iSlot31;
      }
      
      [Bindable(event="propertyChange")]
      public function get iSlot37() : ItemSlot
      {
         return this._1177985707iSlot37;
      }
      
      [Bindable(event="propertyChange")]
      public function get iSlot39() : ItemSlot
      {
         return this._1177985709iSlot39;
      }
      
      [Bindable(event="propertyChange")]
      public function get iSlot38() : ItemSlot
      {
         return this._1177985708iSlot38;
      }
      
      [Bindable(event="propertyChange")]
      public function get iSlot40() : ItemSlot
      {
         return this._1177985731iSlot40;
      }
      
      [Bindable(event="propertyChange")]
      public function get iSlot41() : ItemSlot
      {
         return this._1177985732iSlot41;
      }
      
      public function ___MonthWelfareBagPanel_BasicGlowButton1_click(param1:MouseEvent) : void
      {
         init();
      }
      
      [Bindable(event="propertyChange")]
      public function get iSlot43() : ItemSlot
      {
         return this._1177985734iSlot43;
      }
      
      [Bindable(event="propertyChange")]
      public function get iSlot44() : ItemSlot
      {
         return this._1177985735iSlot44;
      }
      
      [Bindable(event="propertyChange")]
      public function get iSlot46() : ItemSlot
      {
         return this._1177985737iSlot46;
      }
      
      [Bindable(event="propertyChange")]
      public function get iSlot48() : ItemSlot
      {
         return this._1177985739iSlot48;
      }
      
      public function set iSlot10(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1177985638iSlot10;
         if(_loc2_ !== param1)
         {
            this._1177985638iSlot10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iSlot10",_loc2_,param1));
         }
      }
      
      public function set iSlot11(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1177985639iSlot11;
         if(_loc2_ !== param1)
         {
            this._1177985639iSlot11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iSlot11",_loc2_,param1));
         }
      }
      
      public function set iSlot12(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1177985640iSlot12;
         if(_loc2_ !== param1)
         {
            this._1177985640iSlot12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iSlot12",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get iSlot47() : ItemSlot
      {
         return this._1177985738iSlot47;
      }
      
      public function set iSlot13(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1177985641iSlot13;
         if(_loc2_ !== param1)
         {
            this._1177985641iSlot13 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iSlot13",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get iSlot49() : ItemSlot
      {
         return this._1177985740iSlot49;
      }
      
      public function set iSlot14(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1177985642iSlot14;
         if(_loc2_ !== param1)
         {
            this._1177985642iSlot14 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iSlot14",_loc2_,param1));
         }
      }
      
      public function set iSlot15(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1177985643iSlot15;
         if(_loc2_ !== param1)
         {
            this._1177985643iSlot15 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iSlot15",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get iSlot45() : ItemSlot
      {
         return this._1177985736iSlot45;
      }
      
      public function set iSlot16(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1177985644iSlot16;
         if(_loc2_ !== param1)
         {
            this._1177985644iSlot16 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iSlot16",_loc2_,param1));
         }
      }
      
      public function set iSlot17(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1177985645iSlot17;
         if(_loc2_ !== param1)
         {
            this._1177985645iSlot17 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iSlot17",_loc2_,param1));
         }
      }
      
      public function set iSlot18(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1177985646iSlot18;
         if(_loc2_ !== param1)
         {
            this._1177985646iSlot18 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iSlot18",_loc2_,param1));
         }
      }
      
      public function set getAll(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1249367445getAll;
         if(_loc2_ !== param1)
         {
            this._1249367445getAll = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"getAll",_loc2_,param1));
         }
      }
      
      public function set iSlot19(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1177985647iSlot19;
         if(_loc2_ !== param1)
         {
            this._1177985647iSlot19 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iSlot19",_loc2_,param1));
         }
      }
      
      override public function set visible(param1:Boolean) : void
      {
         super.visible = param1;
         if(visible && _changed)
         {
            updatePage();
            _changed = false;
            init();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get iSlot42() : ItemSlot
      {
         return this._1177985733iSlot42;
      }
      
      private function _MonthWelfareBagPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.MONTH_WELFARE_PANEL[7];
         _loc1_ = Slot.SLOT_MONTHWELFARE;
         _loc1_ = Slot.SLOT_MONTHWELFARE;
         _loc1_ = Slot.SLOT_MONTHWELFARE;
         _loc1_ = Slot.SLOT_MONTHWELFARE;
         _loc1_ = Slot.SLOT_MONTHWELFARE;
         _loc1_ = Slot.SLOT_MONTHWELFARE;
         _loc1_ = Slot.SLOT_MONTHWELFARE;
         _loc1_ = Slot.SLOT_MONTHWELFARE;
         _loc1_ = Slot.SLOT_MONTHWELFARE;
         _loc1_ = Slot.SLOT_MONTHWELFARE;
         _loc1_ = Slot.SLOT_MONTHWELFARE;
         _loc1_ = Slot.SLOT_MONTHWELFARE;
         _loc1_ = Slot.SLOT_MONTHWELFARE;
         _loc1_ = Slot.SLOT_MONTHWELFARE;
         _loc1_ = Slot.SLOT_MONTHWELFARE;
         _loc1_ = Slot.SLOT_MONTHWELFARE;
         _loc1_ = Slot.SLOT_MONTHWELFARE;
         _loc1_ = Slot.SLOT_MONTHWELFARE;
         _loc1_ = Slot.SLOT_MONTHWELFARE;
         _loc1_ = Slot.SLOT_MONTHWELFARE;
         _loc1_ = Slot.SLOT_MONTHWELFARE;
         _loc1_ = Slot.SLOT_MONTHWELFARE;
         _loc1_ = Slot.SLOT_MONTHWELFARE;
         _loc1_ = Slot.SLOT_MONTHWELFARE;
         _loc1_ = Slot.SLOT_MONTHWELFARE;
         _loc1_ = Slot.SLOT_MONTHWELFARE;
         _loc1_ = Slot.SLOT_MONTHWELFARE;
         _loc1_ = Slot.SLOT_MONTHWELFARE;
         _loc1_ = Slot.SLOT_MONTHWELFARE;
         _loc1_ = Slot.SLOT_MONTHWELFARE;
         _loc1_ = Slot.SLOT_MONTHWELFARE;
         _loc1_ = Slot.SLOT_MONTHWELFARE;
         _loc1_ = Slot.SLOT_MONTHWELFARE;
         _loc1_ = Slot.SLOT_MONTHWELFARE;
         _loc1_ = Slot.SLOT_MONTHWELFARE;
         _loc1_ = Slot.SLOT_MONTHWELFARE;
         _loc1_ = Slot.SLOT_MONTHWELFARE;
         _loc1_ = Slot.SLOT_MONTHWELFARE;
         _loc1_ = Slot.SLOT_MONTHWELFARE;
         _loc1_ = Slot.SLOT_MONTHWELFARE;
         _loc1_ = Slot.SLOT_MONTHWELFARE;
         _loc1_ = Slot.SLOT_MONTHWELFARE;
         _loc1_ = Slot.SLOT_MONTHWELFARE;
         _loc1_ = Slot.SLOT_MONTHWELFARE;
         _loc1_ = Slot.SLOT_MONTHWELFARE;
         _loc1_ = Slot.SLOT_MONTHWELFARE;
         _loc1_ = Slot.SLOT_MONTHWELFARE;
         _loc1_ = Slot.SLOT_MONTHWELFARE;
         _loc1_ = Slot.SLOT_MONTHWELFARE;
         _loc1_ = Slot.SLOT_MONTHWELFARE;
         _loc1_ = Language.MONTH_WELFARE_PANEL[11];
         _loc1_ = Language.MONTH_WELFARE_PANEL[8];
         _loc1_ = Language.MONTH_WELFARE_PANEL[9];
         _loc1_ = Language.MONTH_WELFARE_PANEL[10];
      }
      
      public function ___MonthWelfareBagPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      private function updatePage() : void
      {
         pageSelect.initPageSeletor(itemAC.length,countPerPage);
         pageSelect.pageNo = itemPageNo;
      }
      
      private function pageClear() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < countPerPage)
         {
            this["iSlot" + _loc1_].reset();
            _loc1_++;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get iSlot0() : ItemSlot
      {
         return this._1208926455iSlot0;
      }
      
      [Bindable(event="propertyChange")]
      public function get iSlot2() : ItemSlot
      {
         return this._1208926453iSlot2;
      }
      
      public function set iSlot21(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1177985670iSlot21;
         if(_loc2_ !== param1)
         {
            this._1177985670iSlot21 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iSlot21",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get iSlot1() : ItemSlot
      {
         return this._1208926454iSlot1;
      }
      
      public function set iSlot24(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1177985673iSlot24;
         if(_loc2_ !== param1)
         {
            this._1177985673iSlot24 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iSlot24",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get iSlot3() : ItemSlot
      {
         return this._1208926452iSlot3;
      }
      
      public function set iSlot25(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1177985674iSlot25;
         if(_loc2_ !== param1)
         {
            this._1177985674iSlot25 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iSlot25",_loc2_,param1));
         }
      }
      
      public function set iSlot22(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1177985671iSlot22;
         if(_loc2_ !== param1)
         {
            this._1177985671iSlot22 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iSlot22",_loc2_,param1));
         }
      }
      
      public function set iSlot26(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1177985675iSlot26;
         if(_loc2_ !== param1)
         {
            this._1177985675iSlot26 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iSlot26",_loc2_,param1));
         }
      }
      
      private function init() : void
      {
         _core.remote.call("getMonthWelfareBag",null);
         pageSelect.onPageChanged = pageChange;
         pageSelect.onPageCleared = pageClear;
         updatePage();
         addSlotListener();
      }
      
      public function set iSlot27(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1177985676iSlot27;
         if(_loc2_ !== param1)
         {
            this._1177985676iSlot27 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iSlot27",_loc2_,param1));
         }
      }
      
      public function set iSlot20(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1177985669iSlot20;
         if(_loc2_ !== param1)
         {
            this._1177985669iSlot20 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iSlot20",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get iSlot5() : ItemSlot
      {
         return this._1208926450iSlot5;
      }
      
      [Bindable(event="propertyChange")]
      public function get iSlot6() : ItemSlot
      {
         return this._1208926449iSlot6;
      }
      
      private function pageChange(param1:int, param2:int) : void
      {
         itemPageNo = pageSelect.pageNo;
         drawPage(param1,param2);
      }
      
      [Bindable(event="propertyChange")]
      public function get iSlot8() : ItemSlot
      {
         return this._1208926447iSlot8;
      }
      
      public function set iSlot28(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1177985677iSlot28;
         if(_loc2_ !== param1)
         {
            this._1177985677iSlot28 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iSlot28",_loc2_,param1));
         }
      }
      
      public function set iSlot29(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1177985678iSlot29;
         if(_loc2_ !== param1)
         {
            this._1177985678iSlot29 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iSlot29",_loc2_,param1));
         }
      }
      
      private function dClickHandler(param1:GameEvent) : void
      {
         var _loc2_:ItemSlot = ItemSlot(param1.currentTarget);
         var _loc3_:String = pageSelect.txtPageIndicator.text;
         var _loc4_:Array = _loc3_.split("/");
         var _loc5_:int = _loc2_.index + Number(_loc4_[0]) * 50 - 2050;
         _core.remote.call("getSingleMonthWelfareItem",null,_loc5_);
      }
      
      public function set iSlot23(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1177985672iSlot23;
         if(_loc2_ !== param1)
         {
            this._1177985672iSlot23 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iSlot23",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get iSlot9() : ItemSlot
      {
         return this._1208926446iSlot9;
      }
      
      [Bindable(event="propertyChange")]
      public function get iSlot4() : ItemSlot
      {
         return this._1208926451iSlot4;
      }
      
      [Bindable(event="propertyChange")]
      public function get iSlot7() : ItemSlot
      {
         return this._1208926448iSlot7;
      }
      
      public function set pageSelect(param1:PageSelector) : void
      {
         var _loc2_:Object = this._1273109611pageSelect;
         if(_loc2_ !== param1)
         {
            this._1273109611pageSelect = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageSelect",_loc2_,param1));
         }
      }
      
      public function set iSlot32(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1177985702iSlot32;
         if(_loc2_ !== param1)
         {
            this._1177985702iSlot32 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iSlot32",_loc2_,param1));
         }
      }
      
      public function reset() : void
      {
         this.itemList = new ArrayCollection();
      }
      
      public function set iSlot34(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1177985704iSlot34;
         if(_loc2_ !== param1)
         {
            this._1177985704iSlot34 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iSlot34",_loc2_,param1));
         }
      }
      
      public function set iSlot31(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1177985701iSlot31;
         if(_loc2_ !== param1)
         {
            this._1177985701iSlot31 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iSlot31",_loc2_,param1));
         }
      }
      
      public function set iSlot35(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1177985705iSlot35;
         if(_loc2_ !== param1)
         {
            this._1177985705iSlot35 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iSlot35",_loc2_,param1));
         }
      }
      
      public function set iSlot36(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1177985706iSlot36;
         if(_loc2_ !== param1)
         {
            this._1177985706iSlot36 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iSlot36",_loc2_,param1));
         }
      }
      
      public function set iSlot37(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1177985707iSlot37;
         if(_loc2_ !== param1)
         {
            this._1177985707iSlot37 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iSlot37",_loc2_,param1));
         }
      }
      
      public function set iSlot38(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1177985708iSlot38;
         if(_loc2_ !== param1)
         {
            this._1177985708iSlot38 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iSlot38",_loc2_,param1));
         }
      }
      
      public function set iSlot33(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1177985703iSlot33;
         if(_loc2_ !== param1)
         {
            this._1177985703iSlot33 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iSlot33",_loc2_,param1));
         }
      }
      
      public function set iSlot30(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1177985700iSlot30;
         if(_loc2_ !== param1)
         {
            this._1177985700iSlot30 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iSlot30",_loc2_,param1));
         }
      }
      
      public function set iSlot39(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1177985709iSlot39;
         if(_loc2_ !== param1)
         {
            this._1177985709iSlot39 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iSlot39",_loc2_,param1));
         }
      }
      
      public function set iSlot40(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1177985731iSlot40;
         if(_loc2_ !== param1)
         {
            this._1177985731iSlot40 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iSlot40",_loc2_,param1));
         }
      }
      
      public function set bagSort(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._344219194bagSort;
         if(_loc2_ !== param1)
         {
            this._344219194bagSort = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bagSort",_loc2_,param1));
         }
      }
      
      public function set iSlot41(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1177985732iSlot41;
         if(_loc2_ !== param1)
         {
            this._1177985732iSlot41 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iSlot41",_loc2_,param1));
         }
      }
      
      public function set iSlot42(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1177985733iSlot42;
         if(_loc2_ !== param1)
         {
            this._1177985733iSlot42 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iSlot42",_loc2_,param1));
         }
      }
      
      public function set iSlot46(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1177985737iSlot46;
         if(_loc2_ !== param1)
         {
            this._1177985737iSlot46 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iSlot46",_loc2_,param1));
         }
      }
      
      public function set iSlot43(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1177985734iSlot43;
         if(_loc2_ !== param1)
         {
            this._1177985734iSlot43 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iSlot43",_loc2_,param1));
         }
      }
      
      public function set iSlot47(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1177985738iSlot47;
         if(_loc2_ !== param1)
         {
            this._1177985738iSlot47 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iSlot47",_loc2_,param1));
         }
      }
      
      public function enoughSlot(param1:uint) : Boolean
      {
         if(ToolKit.isBigOrEqual(max_slot,ToolKit.add(itemAC.length,param1)))
         {
            return true;
         }
         return false;
      }
      
      public function set iSlot44(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1177985735iSlot44;
         if(_loc2_ !== param1)
         {
            this._1177985735iSlot44 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iSlot44",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:MonthWelfareBagPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _MonthWelfareBagPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_MonthWelfareBagPanelWatcherSetupUtil");
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
      
      public function set iSlot48(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1177985739iSlot48;
         if(_loc2_ !== param1)
         {
            this._1177985739iSlot48 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iSlot48",_loc2_,param1));
         }
      }
      
      public function set iSlot49(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1177985740iSlot49;
         if(_loc2_ !== param1)
         {
            this._1177985740iSlot49 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iSlot49",_loc2_,param1));
         }
      }
      
      private function getAllMonthWelfareItem() : void
      {
         _core.remote.call("getAllMonthWelfareItem",null);
      }
      
      public function set iSlot45(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1177985736iSlot45;
         if(_loc2_ !== param1)
         {
            this._1177985736iSlot45 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iSlot45",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bagSort() : BasicGlowButton
      {
         return this._344219194bagSort;
      }
      
      public function __bagSort_click(param1:MouseEvent) : void
      {
         monthwelfareBagSort();
      }
      
      private function drawPage(param1:int, param2:int) : void
      {
         var _loc4_:Object = null;
         var _loc3_:int = 0;
         while(_loc3_ < countPerPage)
         {
            this["iSlot" + _loc3_].reset();
            if(_loc3_ < param2)
            {
               if(Boolean(itemAC.source[param1 + _loc3_]) && Boolean(itemAC.source[param1 + _loc3_].item.iid) && Boolean(itemAC.source[param1 + _loc3_].n))
               {
                  this["iSlot" + _loc3_].type = GamePredef.TBL_ITEM_TEMPLATE;
                  this["iSlot" + _loc3_].giid = itemAC.source[param1 + _loc3_].item.iid;
                  this["iSlot" + _loc3_].stackNum = itemAC.source[param1 + _loc3_].n;
                  this["iSlot" + _loc3_].slotData = GameData.d[GamePredef.TBL_ITEM_TEMPLATE][itemAC.source[param1 + _loc3_].iid];
                  _loc4_ = _core.data.getGameData(29,itemAC[param1 + _loc3_].item.iid);
                  (_loc4_) && _loc4_.color && this["iSlot" + _loc3_].setStyleName(_loc4_.color);
               }
            }
            _loc3_++;
         }
      }
   }
}

