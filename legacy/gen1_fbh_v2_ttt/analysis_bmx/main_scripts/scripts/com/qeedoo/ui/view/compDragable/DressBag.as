package com.qeedoo.ui.view.compDragable
{
   import com.adobe.serialization.json.JSON;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.view.comp.PageSelectorOnly;
   import com.qeedoo.ui.view.comp.RecipeCell;
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
   import mx.containers.Tile;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   public class DressBag extends Canvas
   {
      
      public static const TYPE_RECIPE:int = 1;
      
      public static const TYPE_CHIP:int = 2;
      
      private static const PAGE_NUM:int = 25;
      
      private var _1027481139recipeCell14:RecipeCell;
      
      private var _1972807204recipeCell4:RecipeCell;
      
      private var _1027481170recipeCell24:RecipeCell;
      
      private var _1027481137recipeCell12:RecipeCell;
      
      private var _1027481140recipeCell15:RecipeCell;
      
      private var _1027481142recipeCell17:RecipeCell;
      
      private var _1027481144recipeCell19:RecipeCell;
      
      private var _1972807207recipeCell7:RecipeCell;
      
      private var _showType:int;
      
      private var _pageDict:Object = {};
      
      private var _1972807202recipeCell2:RecipeCell;
      
      private var _1972807205recipeCell5:RecipeCell;
      
      private var _recipeArr:Array;
      
      private var _1027481166recipeCell20:RecipeCell;
      
      private var _1027481168recipeCell22:RecipeCell;
      
      private var _1027481136recipeCell11:RecipeCell;
      
      private var _core:Core = Core.getInstance();
      
      private var _1027481138recipeCell13:RecipeCell;
      
      private var _1972807200recipeCell0:RecipeCell;
      
      private var _1972807208recipeCell8:RecipeCell;
      
      private var _1027481141recipeCell16:RecipeCell;
      
      private var _1027481143recipeCell18:RecipeCell;
      
      private var _607339634pageSelector:PageSelectorOnly;
      
      private var _1972807203recipeCell3:RecipeCell;
      
      private var _1972807206recipeCell6:RecipeCell;
      
      private var _1972807201recipeCell1:RecipeCell;
      
      private var _1972807209recipeCell9:RecipeCell;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":194,
               "height":220,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Tile,
                  "stylesFactory":function():void
                  {
                     this.horizontalGap = 6;
                     this.verticalGap = 6;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"childDescriptors":[new UIComponentDescriptor({
                        "type":RecipeCell,
                        "id":"recipeCell0"
                     }),new UIComponentDescriptor({
                        "type":RecipeCell,
                        "id":"recipeCell1"
                     }),new UIComponentDescriptor({
                        "type":RecipeCell,
                        "id":"recipeCell2"
                     }),new UIComponentDescriptor({
                        "type":RecipeCell,
                        "id":"recipeCell3"
                     }),new UIComponentDescriptor({
                        "type":RecipeCell,
                        "id":"recipeCell4"
                     }),new UIComponentDescriptor({
                        "type":RecipeCell,
                        "id":"recipeCell5"
                     }),new UIComponentDescriptor({
                        "type":RecipeCell,
                        "id":"recipeCell6"
                     }),new UIComponentDescriptor({
                        "type":RecipeCell,
                        "id":"recipeCell7"
                     }),new UIComponentDescriptor({
                        "type":RecipeCell,
                        "id":"recipeCell8"
                     }),new UIComponentDescriptor({
                        "type":RecipeCell,
                        "id":"recipeCell9"
                     }),new UIComponentDescriptor({
                        "type":RecipeCell,
                        "id":"recipeCell10"
                     }),new UIComponentDescriptor({
                        "type":RecipeCell,
                        "id":"recipeCell11"
                     }),new UIComponentDescriptor({
                        "type":RecipeCell,
                        "id":"recipeCell12"
                     }),new UIComponentDescriptor({
                        "type":RecipeCell,
                        "id":"recipeCell13"
                     }),new UIComponentDescriptor({
                        "type":RecipeCell,
                        "id":"recipeCell14"
                     }),new UIComponentDescriptor({
                        "type":RecipeCell,
                        "id":"recipeCell15"
                     }),new UIComponentDescriptor({
                        "type":RecipeCell,
                        "id":"recipeCell16"
                     }),new UIComponentDescriptor({
                        "type":RecipeCell,
                        "id":"recipeCell17"
                     }),new UIComponentDescriptor({
                        "type":RecipeCell,
                        "id":"recipeCell18"
                     }),new UIComponentDescriptor({
                        "type":RecipeCell,
                        "id":"recipeCell19"
                     }),new UIComponentDescriptor({
                        "type":RecipeCell,
                        "id":"recipeCell20"
                     }),new UIComponentDescriptor({
                        "type":RecipeCell,
                        "id":"recipeCell21"
                     }),new UIComponentDescriptor({
                        "type":RecipeCell,
                        "id":"recipeCell22"
                     }),new UIComponentDescriptor({
                        "type":RecipeCell,
                        "id":"recipeCell23"
                     }),new UIComponentDescriptor({
                        "type":RecipeCell,
                        "id":"recipeCell24"
                     })]};
                  }
               }),new UIComponentDescriptor({
                  "type":PageSelectorOnly,
                  "id":"pageSelector",
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                     this.bottom = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "changeCall":updatePage,
                        "setChange":false
                     };
                  }
               })]
            };
         }
      });
      
      private var _1027481167recipeCell21:RecipeCell;
      
      private var _1027481169recipeCell23:RecipeCell;
      
      private var _1027481135recipeCell10:RecipeCell;
      
      public function DressBag()
      {
         super();
         mx_internal::_document = this;
         this.width = 194;
         this.height = 220;
         this.clipContent = false;
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
      }
      
      public function updateView(param1:int) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:* = undefined;
         var _loc5_:int = 0;
         var _loc6_:Object = null;
         _showType = param1;
         _recipeArr = [];
         if(_core.player.dressInfo)
         {
            _loc2_ = com.adobe.serialization.json.JSON.decode(_core.player.dressInfo);
            if(Boolean(_loc2_) && Boolean(_loc2_.recipe))
            {
               _loc3_ = _loc2_.recipe;
               for(_loc4_ in _loc3_)
               {
                  _loc5_ = int(_loc3_[_loc4_]);
                  if(_loc5_ > 0)
                  {
                     _loc6_ = GameData.d[GamePredef.TBL_RECIPE][_loc4_];
                     if(!(!_loc6_ || _loc6_.type != _showType))
                     {
                        _recipeArr.push({
                           "recipeId":_loc4_,
                           "recipeNum":_loc5_
                        });
                     }
                  }
               }
            }
         }
         pageSelector.totalPage = Math.ceil(_recipeArr.length / PAGE_NUM);
         if(_pageDict[_showType])
         {
            pageSelector.curPage = _pageDict[_showType];
         }
         _pageDict[_showType] = pageSelector.curPage;
         this.updatePage();
      }
      
      public function set pageSelector(param1:PageSelectorOnly) : void
      {
         var _loc2_:Object = this._607339634pageSelector;
         if(_loc2_ !== param1)
         {
            this._607339634pageSelector = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageSelector",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get recipeCell0() : RecipeCell
      {
         return this._1972807200recipeCell0;
      }
      
      [Bindable(event="propertyChange")]
      public function get recipeCell1() : RecipeCell
      {
         return this._1972807201recipeCell1;
      }
      
      [Bindable(event="propertyChange")]
      public function get recipeCell2() : RecipeCell
      {
         return this._1972807202recipeCell2;
      }
      
      [Bindable(event="propertyChange")]
      public function get recipeCell3() : RecipeCell
      {
         return this._1972807203recipeCell3;
      }
      
      [Bindable(event="propertyChange")]
      public function get recipeCell6() : RecipeCell
      {
         return this._1972807206recipeCell6;
      }
      
      [Bindable(event="propertyChange")]
      public function get recipeCell7() : RecipeCell
      {
         return this._1972807207recipeCell7;
      }
      
      [Bindable(event="propertyChange")]
      public function get recipeCell8() : RecipeCell
      {
         return this._1972807208recipeCell8;
      }
      
      [Bindable(event="propertyChange")]
      public function get recipeCell9() : RecipeCell
      {
         return this._1972807209recipeCell9;
      }
      
      [Bindable(event="propertyChange")]
      public function get recipeCell5() : RecipeCell
      {
         return this._1972807205recipeCell5;
      }
      
      [Bindable(event="propertyChange")]
      public function get recipeCell10() : RecipeCell
      {
         return this._1027481135recipeCell10;
      }
      
      [Bindable(event="propertyChange")]
      public function get recipeCell11() : RecipeCell
      {
         return this._1027481136recipeCell11;
      }
      
      [Bindable(event="propertyChange")]
      public function get recipeCell12() : RecipeCell
      {
         return this._1027481137recipeCell12;
      }
      
      [Bindable(event="propertyChange")]
      public function get recipeCell15() : RecipeCell
      {
         return this._1027481140recipeCell15;
      }
      
      [Bindable(event="propertyChange")]
      public function get recipeCell16() : RecipeCell
      {
         return this._1027481141recipeCell16;
      }
      
      [Bindable(event="propertyChange")]
      public function get recipeCell18() : RecipeCell
      {
         return this._1027481143recipeCell18;
      }
      
      [Bindable(event="propertyChange")]
      public function get recipeCell19() : RecipeCell
      {
         return this._1027481144recipeCell19;
      }
      
      [Bindable(event="propertyChange")]
      public function get recipeCell13() : RecipeCell
      {
         return this._1027481138recipeCell13;
      }
      
      [Bindable(event="propertyChange")]
      public function get recipeCell4() : RecipeCell
      {
         return this._1972807204recipeCell4;
      }
      
      public function set recipeCell0(param1:RecipeCell) : void
      {
         var _loc2_:Object = this._1972807200recipeCell0;
         if(_loc2_ !== param1)
         {
            this._1972807200recipeCell0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"recipeCell0",_loc2_,param1));
         }
      }
      
      public function set recipeCell1(param1:RecipeCell) : void
      {
         var _loc2_:Object = this._1972807201recipeCell1;
         if(_loc2_ !== param1)
         {
            this._1972807201recipeCell1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"recipeCell1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get recipeCell17() : RecipeCell
      {
         return this._1027481142recipeCell17;
      }
      
      public function set recipeCell3(param1:RecipeCell) : void
      {
         var _loc2_:Object = this._1972807203recipeCell3;
         if(_loc2_ !== param1)
         {
            this._1972807203recipeCell3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"recipeCell3",_loc2_,param1));
         }
      }
      
      public function set recipeCell4(param1:RecipeCell) : void
      {
         var _loc2_:Object = this._1972807204recipeCell4;
         if(_loc2_ !== param1)
         {
            this._1972807204recipeCell4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"recipeCell4",_loc2_,param1));
         }
      }
      
      public function set recipeCell5(param1:RecipeCell) : void
      {
         var _loc2_:Object = this._1972807205recipeCell5;
         if(_loc2_ !== param1)
         {
            this._1972807205recipeCell5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"recipeCell5",_loc2_,param1));
         }
      }
      
      public function set recipeCell6(param1:RecipeCell) : void
      {
         var _loc2_:Object = this._1972807206recipeCell6;
         if(_loc2_ !== param1)
         {
            this._1972807206recipeCell6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"recipeCell6",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get recipeCell20() : RecipeCell
      {
         return this._1027481166recipeCell20;
      }
      
      [Bindable(event="propertyChange")]
      public function get recipeCell21() : RecipeCell
      {
         return this._1027481167recipeCell21;
      }
      
      [Bindable(event="propertyChange")]
      public function get recipeCell22() : RecipeCell
      {
         return this._1027481168recipeCell22;
      }
      
      [Bindable(event="propertyChange")]
      public function get recipeCell23() : RecipeCell
      {
         return this._1027481169recipeCell23;
      }
      
      [Bindable(event="propertyChange")]
      public function get recipeCell24() : RecipeCell
      {
         return this._1027481170recipeCell24;
      }
      
      public function set recipeCell2(param1:RecipeCell) : void
      {
         var _loc2_:Object = this._1972807202recipeCell2;
         if(_loc2_ !== param1)
         {
            this._1972807202recipeCell2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"recipeCell2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get recipeCell14() : RecipeCell
      {
         return this._1027481139recipeCell14;
      }
      
      public function set recipeCell8(param1:RecipeCell) : void
      {
         var _loc2_:Object = this._1972807208recipeCell8;
         if(_loc2_ !== param1)
         {
            this._1972807208recipeCell8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"recipeCell8",_loc2_,param1));
         }
      }
      
      public function set recipeCell9(param1:RecipeCell) : void
      {
         var _loc2_:Object = this._1972807209recipeCell9;
         if(_loc2_ !== param1)
         {
            this._1972807209recipeCell9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"recipeCell9",_loc2_,param1));
         }
      }
      
      public function set recipeCell10(param1:RecipeCell) : void
      {
         var _loc2_:Object = this._1027481135recipeCell10;
         if(_loc2_ !== param1)
         {
            this._1027481135recipeCell10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"recipeCell10",_loc2_,param1));
         }
      }
      
      public function set recipeCell11(param1:RecipeCell) : void
      {
         var _loc2_:Object = this._1027481136recipeCell11;
         if(_loc2_ !== param1)
         {
            this._1027481136recipeCell11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"recipeCell11",_loc2_,param1));
         }
      }
      
      public function set recipeCell12(param1:RecipeCell) : void
      {
         var _loc2_:Object = this._1027481137recipeCell12;
         if(_loc2_ !== param1)
         {
            this._1027481137recipeCell12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"recipeCell12",_loc2_,param1));
         }
      }
      
      public function set recipeCell13(param1:RecipeCell) : void
      {
         var _loc2_:Object = this._1027481138recipeCell13;
         if(_loc2_ !== param1)
         {
            this._1027481138recipeCell13 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"recipeCell13",_loc2_,param1));
         }
      }
      
      public function set recipeCell14(param1:RecipeCell) : void
      {
         var _loc2_:Object = this._1027481139recipeCell14;
         if(_loc2_ !== param1)
         {
            this._1027481139recipeCell14 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"recipeCell14",_loc2_,param1));
         }
      }
      
      public function set recipeCell15(param1:RecipeCell) : void
      {
         var _loc2_:Object = this._1027481140recipeCell15;
         if(_loc2_ !== param1)
         {
            this._1027481140recipeCell15 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"recipeCell15",_loc2_,param1));
         }
      }
      
      public function set recipeCell16(param1:RecipeCell) : void
      {
         var _loc2_:Object = this._1027481141recipeCell16;
         if(_loc2_ !== param1)
         {
            this._1027481141recipeCell16 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"recipeCell16",_loc2_,param1));
         }
      }
      
      public function set recipeCell17(param1:RecipeCell) : void
      {
         var _loc2_:Object = this._1027481142recipeCell17;
         if(_loc2_ !== param1)
         {
            this._1027481142recipeCell17 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"recipeCell17",_loc2_,param1));
         }
      }
      
      public function set recipeCell18(param1:RecipeCell) : void
      {
         var _loc2_:Object = this._1027481143recipeCell18;
         if(_loc2_ !== param1)
         {
            this._1027481143recipeCell18 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"recipeCell18",_loc2_,param1));
         }
      }
      
      public function set recipeCell19(param1:RecipeCell) : void
      {
         var _loc2_:Object = this._1027481144recipeCell19;
         if(_loc2_ !== param1)
         {
            this._1027481144recipeCell19 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"recipeCell19",_loc2_,param1));
         }
      }
      
      public function set recipeCell7(param1:RecipeCell) : void
      {
         var _loc2_:Object = this._1972807207recipeCell7;
         if(_loc2_ !== param1)
         {
            this._1972807207recipeCell7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"recipeCell7",_loc2_,param1));
         }
      }
      
      private function cleanView() : void
      {
         var _loc2_:RecipeCell = null;
         pageSelector.totalPage = 1;
         _pageDict[_showType] = pageSelector.curPage;
         var _loc1_:int = 0;
         while(_loc1_ < PAGE_NUM)
         {
            _loc2_ = this["recipeCell" + _loc1_];
            _loc2_.clean();
            _loc1_++;
         }
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         super.initialize();
      }
      
      [Bindable(event="propertyChange")]
      public function get pageSelector() : PageSelectorOnly
      {
         return this._607339634pageSelector;
      }
      
      public function set recipeCell20(param1:RecipeCell) : void
      {
         var _loc2_:Object = this._1027481166recipeCell20;
         if(_loc2_ !== param1)
         {
            this._1027481166recipeCell20 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"recipeCell20",_loc2_,param1));
         }
      }
      
      public function set recipeCell21(param1:RecipeCell) : void
      {
         var _loc2_:Object = this._1027481167recipeCell21;
         if(_loc2_ !== param1)
         {
            this._1027481167recipeCell21 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"recipeCell21",_loc2_,param1));
         }
      }
      
      public function set recipeCell22(param1:RecipeCell) : void
      {
         var _loc2_:Object = this._1027481168recipeCell22;
         if(_loc2_ !== param1)
         {
            this._1027481168recipeCell22 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"recipeCell22",_loc2_,param1));
         }
      }
      
      public function set recipeCell23(param1:RecipeCell) : void
      {
         var _loc2_:Object = this._1027481169recipeCell23;
         if(_loc2_ !== param1)
         {
            this._1027481169recipeCell23 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"recipeCell23",_loc2_,param1));
         }
      }
      
      public function set recipeCell24(param1:RecipeCell) : void
      {
         var _loc2_:Object = this._1027481170recipeCell24;
         if(_loc2_ !== param1)
         {
            this._1027481170recipeCell24 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"recipeCell24",_loc2_,param1));
         }
      }
      
      public function makeAll() : void
      {
         if(_showType != TYPE_CHIP)
         {
            return;
         }
         _core.remote.call("makeAllChips",new Responder(DressLogic.updateDressInfo));
      }
      
      public function get showType() : int
      {
         return _showType;
      }
      
      private function updatePage() : void
      {
         var _loc4_:int = 0;
         var _loc5_:RecipeCell = null;
         var _loc6_:Object = null;
         if(!_recipeArr || _recipeArr.length <= 0)
         {
            this.cleanView();
            return;
         }
         _pageDict[_showType] = pageSelector.curPage;
         var _loc1_:int = (pageSelector.curPage - 1) * PAGE_NUM;
         var _loc2_:int = _loc1_ + PAGE_NUM;
         var _loc3_:int = _loc1_;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = _loc3_ - _loc1_;
            _loc5_ = this["recipeCell" + _loc4_];
            _loc6_ = _recipeArr[_loc3_];
            if(!_loc6_)
            {
               _loc5_.clean();
            }
            else
            {
               _loc5_.stackNum = _loc6_.recipeNum;
               _loc5_.recipeId = _loc6_.recipeId;
            }
            _loc3_++;
         }
      }
   }
}

