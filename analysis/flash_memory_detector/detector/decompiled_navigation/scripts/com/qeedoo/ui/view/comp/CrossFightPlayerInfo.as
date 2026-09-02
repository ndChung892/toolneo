package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.ui.resource.ResManager;
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
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   public class CrossFightPlayerInfo extends Canvas
   {
      
      private var _746483037areaTxt:Label;
      
      private var _2131636148levelTxt:Label;
      
      private var _1721941989nameTxt:Label;
      
      private var _1638753418iconImg:Image;
      
      private var _1154762381jobTxt:Label;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":222,
               "height":72,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Label,
                  "id":"nameTxt",
                  "stylesFactory":function():void
                  {
                     this.left = "3";
                     this.top = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"width":219};
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":50,
                        "height":48,
                        "y":20,
                        "x":1,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Image,
                           "id":"iconImg",
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                              this.verticalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":50,
                                 "height":48
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"jobTxt",
                  "stylesFactory":function():void
                  {
                     this.left = "51";
                     this.top = "19";
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"width":171};
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"levelTxt",
                  "stylesFactory":function():void
                  {
                     this.left = "51";
                     this.top = "36";
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"width":171};
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"areaTxt",
                  "stylesFactory":function():void
                  {
                     this.left = "51";
                     this.top = "53";
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"width":171};
                  }
               })]
            };
         }
      });
      
      public function CrossFightPlayerInfo()
      {
         super();
         mx_internal::_document = this;
         this.width = 222;
         this.height = 72;
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
         this.addEventListener("creationComplete",___CrossFightPlayerInfo_Canvas1_creationComplete);
      }
      
      public function set areaTxt(param1:Label) : void
      {
         var _loc2_:Object = this._746483037areaTxt;
         if(_loc2_ !== param1)
         {
            this._746483037areaTxt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"areaTxt",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get iconImg() : Image
      {
         return this._1638753418iconImg;
      }
      
      [Bindable(event="propertyChange")]
      public function get levelTxt() : Label
      {
         return this._2131636148levelTxt;
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         super.initialize();
      }
      
      public function set nameTxt(param1:Label) : void
      {
         var _loc2_:Object = this._1721941989nameTxt;
         if(_loc2_ !== param1)
         {
            this._1721941989nameTxt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nameTxt",_loc2_,param1));
         }
      }
      
      public function set iconImg(param1:Image) : void
      {
         var _loc2_:Object = this._1638753418iconImg;
         if(_loc2_ !== param1)
         {
            this._1638753418iconImg = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconImg",_loc2_,param1));
         }
      }
      
      public function set levelTxt(param1:Label) : void
      {
         var _loc2_:Object = this._2131636148levelTxt;
         if(_loc2_ !== param1)
         {
            this._2131636148levelTxt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelTxt",_loc2_,param1));
         }
      }
      
      public function refresh(param1:Object, param2:Object) : void
      {
         if(param1)
         {
            jobTxt.text = Language.CROSS_FIGHT_PANEL_U[23] + param1.cname;
            levelTxt.text = Language.CROSS_FIGHT_PANEL_U[24] + param1.level;
            areaTxt.text = Language.CROSS_FIGHT_PANEL_U[25] + param2.tarea;
            iconImg.source = ResManager.getIconUrl(param1.ccode);
         }
         else
         {
            init();
         }
      }
      
      public function init() : void
      {
         jobTxt.text = "";
         levelTxt.text = "";
         areaTxt.text = "";
         iconImg.source = "";
      }
      
      [Bindable(event="propertyChange")]
      public function get areaTxt() : Label
      {
         return this._746483037areaTxt;
      }
      
      [Bindable(event="propertyChange")]
      public function get nameTxt() : Label
      {
         return this._1721941989nameTxt;
      }
      
      public function set jobTxt(param1:Label) : void
      {
         var _loc2_:Object = this._1154762381jobTxt;
         if(_loc2_ !== param1)
         {
            this._1154762381jobTxt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"jobTxt",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get jobTxt() : Label
      {
         return this._1154762381jobTxt;
      }
      
      public function ___CrossFightPlayerInfo_Canvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
   }
}

