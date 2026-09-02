package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.logic.PetLogic;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.utils.TextUtil;
   import com.qeedoo.game.vo.ToolTipCreVO;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.utils.ToolKit;
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
   import mx.containers.HBox;
   import mx.containers.ViewStack;
   import mx.controls.Button;
   import mx.controls.Image;
   import mx.core.IToolTip;
   import mx.core.Repeater;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.events.ResizeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class TipCre extends BasicToolTip implements IBindingClient, IToolTip
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _TipCre_CharactorShowCanvas1:CharactorShowCanvas;
      
      private var _30739193attLastPoint:RoundedLabel;
      
      private var _1878027223_TipCre_HBox1:HBox;
      
      mx_internal var _bindings:Array;
      
      private var _900562936skill9:ItemSlot;
      
      private var _2142441348skillTab:ViewStack;
      
      private var _1638753418iconImg:Image;
      
      private var _900562943skill2:ItemSlot;
      
      public var _TipCre_RoundedLabel10:RoundedLabel;
      
      public var _TipCre_RoundedLabel11:RoundedLabel;
      
      public var _TipCre_RoundedLabel12:RoundedLabel;
      
      public var _TipCre_RoundedLabel13:RoundedLabel;
      
      public var _TipCre_RoundedLabel16:RoundedLabel;
      
      public var _TipCre_RoundedLabel17:RoundedLabel;
      
      public var _TipCre_RoundedLabel18:RoundedLabel;
      
      public var _TipCre_RoundedLabel19:RoundedLabel;
      
      private var _3769vo:ToolTipCreVO;
      
      private var _1498624177guardLabel:RoundedLabel;
      
      public var _TipCre_RoundedLabel20:RoundedLabel;
      
      public var _TipCre_RoundedLabel21:RoundedLabel;
      
      private var _900562937skill8:ItemSlot;
      
      private var _1270522743attEnergy:RoundedLabel;
      
      private var _81217999catchableLable:RoundedLabel;
      
      mx_internal var _bindingsByDestination:Object;
      
      public var _TipCre_RoundedLabel22:RoundedLabel;
      
      private var _1554141559tabBtn0:Button;
      
      private var _900562940skill5:ItemSlot;
      
      public var _TipCre_Button1:Button;
      
      private var _2147319859skill13:ItemSlot;
      
      private var _900562944skill1:ItemSlot;
      
      private var _1315489237starHbox:HBox;
      
      private var _2147319861skill15:ItemSlot;
      
      private var _1554141558tabBtn1:Button;
      
      private var _900562938skill7:ItemSlot;
      
      private var _2147319858skill12:ItemSlot;
      
      private var _2147319860skill14:ItemSlot;
      
      mx_internal var _watchers:Array;
      
      private var _1554141557tabBtn2:Button;
      
      public var _TipCre_RoundedLabel2:RoundedLabel;
      
      public var _TipCre_RoundedLabel4:RoundedLabel;
      
      public var _TipCre_RoundedLabel5:RoundedLabel;
      
      public var _TipCre_RoundedLabel6:RoundedLabel;
      
      private var _core:Core;
      
      public var _TipCre_RoundedLabel8:RoundedLabel;
      
      private var _3540562star:Repeater;
      
      private var _2147319857skill11:ItemSlot;
      
      private var _805962357propertyPentagon:PentagonCanvas;
      
      public var _TipCre_RoundedLabel9:RoundedLabel;
      
      private var _900562941skill4:ItemSlot;
      
      public var _TipCre_Image1:Array;
      
      private var _1900777969localMap:LinkTextArea;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _900562939skill6:ItemSlot;
      
      private var _2147319856skill10:ItemSlot;
      
      private var _266483816userText:RoundedLabel;
      
      private var _900562942skill3:ItemSlot;
      
      private var obj:Object;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public function TipCre()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":BasicToolTip,
            "propertiesFactory":function():Object
            {
               return {
                  "width":259,
                  "height":328,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":CharactorShowCanvas,
                     "id":"_TipCre_CharactorShowCanvas1",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":177,
                           "y":162,
                           "width":5,
                           "height":5
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":HBox,
                     "id":"starHbox",
                     "stylesFactory":function():void
                     {
                        this.horizontalGap = 1;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":46.95,
                           "x":100.5,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Repeater,
                              "id":"star",
                              "propertiesFactory":function():Object
                              {
                                 return {"childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_TipCre_Image1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":10,
                                          "height":10
                                       };
                                    }
                                 })]};
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":PentagonCanvas,
                     "id":"propertyPentagon",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":100,
                           "height":103,
                           "y":181,
                           "x":152
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Button,
                     "id":"_TipCre_Button1",
                     "events":{"click":"___TipCre_Button1_click"},
                     "stylesFactory":function():void
                     {
                        this.right = "5";
                        this.top = "5";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"BtnToolTipClose",
                           "width":15,
                           "height":15
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":RoundedLabel,
                     "id":"catchableLable",
                     "stylesFactory":function():void
                     {
                        this.color = 16711680;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":12,
                           "y":159,
                           "width":80
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Image,
                     "id":"iconImg",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":3,
                           "y":3,
                           "width":50,
                           "height":50
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":RoundedLabel,
                     "id":"_TipCre_RoundedLabel2",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":56,
                           "y":6,
                           "width":149
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":RoundedLabel,
                     "id":"userText",
                     "stylesFactory":function():void
                     {
                        this.right = "30";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {"y":3};
                     }
                  }),new UIComponentDescriptor({
                     "type":LinkTextArea,
                     "id":"localMap",
                     "stylesFactory":function():void
                     {
                        this.backgroundAlpha = 0;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":100,
                           "y":24,
                           "height":15.950004,
                           "visible":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":RoundedLabel,
                     "id":"_TipCre_RoundedLabel4",
                     "stylesFactory":function():void
                     {
                        this.textAlign = "left";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":44,
                           "y":127.95,
                           "text":"[光]",
                           "width":27
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":RoundedLabel,
                     "id":"_TipCre_RoundedLabel5",
                     "stylesFactory":function():void
                     {
                        this.textAlign = "left";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":143.95,
                           "x":13
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":RoundedLabel,
                     "id":"_TipCre_RoundedLabel6",
                     "stylesFactory":function():void
                     {
                        this.color = 3997440;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":56,
                           "y":26.95
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":RoundedLabel,
                     "id":"guardLabel",
                     "stylesFactory":function():void
                     {
                        this.textAlign = "left";
                        this.color = 16382208;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "htmlText":"",
                           "x":122,
                           "y":26.95,
                           "text":"",
                           "visible":false,
                           "width":107
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":RoundedLabel,
                     "id":"_TipCre_RoundedLabel8",
                     "stylesFactory":function():void
                     {
                        this.textAlign = "left";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":44,
                           "y":64.95,
                           "width":37,
                           "height":18
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":RoundedLabel,
                     "id":"_TipCre_RoundedLabel9",
                     "stylesFactory":function():void
                     {
                        this.textAlign = "left";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":44,
                           "y":79.95,
                           "width":37,
                           "height":18
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":RoundedLabel,
                     "id":"_TipCre_RoundedLabel10",
                     "stylesFactory":function():void
                     {
                        this.textAlign = "center";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":55,
                           "width":45,
                           "y":200.65
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":RoundedLabel,
                     "id":"_TipCre_RoundedLabel11",
                     "stylesFactory":function():void
                     {
                        this.textAlign = "center";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":55,
                           "y":216.65,
                           "width":45
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":RoundedLabel,
                     "id":"_TipCre_RoundedLabel12",
                     "stylesFactory":function():void
                     {
                        this.textAlign = "center";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":55,
                           "y":231.65,
                           "width":45
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":RoundedLabel,
                     "id":"_TipCre_RoundedLabel13",
                     "stylesFactory":function():void
                     {
                        this.textAlign = "center";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":55,
                           "y":244.65,
                           "width":45
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":RoundedLabel,
                     "id":"attEnergy",
                     "stylesFactory":function():void
                     {
                        this.textAlign = "center";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":55,
                           "y":260.65,
                           "width":45
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":RoundedLabel,
                     "id":"attLastPoint",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":44,
                           "width":40,
                           "y":111.3
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":RoundedLabel,
                     "id":"_TipCre_RoundedLabel16",
                     "stylesFactory":function():void
                     {
                        this.textAlign = "left";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":40,
                           "height":18,
                           "x":44,
                           "y":95.95
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":RoundedLabel,
                     "id":"_TipCre_RoundedLabel17",
                     "stylesFactory":function():void
                     {
                        this.textAlign = "center";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":196.65,
                           "x":102,
                           "width":60
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":RoundedLabel,
                     "id":"_TipCre_RoundedLabel18",
                     "stylesFactory":function():void
                     {
                        this.textAlign = "center";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":210.65,
                           "x":102,
                           "width":60
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":RoundedLabel,
                     "id":"_TipCre_RoundedLabel19",
                     "stylesFactory":function():void
                     {
                        this.textAlign = "center";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":226.65,
                           "x":102,
                           "width":60
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":RoundedLabel,
                     "id":"_TipCre_RoundedLabel20",
                     "stylesFactory":function():void
                     {
                        this.textAlign = "center";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":242.65,
                           "x":102,
                           "width":60
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":RoundedLabel,
                     "id":"_TipCre_RoundedLabel21",
                     "stylesFactory":function():void
                     {
                        this.textAlign = "center";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":258.65,
                           "x":102,
                           "width":60
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":RoundedLabel,
                     "id":"_TipCre_RoundedLabel22",
                     "stylesFactory":function():void
                     {
                        this.fontSize = 9;
                        this.textAlign = "center";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":178,
                           "x":176,
                           "width":67
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":ViewStack,
                     "id":"skillTab",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "creationPolicy":"all",
                           "y":285,
                           "x":64,
                           "width":184,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":SimpleCanvas,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "percentWidth":100,
                                    "percentHeight":100,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":ItemSlot,
                                       "id":"skill1",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "movable":false,
                                             "x":1,
                                             "y":0,
                                             "styleName":"CanvasPetSkillSlot"
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":ItemSlot,
                                       "id":"skill2",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "movable":false,
                                             "x":38,
                                             "y":0,
                                             "styleName":"CanvasPetSkillSlot"
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":ItemSlot,
                                       "id":"skill3",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "movable":false,
                                             "x":75,
                                             "y":0,
                                             "styleName":"CanvasPetSkillSlot"
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":ItemSlot,
                                       "id":"skill4",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "movable":false,
                                             "x":113,
                                             "y":0,
                                             "styleName":"CanvasPetSkillSlot"
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":ItemSlot,
                                       "id":"skill5",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "movable":false,
                                             "x":151,
                                             "y":0,
                                             "styleName":"CanvasPetSkillSlot"
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":SimpleCanvas,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "percentWidth":100,
                                    "percentHeight":100,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":ItemSlot,
                                       "id":"skill6",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "movable":false,
                                             "x":1,
                                             "y":0,
                                             "styleName":"CanvasPetSkillSlot"
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":ItemSlot,
                                       "id":"skill7",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "movable":false,
                                             "x":38,
                                             "y":0,
                                             "styleName":"CanvasPetSkillSlot"
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":ItemSlot,
                                       "id":"skill8",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "movable":false,
                                             "x":75,
                                             "y":0,
                                             "styleName":"CanvasPetSkillSlot"
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":ItemSlot,
                                       "id":"skill9",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "movable":false,
                                             "x":113,
                                             "y":0,
                                             "styleName":"CanvasPetSkillSlot"
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":ItemSlot,
                                       "id":"skill10",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "movable":false,
                                             "x":151,
                                             "y":0,
                                             "styleName":"CanvasPetSkillSlot"
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":SimpleCanvas,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "percentWidth":100,
                                    "percentHeight":100,
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":ItemSlot,
                                       "id":"skill11",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "movable":false,
                                             "x":1,
                                             "y":0,
                                             "styleName":"CanvasPetSkillSlot"
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":ItemSlot,
                                       "id":"skill12",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "movable":false,
                                             "x":38,
                                             "y":0,
                                             "styleName":"CanvasPetSkillSlot"
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":ItemSlot,
                                       "id":"skill13",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "movable":false,
                                             "x":75,
                                             "y":0,
                                             "styleName":"CanvasPetSkillSlot"
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":ItemSlot,
                                       "id":"skill14",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "movable":false,
                                             "x":113,
                                             "y":0,
                                             "styleName":"CanvasPetSkillSlot"
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":ItemSlot,
                                       "id":"skill15",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "movable":false,
                                             "x":151,
                                             "y":0,
                                             "styleName":"CanvasPetSkillSlot"
                                          };
                                       }
                                    })]
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Button,
                     "id":"tabBtn0",
                     "events":{"click":"__tabBtn0_click"},
                     "stylesFactory":function():void
                     {
                        this.cornerRadius = 2;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":11,
                           "y":294,
                           "label":"1",
                           "width":15,
                           "height":15,
                           "selected":true
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Button,
                     "id":"tabBtn1",
                     "events":{"click":"__tabBtn1_click"},
                     "stylesFactory":function():void
                     {
                        this.cornerRadius = 2;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":29,
                           "y":294,
                           "label":"2",
                           "width":15,
                           "height":15
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Button,
                     "id":"tabBtn2",
                     "events":{"click":"__tabBtn2_click"},
                     "stylesFactory":function():void
                     {
                        this.cornerRadius = 2;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":47,
                           "y":294,
                           "label":"3",
                           "width":15,
                           "height":15
                        };
                     }
                  })]
               };
            }
         });
         _core = Core.getInstance();
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
            this.color = 16777215;
         };
         this.styleName = "CanvasTipCre";
         this.verticalScrollPolicy = "off";
         this.horizontalScrollPolicy = "off";
         this.width = 259;
         this.height = 328;
         this.addEventListener("resize",___TipCre_BasicToolTip1_resize);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         TipCre._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get skill1() : ItemSlot
      {
         return this._900562944skill1;
      }
      
      [Bindable(event="propertyChange")]
      public function get skill2() : ItemSlot
      {
         return this._900562943skill2;
      }
      
      public function set skill1(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._900562944skill1;
         if(_loc2_ !== param1)
         {
            this._900562944skill1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skill1",_loc2_,param1));
         }
      }
      
      public function set skill2(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._900562943skill2;
         if(_loc2_ !== param1)
         {
            this._900562943skill2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skill2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get skill4() : ItemSlot
      {
         return this._900562941skill4;
      }
      
      [Bindable(event="propertyChange")]
      public function get skill8() : ItemSlot
      {
         return this._900562937skill8;
      }
      
      public function set skill5(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._900562940skill5;
         if(_loc2_ !== param1)
         {
            this._900562940skill5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skill5",_loc2_,param1));
         }
      }
      
      public function set skill9(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._900562936skill9;
         if(_loc2_ !== param1)
         {
            this._900562936skill9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skill9",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get skill3() : ItemSlot
      {
         return this._900562942skill3;
      }
      
      public function set attEnergy(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1270522743attEnergy;
         if(_loc2_ !== param1)
         {
            this._1270522743attEnergy = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"attEnergy",_loc2_,param1));
         }
      }
      
      public function set skill3(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._900562942skill3;
         if(_loc2_ !== param1)
         {
            this._900562942skill3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skill3",_loc2_,param1));
         }
      }
      
      public function set tabBtn2(param1:Button) : void
      {
         var _loc2_:Object = this._1554141557tabBtn2;
         if(_loc2_ !== param1)
         {
            this._1554141557tabBtn2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get skill9() : ItemSlot
      {
         return this._900562936skill9;
      }
      
      public function set skill6(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._900562939skill6;
         if(_loc2_ !== param1)
         {
            this._900562939skill6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skill6",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get skill5() : ItemSlot
      {
         return this._900562940skill5;
      }
      
      [Bindable(event="propertyChange")]
      public function get skill6() : ItemSlot
      {
         return this._900562939skill6;
      }
      
      public function ___TipCre_BasicToolTip1_resize(param1:ResizeEvent) : void
      {
         setPos();
      }
      
      public function set skillTab(param1:ViewStack) : void
      {
         var _loc2_:Object = this._2142441348skillTab;
         if(_loc2_ !== param1)
         {
            this._2142441348skillTab = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skillTab",_loc2_,param1));
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
      
      public function set skill7(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._900562938skill7;
         if(_loc2_ !== param1)
         {
            this._900562938skill7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skill7",_loc2_,param1));
         }
      }
      
      public function set skill8(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._900562937skill8;
         if(_loc2_ !== param1)
         {
            this._900562937skill8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skill8",_loc2_,param1));
         }
      }
      
      public function set skill4(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._900562941skill4;
         if(_loc2_ !== param1)
         {
            this._900562941skill4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skill4",_loc2_,param1));
         }
      }
      
      public function set tabBtn0(param1:Button) : void
      {
         var _loc2_:Object = this._1554141559tabBtn0;
         if(_loc2_ !== param1)
         {
            this._1554141559tabBtn0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn0",_loc2_,param1));
         }
      }
      
      private function skillTabBtnClick(param1:int) : void
      {
         skillTab.selectedIndex = param1;
         var _loc2_:int = 0;
         while(_loc2_ <= skillTab.numChildren - 1)
         {
            if(_loc2_ == param1)
            {
               this["tabBtn" + _loc2_].selected = true;
            }
            else
            {
               this["tabBtn" + _loc2_].selected = false;
            }
            _loc2_++;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get skill15() : ItemSlot
      {
         return this._2147319861skill15;
      }
      
      [Bindable(event="propertyChange")]
      public function get skill10() : ItemSlot
      {
         return this._2147319856skill10;
      }
      
      [Bindable(event="propertyChange")]
      public function get skill12() : ItemSlot
      {
         return this._2147319858skill12;
      }
      
      private function _TipCre_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = vo.urlRes;
         _loc1_ = vo.color;
         _loc1_ = star.currentItem;
         _loc1_ = vo.btnVisible;
         _loc1_ = vo.catchable;
         _loc1_ = vo.urlIcon;
         _loc1_ = vo.name;
         _loc1_ = vo.name;
         _loc1_ = vo.petColor;
         _loc1_ = vo.element;
         _loc1_ = vo.elementInfo;
         _loc1_ = vo.className;
         _loc1_ = vo.classInfo;
         _loc1_ = vo.bind;
         _loc1_ = vo.bind;
         _loc1_ = vo.level;
         _loc1_ = vo.close;
         _loc1_ = vo.attStr;
         _loc1_ = vo.attAgi;
         _loc1_ = vo.attSta;
         _loc1_ = vo.attInt;
         _loc1_ = vo.attSpr;
         _loc1_ = vo.attLast;
         _loc1_ = vo.life;
         _loc1_ = vo.aptStr;
         _loc1_ = vo.aptAgi;
         _loc1_ = vo.aptSta;
         _loc1_ = vo.aptInt;
         _loc1_ = vo.aptSpr;
         _loc1_ = vo.growRate;
         _loc1_ = GamePredef.TBL_SKILL;
         _loc1_ = vo.skill1;
         _loc1_ = GamePredef.TBL_SKILL;
         _loc1_ = vo.skill2;
         _loc1_ = GamePredef.TBL_SKILL;
         _loc1_ = vo.skill3;
         _loc1_ = GamePredef.TBL_SKILL;
         _loc1_ = vo.skill4;
         _loc1_ = GamePredef.TBL_SKILL;
         _loc1_ = vo.skill5;
         _loc1_ = GamePredef.TBL_SKILL;
         _loc1_ = vo.skill6;
         _loc1_ = GamePredef.TBL_SKILL;
         _loc1_ = vo.skill7;
         _loc1_ = GamePredef.TBL_SKILL;
         _loc1_ = vo.skill8;
         _loc1_ = GamePredef.TBL_SKILL;
         _loc1_ = vo.skill9;
         _loc1_ = GamePredef.TBL_SKILL;
         _loc1_ = vo.skill10;
         _loc1_ = GamePredef.TBL_SKILL;
         _loc1_ = vo.skill11;
         _loc1_ = GamePredef.TBL_SKILL;
         _loc1_ = vo.skill12;
         _loc1_ = GamePredef.TBL_SKILL;
         _loc1_ = vo.skill13;
         _loc1_ = GamePredef.TBL_SKILL;
         _loc1_ = vo.skill14;
         _loc1_ = GamePredef.TBL_SKILL;
         _loc1_ = vo.skill15;
      }
      
      [Bindable(event="propertyChange")]
      public function get _TipCre_HBox1() : HBox
      {
         return this._1878027223_TipCre_HBox1;
      }
      
      [Bindable(event="propertyChange")]
      public function get skill13() : ItemSlot
      {
         return this._2147319859skill13;
      }
      
      [Bindable(event="propertyChange")]
      public function get skill14() : ItemSlot
      {
         return this._2147319860skill14;
      }
      
      public function set userText(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._266483816userText;
         if(_loc2_ !== param1)
         {
            this._266483816userText = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"userText",_loc2_,param1));
         }
      }
      
      private function setTemp(param1:Object) : void
      {
         starHbox.visible = false;
         guardLabel.visible = false;
      }
      
      private function setTreasure(param1:Object) : void
      {
         vo.growRate = (param1.slotData.q / 10).toString();
         vo.aptStr = param1.temp.aptStrength.toString() + "±20%";
         vo.aptAgi = param1.temp.aptAgility.toString() + "±20%";
         vo.aptSta = param1.temp.aptStamina.toString() + "±20%";
         vo.aptInt = param1.temp.aptIntelligence.toString() + "±20%";
         vo.aptSpr = param1.temp.aptEnergy.toString() + "±20%";
         if(ToolKit.isEqual(param1.slotData.b,0))
         {
            vo.bind = Language.TIPCRE_S[7];
         }
         else if(ToolKit.isEqual(param1.slotData.b,1))
         {
            vo.bind = Language.TIPCRE_S[8];
         }
         starHbox.visible = false;
         guardLabel.visible = false;
         vo.petColor = GamePredef.CODE_ITEM_COLOR[_core.basic.colorByGrowRate(param1.slotData.q / 10)];
      }
      
      public function set skill10(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2147319856skill10;
         if(_loc2_ !== param1)
         {
            this._2147319856skill10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skill10",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get guardLabel() : RoundedLabel
      {
         return this._1498624177guardLabel;
      }
      
      public function set _TipCre_HBox1(param1:HBox) : void
      {
         var _loc2_:Object = this._1878027223_TipCre_HBox1;
         if(_loc2_ !== param1)
         {
            this._1878027223_TipCre_HBox1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_TipCre_HBox1",_loc2_,param1));
         }
      }
      
      public function set skill12(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2147319858skill12;
         if(_loc2_ !== param1)
         {
            this._2147319858skill12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skill12",_loc2_,param1));
         }
      }
      
      public function set skill14(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2147319860skill14;
         if(_loc2_ !== param1)
         {
            this._2147319860skill14 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skill14",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get star() : Repeater
      {
         return this._3540562star;
      }
      
      [Bindable(event="propertyChange")]
      public function get propertyPentagon() : PentagonCanvas
      {
         return this._805962357propertyPentagon;
      }
      
      [Bindable(event="propertyChange")]
      public function get catchableLable() : RoundedLabel
      {
         return this._81217999catchableLable;
      }
      
      public function __tabBtn0_click(param1:MouseEvent) : void
      {
         skillTabBtnClick(0);
      }
      
      public function set skill15(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2147319861skill15;
         if(_loc2_ !== param1)
         {
            this._2147319861skill15 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skill15",_loc2_,param1));
         }
      }
      
      public function ___TipCre_Button1_click(param1:MouseEvent) : void
      {
         visible = false;
      }
      
      public function set catchableLable(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._81217999catchableLable;
         if(_loc2_ !== param1)
         {
            this._81217999catchableLable = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"catchableLable",_loc2_,param1));
         }
      }
      
      public function set tabBtn1(param1:Button) : void
      {
         var _loc2_:Object = this._1554141558tabBtn1;
         if(_loc2_ !== param1)
         {
            this._1554141558tabBtn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn1",_loc2_,param1));
         }
      }
      
      public function set skill13(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2147319859skill13;
         if(_loc2_ !== param1)
         {
            this._2147319859skill13 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skill13",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get attEnergy() : RoundedLabel
      {
         return this._1270522743attEnergy;
      }
      
      private function _TipCre_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.urlRes;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipCre_CharactorShowCanvas1.url = param1;
         },"_TipCre_CharactorShowCanvas1.url");
         result[0] = binding;
         binding = new Binding(this,function():Number
         {
            return vo.color;
         },function(param1:Number):void
         {
            _TipCre_CharactorShowCanvas1.color = param1;
         },"_TipCre_CharactorShowCanvas1.color");
         result[1] = binding;
         binding = new RepeatableBinding(this,function(param1:Array, param2:Array):Object
         {
            return star.mx_internal::getItemAt(param2[0]);
         },function(param1:Object, param2:Array):void
         {
            _TipCre_Image1[param2[0]].source = param1;
         },"_TipCre_Image1.source");
         result[2] = binding;
         binding = new Binding(this,function():Boolean
         {
            return vo.btnVisible;
         },function(param1:Boolean):void
         {
            _TipCre_Button1.visible = param1;
         },"_TipCre_Button1.visible");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.catchable;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            catchableLable.text = param1;
         },"catchableLable.text");
         result[4] = binding;
         binding = new Binding(this,function():Object
         {
            return vo.urlIcon;
         },function(param1:Object):void
         {
            iconImg.source = param1;
         },"iconImg.source");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.name;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipCre_RoundedLabel2.htmlText = param1;
         },"_TipCre_RoundedLabel2.htmlText");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.name;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipCre_RoundedLabel2.text = param1;
         },"_TipCre_RoundedLabel2.text");
         result[7] = binding;
         binding = new Binding(this,function():uint
         {
            return vo.petColor;
         },function(param1:uint):void
         {
            _TipCre_RoundedLabel2.setStyle("color",param1);
         },"_TipCre_RoundedLabel2.color");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.element;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipCre_RoundedLabel4.htmlText = param1;
         },"_TipCre_RoundedLabel4.htmlText");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.elementInfo;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipCre_RoundedLabel4.toolTip = param1;
         },"_TipCre_RoundedLabel4.toolTip");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.className;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipCre_RoundedLabel5.text = param1;
         },"_TipCre_RoundedLabel5.text");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.classInfo;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipCre_RoundedLabel5.toolTip = param1;
         },"_TipCre_RoundedLabel5.toolTip");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.bind;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipCre_RoundedLabel6.htmlText = param1;
         },"_TipCre_RoundedLabel6.htmlText");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.bind;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipCre_RoundedLabel6.text = param1;
         },"_TipCre_RoundedLabel6.text");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.level;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipCre_RoundedLabel8.text = param1;
         },"_TipCre_RoundedLabel8.text");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.close;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipCre_RoundedLabel9.text = param1;
         },"_TipCre_RoundedLabel9.text");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.attStr;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipCre_RoundedLabel10.text = param1;
         },"_TipCre_RoundedLabel10.text");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.attAgi;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipCre_RoundedLabel11.text = param1;
         },"_TipCre_RoundedLabel11.text");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.attSta;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipCre_RoundedLabel12.text = param1;
         },"_TipCre_RoundedLabel12.text");
         result[19] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.attInt;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipCre_RoundedLabel13.text = param1;
         },"_TipCre_RoundedLabel13.text");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.attSpr;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            attEnergy.text = param1;
         },"attEnergy.text");
         result[21] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.attLast;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            attLastPoint.text = param1;
         },"attLastPoint.text");
         result[22] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.life;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipCre_RoundedLabel16.text = param1;
         },"_TipCre_RoundedLabel16.text");
         result[23] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.aptStr;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipCre_RoundedLabel17.text = param1;
         },"_TipCre_RoundedLabel17.text");
         result[24] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.aptAgi;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipCre_RoundedLabel18.text = param1;
         },"_TipCre_RoundedLabel18.text");
         result[25] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.aptSta;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipCre_RoundedLabel19.text = param1;
         },"_TipCre_RoundedLabel19.text");
         result[26] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.aptInt;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipCre_RoundedLabel20.text = param1;
         },"_TipCre_RoundedLabel20.text");
         result[27] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.aptSpr;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipCre_RoundedLabel21.text = param1;
         },"_TipCre_RoundedLabel21.text");
         result[28] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.growRate;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipCre_RoundedLabel22.text = param1;
         },"_TipCre_RoundedLabel22.text");
         result[29] = binding;
         binding = new Binding(this,function():int
         {
            return GamePredef.TBL_SKILL;
         },function(param1:int):void
         {
            skill1.type = param1;
         },"skill1.type");
         result[30] = binding;
         binding = new Binding(this,function():Number
         {
            return vo.skill1;
         },function(param1:Number):void
         {
            skill1.giid = param1;
         },"skill1.giid");
         result[31] = binding;
         binding = new Binding(this,function():int
         {
            return GamePredef.TBL_SKILL;
         },function(param1:int):void
         {
            skill2.type = param1;
         },"skill2.type");
         result[32] = binding;
         binding = new Binding(this,function():Number
         {
            return vo.skill2;
         },function(param1:Number):void
         {
            skill2.giid = param1;
         },"skill2.giid");
         result[33] = binding;
         binding = new Binding(this,function():int
         {
            return GamePredef.TBL_SKILL;
         },function(param1:int):void
         {
            skill3.type = param1;
         },"skill3.type");
         result[34] = binding;
         binding = new Binding(this,function():Number
         {
            return vo.skill3;
         },function(param1:Number):void
         {
            skill3.giid = param1;
         },"skill3.giid");
         result[35] = binding;
         binding = new Binding(this,function():int
         {
            return GamePredef.TBL_SKILL;
         },function(param1:int):void
         {
            skill4.type = param1;
         },"skill4.type");
         result[36] = binding;
         binding = new Binding(this,function():Number
         {
            return vo.skill4;
         },function(param1:Number):void
         {
            skill4.giid = param1;
         },"skill4.giid");
         result[37] = binding;
         binding = new Binding(this,function():int
         {
            return GamePredef.TBL_SKILL;
         },function(param1:int):void
         {
            skill5.type = param1;
         },"skill5.type");
         result[38] = binding;
         binding = new Binding(this,function():Number
         {
            return vo.skill5;
         },function(param1:Number):void
         {
            skill5.giid = param1;
         },"skill5.giid");
         result[39] = binding;
         binding = new Binding(this,function():int
         {
            return GamePredef.TBL_SKILL;
         },function(param1:int):void
         {
            skill6.type = param1;
         },"skill6.type");
         result[40] = binding;
         binding = new Binding(this,function():Number
         {
            return vo.skill6;
         },function(param1:Number):void
         {
            skill6.giid = param1;
         },"skill6.giid");
         result[41] = binding;
         binding = new Binding(this,function():int
         {
            return GamePredef.TBL_SKILL;
         },function(param1:int):void
         {
            skill7.type = param1;
         },"skill7.type");
         result[42] = binding;
         binding = new Binding(this,function():Number
         {
            return vo.skill7;
         },function(param1:Number):void
         {
            skill7.giid = param1;
         },"skill7.giid");
         result[43] = binding;
         binding = new Binding(this,function():int
         {
            return GamePredef.TBL_SKILL;
         },function(param1:int):void
         {
            skill8.type = param1;
         },"skill8.type");
         result[44] = binding;
         binding = new Binding(this,function():Number
         {
            return vo.skill8;
         },function(param1:Number):void
         {
            skill8.giid = param1;
         },"skill8.giid");
         result[45] = binding;
         binding = new Binding(this,function():int
         {
            return GamePredef.TBL_SKILL;
         },function(param1:int):void
         {
            skill9.type = param1;
         },"skill9.type");
         result[46] = binding;
         binding = new Binding(this,function():Number
         {
            return vo.skill9;
         },function(param1:Number):void
         {
            skill9.giid = param1;
         },"skill9.giid");
         result[47] = binding;
         binding = new Binding(this,function():int
         {
            return GamePredef.TBL_SKILL;
         },function(param1:int):void
         {
            skill10.type = param1;
         },"skill10.type");
         result[48] = binding;
         binding = new Binding(this,function():Number
         {
            return vo.skill10;
         },function(param1:Number):void
         {
            skill10.giid = param1;
         },"skill10.giid");
         result[49] = binding;
         binding = new Binding(this,function():int
         {
            return GamePredef.TBL_SKILL;
         },function(param1:int):void
         {
            skill11.type = param1;
         },"skill11.type");
         result[50] = binding;
         binding = new Binding(this,function():Number
         {
            return vo.skill11;
         },function(param1:Number):void
         {
            skill11.giid = param1;
         },"skill11.giid");
         result[51] = binding;
         binding = new Binding(this,function():int
         {
            return GamePredef.TBL_SKILL;
         },function(param1:int):void
         {
            skill12.type = param1;
         },"skill12.type");
         result[52] = binding;
         binding = new Binding(this,function():Number
         {
            return vo.skill12;
         },function(param1:Number):void
         {
            skill12.giid = param1;
         },"skill12.giid");
         result[53] = binding;
         binding = new Binding(this,function():int
         {
            return GamePredef.TBL_SKILL;
         },function(param1:int):void
         {
            skill13.type = param1;
         },"skill13.type");
         result[54] = binding;
         binding = new Binding(this,function():Number
         {
            return vo.skill13;
         },function(param1:Number):void
         {
            skill13.giid = param1;
         },"skill13.giid");
         result[55] = binding;
         binding = new Binding(this,function():int
         {
            return GamePredef.TBL_SKILL;
         },function(param1:int):void
         {
            skill14.type = param1;
         },"skill14.type");
         result[56] = binding;
         binding = new Binding(this,function():Number
         {
            return vo.skill14;
         },function(param1:Number):void
         {
            skill14.giid = param1;
         },"skill14.giid");
         result[57] = binding;
         binding = new Binding(this,function():int
         {
            return GamePredef.TBL_SKILL;
         },function(param1:int):void
         {
            skill15.type = param1;
         },"skill15.type");
         result[58] = binding;
         binding = new Binding(this,function():Number
         {
            return vo.skill15;
         },function(param1:Number):void
         {
            skill15.giid = param1;
         },"skill15.giid");
         result[59] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get skillTab() : ViewStack
      {
         return this._2142441348skillTab;
      }
      
      public function set skill11(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2147319857skill11;
         if(_loc2_ !== param1)
         {
            this._2147319857skill11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skill11",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:TipCre = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _TipCre_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_TipCreWatcherSetupUtil");
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
      public function get iconImg() : Image
      {
         return this._1638753418iconImg;
      }
      
      [Bindable(event="propertyChange")]
      public function get skill11() : ItemSlot
      {
         return this._2147319857skill11;
      }
      
      public function set guardLabel(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1498624177guardLabel;
         if(_loc2_ !== param1)
         {
            this._1498624177guardLabel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"guardLabel",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get userText() : RoundedLabel
      {
         return this._266483816userText;
      }
      
      [Bindable(event="propertyChange")]
      public function get skill7() : ItemSlot
      {
         return this._900562938skill7;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn0() : Button
      {
         return this._1554141559tabBtn0;
      }
      
      public function set object(param1:Object) : void
      {
         vo = new ToolTipCreVO();
         setCommon(param1);
         if(param1.slotType == Slot.SLOT_TREASURE || param1.slotType == Slot.SLOT_LOTTO)
         {
            setTreasure(param1);
         }
         else if(param1.type == BasicToolTip.TYPE_TEMP)
         {
            setTemp(param1);
         }
         else
         {
            setInst(param1);
         }
      }
      
      public function set starHbox(param1:HBox) : void
      {
         var _loc2_:Object = this._1315489237starHbox;
         if(_loc2_ !== param1)
         {
            this._1315489237starHbox = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"starHbox",_loc2_,param1));
         }
      }
      
      public function set star(param1:Repeater) : void
      {
         var _loc2_:Object = this._3540562star;
         if(_loc2_ !== param1)
         {
            this._3540562star = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"star",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get vo() : ToolTipCreVO
      {
         return this._3769vo;
      }
      
      public function __tabBtn1_click(param1:MouseEvent) : void
      {
         skillTabBtnClick(1);
      }
      
      private function set vo(param1:ToolTipCreVO) : void
      {
         var _loc2_:Object = this._3769vo;
         if(_loc2_ !== param1)
         {
            this._3769vo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vo",_loc2_,param1));
         }
      }
      
      private function setInst(param1:Object) : void
      {
         var _loc14_:int = 0;
         var _loc15_:* = undefined;
         var _loc16_:Array = null;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:RegExp = null;
         var _loc23_:int = 0;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc28_:Number = NaN;
         guardLabel.visible = false;
         vo.name = param1.inst.petName;
         if(Boolean(_core.player) && Boolean(_core.player.petGuardData))
         {
            _loc14_ = int(param1.inst.id);
            for(_loc15_ in _core.player.petGuardData["petData"])
            {
               if(_core.player.petGuardData["petData"][_loc15_] == _loc14_ && _loc14_ != 0)
               {
                  if(_loc15_ < 10)
                  {
                     guardLabel.htmlText = GamePredef.GUARD_NAME[_loc15_];
                     guardLabel.text = GamePredef.GUARD_NAME[_loc15_];
                     guardLabel.visible = true;
                  }
                  else
                  {
                     _loc15_ = Math.floor(_loc15_ / 10) * 10;
                     guardLabel.text = GamePredef.GUARD_NAME[_loc15_];
                     guardLabel.htmlText = GamePredef.GUARD_NAME[_loc15_];
                     guardLabel.visible = true;
                  }
                  break;
               }
            }
         }
         vo.level = PetLogic.expToLv(param1.inst.exp);
         vo.close = param1.inst.close;
         vo.attStr = param1.inst.attStrength;
         vo.attAgi = param1.inst.attAgility;
         vo.attSta = param1.inst.attStamina;
         vo.attInt = param1.inst.attIntelligence;
         vo.attSpr = param1.inst.attEnergy;
         vo.attLast = param1.inst.attLastPoint;
         var _loc2_:int = Boolean(param1.inst) && Boolean(param1.inst.element) ? int(param1.inst.element) : 0;
         vo.element = "<font color=\'" + GamePredef.ELEMENT_COLOR[_loc2_] + "\'>" + GamePredef.ELEMENT_NAME[_loc2_] + "</font>";
         vo.elementInfo = GamePredef.ELEMENT_INFO[_loc2_];
         var _loc3_:Number = 0;
         if(param1.inst.upgradeNum == 9)
         {
            _loc3_ = Number(param1.inst.growRateAdd) + 0.1;
         }
         else if(param1.inst.upgradeNum == 10)
         {
            _loc3_ = Number(param1.inst.growRateAdd) + 0.3;
         }
         else if(param1.inst.upgradeNum == 11)
         {
            _loc3_ = Number(param1.inst.growRateAdd) + 0.35;
         }
         else if(param1.inst.upgradeNum == 12)
         {
            _loc3_ = Number(param1.inst.growRateAdd) + 0.4;
         }
         else
         {
            _loc3_ = Number(param1.inst.growRateAdd);
         }
         var _loc4_:Number = ToolKit.add(param1.inst.growRate,_loc3_);
         vo.growRate = param1.inst.growRate + "+" + (Math.round(_loc3_ * 100) / 100).toString();
         var _loc5_:Number = Number(Number(param1.inst.aptStrengthEx) || 0);
         var _loc6_:Number = Number(Number(param1.inst.aptAgilityEx) || 0);
         var _loc7_:Number = Number(Number(param1.inst.aptStaminaEx) || 0);
         var _loc8_:Number = Number(Number(param1.inst.aptIntelligenceEx) || 0);
         var _loc9_:Number = Number(Number(param1.inst.aptEnergyEx) || 0);
         if(!param1.inst.envo)
         {
            vo.aptStr = Math.round((Number(param1.inst.aptStrength) + _loc5_) * _loc4_).toString();
            vo.aptAgi = Math.round((Number(param1.inst.aptAgility) + _loc6_) * _loc4_).toString();
            vo.aptSta = Math.round((Number(param1.inst.aptStamina) + _loc7_) * _loc4_).toString();
            vo.aptInt = Math.round((Number(param1.inst.aptIntelligence) + _loc8_) * _loc4_).toString();
            vo.aptSpr = Math.round((Number(param1.inst.aptEnergy) + _loc9_) * _loc4_).toString();
         }
         else
         {
            _loc16_ = String(param1.inst.envo).split(",");
            _loc17_ = 0;
            _loc18_ = 0;
            _loc19_ = 0;
            _loc20_ = 0;
            _loc21_ = 0;
            _loc22_ = /\d+/;
            _loc23_ = 0;
            while(_loc23_ < _loc16_.length)
            {
               if(_loc16_[_loc23_].indexOf("aptStrengthEvolution") >= 0)
               {
                  _loc17_ = Number(_loc16_[_loc23_].match(_loc22_));
               }
               else if(_loc16_[_loc23_].indexOf("aptAgilityEvolution") >= 0)
               {
                  _loc18_ = Number(_loc16_[_loc23_].match(_loc22_));
               }
               else if(_loc16_[_loc23_].indexOf("aptStaminaEvolution") >= 0)
               {
                  _loc19_ = Number(_loc16_[_loc23_].match(_loc22_));
               }
               else if(_loc16_[_loc23_].indexOf("aptIntelligenceEvolution") >= 0)
               {
                  _loc20_ = Number(_loc16_[_loc23_].match(_loc22_));
               }
               else if(_loc16_[_loc23_].indexOf("aptEnergyEvolution") >= 0)
               {
                  _loc21_ = Number(_loc16_[_loc23_].match(_loc22_));
               }
               _loc23_++;
            }
            vo.aptStr = Math.round((Number(param1.inst.aptStrength) + _loc5_ + _loc17_) * _loc4_).toString();
            vo.aptAgi = Math.round((Number(param1.inst.aptAgility) + _loc6_ + _loc18_) * _loc4_).toString();
            vo.aptSta = Math.round((Number(param1.inst.aptStamina) + _loc7_ + _loc19_) * _loc4_).toString();
            vo.aptInt = Math.round((Number(param1.inst.aptIntelligence) + _loc8_ + _loc20_) * _loc4_).toString();
            vo.aptSpr = Math.round((Number(param1.inst.aptEnergy) + _loc9_ + _loc21_) * _loc4_).toString();
         }
         getCatchAble(param1);
         vo.life = param1.inst.life;
         if(ToolKit.isEqual(param1.inst.binded,0))
         {
            vo.bind = Language.TIPCRE_S[7];
         }
         else if(ToolKit.isEqual(param1.inst.binded,1))
         {
            vo.bind = Language.TIPCRE_S[8];
         }
         var _loc10_:int = 1;
         while(_loc10_ <= 15)
         {
            if(param1.inst["skill" + _loc10_] > 0)
            {
               vo["skill" + _loc10_] = param1.inst["skill" + _loc10_];
            }
            else if(vo["skill" + _loc10_] > 0)
            {
               vo["skill" + _loc10_] = -1;
            }
            _loc10_++;
         }
         vo.star = param1.inst.upgradeNum;
         starHbox.visible = true;
         var _loc11_:Array = [];
         var _loc12_:int = 1;
         while(_loc12_ <= 12)
         {
            _loc11_[_loc12_] = ResManager.ICON_PET_STAR_DARK;
            if(ToolKit.isSmallOrEqual(_loc12_,param1.inst.upgradeNum))
            {
               _loc11_[_loc12_] = ResManager.ICON_PET_STAR_LIGHT;
            }
            _loc12_++;
         }
         star.dataProvider = _loc11_;
         var _loc13_:String = Language.TIPCRE_S[9].toString().replace("{value.inst.upgradeNum}",param1.inst.upgradeNum);
         starHbox.toolTip = _loc13_;
         vo.petColor = GamePredef.CODE_ITEM_COLOR[_core.basic.colorByGrowRate(param1.inst.growRate)];
         propertyPentagon.setName = [Language.TIPCRE_S[2],Language.TIPCRE_S[3],Language.TIPCRE_S[4],Language.TIPCRE_S[5],Language.TIPCRE_S[6]];
         if(!param1.inst.envo)
         {
            propertyPentagon.showProperty(10000,[Number(param1.inst.aptStrength),Number(param1.inst.aptAgility),Number(param1.inst.aptStamina),Number(param1.inst.aptIntelligence),Number(param1.inst.aptEnergy)],[vo.aptStr,vo.aptAgi,vo.aptSta,vo.aptInt,vo.aptSpr]);
         }
         else
         {
            _loc16_ = String(param1.inst.envo).split(",");
            _loc24_ = 0;
            _loc25_ = 0;
            _loc26_ = 0;
            _loc27_ = 0;
            _loc28_ = 0;
            _loc22_ = /\d+/;
            _loc23_ = 0;
            while(_loc23_ < _loc16_.length)
            {
               if(_loc16_[_loc23_].indexOf("aptStrengthEvolution") >= 0)
               {
                  _loc24_ = Number(_loc16_[_loc23_].match(_loc22_));
               }
               else if(_loc16_[_loc23_].indexOf("aptAgilityEvolution") >= 0)
               {
                  _loc25_ = Number(_loc16_[_loc23_].match(_loc22_));
               }
               else if(_loc16_[_loc23_].indexOf("aptStaminaEvolution") >= 0)
               {
                  _loc26_ = Number(_loc16_[_loc23_].match(_loc22_));
               }
               else if(_loc16_[_loc23_].indexOf("aptIntelligenceEvolution") >= 0)
               {
                  _loc27_ = Number(_loc16_[_loc23_].match(_loc22_));
               }
               else if(_loc16_[_loc23_].indexOf("aptEnergyEvolution") >= 0)
               {
                  _loc28_ = Number(_loc16_[_loc23_].match(_loc22_));
               }
               _loc23_++;
            }
            propertyPentagon.showProperty(10000,[Number(param1.inst.aptStrength) + _loc24_,Number(param1.inst.aptAgility) + _loc25_,Number(param1.inst.aptStamina) + _loc26_,Number(param1.inst.aptIntelligence) + _loc27_,Number(param1.inst.aptEnergy) + _loc28_],[vo.aptStr,vo.aptAgi,vo.aptSta,vo.aptInt,vo.aptSpr]);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn1() : Button
      {
         return this._1554141558tabBtn1;
      }
      
      [Bindable(event="propertyChange")]
      public function get starHbox() : HBox
      {
         return this._1315489237starHbox;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn2() : Button
      {
         return this._1554141557tabBtn2;
      }
      
      public function set propertyPentagon(param1:PentagonCanvas) : void
      {
         var _loc2_:Object = this._805962357propertyPentagon;
         if(_loc2_ !== param1)
         {
            this._805962357propertyPentagon = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"propertyPentagon",_loc2_,param1));
         }
      }
      
      private function setCommon(param1:Object) : void
      {
         var _loc3_:Object = null;
         var _loc4_:String = null;
         var _loc5_:Array = null;
         var _loc6_:int = 0;
         var _loc7_:String = null;
         tabBtn0.toolTip = Language.TIPCRE_S[12];
         tabBtn1.toolTip = Language.TIPCRE_S[13];
         tabBtn2.toolTip = Language.TIPCRE_S[14];
         vo.btnVisible = param1.btnVisible;
         vo.name = String(param1.temp.name || "").split("【")[0];
         vo.className = GamePredef.CREATURE_QLEVEL[param1.temp.qLevel] + GamePredef.CREATURE_CLASS_NAME[param1.temp.classId];
         vo.classInfo = GamePredef.CREATURE_CLASS_INFO[param1.temp.classId];
         vo.urlIcon = ResManager.getIconUrl(param1.temp.iconCode);
         vo.urlRes = ResManager.getResUrl(param1.temp.resCode);
         if(Boolean(param1.inst) && Boolean(param1.inst.colorCode))
         {
            vo.color = param1.inst.colorCode;
         }
         else
         {
            vo.color = param1.temp.colorCode;
         }
         vo.petColor = GamePredef.CODE_ITEM_COLOR[0];
         vo.useLv = param1.temp.useLv;
         userText.text = Language.TIPCRE_S[11].toString().replace("{vo.useLv}",vo.useLv);
         localMap.field.filters = [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         var _loc2_:String = "";
         localMap.text = "";
         for each(_loc3_ in GameData.d[GamePredef.TBL_MAP_CREATURE])
         {
            if(_loc3_.cid == param1.temp.id)
            {
               if(_loc2_.indexOf(_loc3_.mid) < 0)
               {
                  _loc2_ += _loc3_.mid + "|";
               }
               _loc4_ = "";
               if(!_loc2_)
               {
                  localMap.text = "";
               }
               else
               {
                  _loc5_ = _loc2_.split("|");
                  for each(_loc6_ in _loc5_)
                  {
                     if(GameData.d[GamePredef.TBL_MAP][_loc6_])
                     {
                        _loc4_ += TextUtil.getMapHtml(_loc6_);
                     }
                  }
                  _loc7_ = Language.TIPCRE_S[0].toString().replace("{mapName}",_loc4_);
                  localMap.htmlText = "<font color=\'#FFFFFF\'>" + _loc7_ + "</font>";
                  localMap.visible = true;
               }
            }
         }
         ResManager.setColorCode(iconImg,vo.color);
         vo.level = 1;
         vo.close = 100;
         vo.catchable = param1.temp.catchable == 0 ? Language.TIPCRE_S[1] : Language.TIPCRE_S[15].replace("{value}",param1.temp.catchable);
         if(param1.temp.catchable == 0)
         {
            catchableLable.setStyle("color","0xFF0000");
         }
         else
         {
            catchableLable.setStyle("color","0x00FF00");
         }
         if(param1.temp.catchable == 0)
         {
            userText.text = "";
         }
         vo.element = "<font color=\'" + GamePredef.ELEMENT_COLOR[param1.temp.element] + "\'>" + GamePredef.ELEMENT_NAME[param1.temp.element] + "</font>";
         vo.elementInfo = GamePredef.ELEMENT_INFO[param1.temp.element];
         vo.attStr = param1.temp.attStrength;
         vo.attAgi = param1.temp.attAgility;
         vo.attSta = param1.temp.attStamina;
         vo.attInt = param1.temp.attIntelligence;
         vo.attSpr = param1.temp.attEnergy;
         vo.aptStr = param1.temp.aptStrength;
         vo.aptAgi = param1.temp.aptAgility;
         vo.aptSta = param1.temp.aptStamina;
         vo.aptInt = param1.temp.aptIntelligence;
         vo.aptSpr = param1.temp.aptEnergy;
         vo.growRate = param1.temp.growBase;
         vo.star = 0;
         vo.life = param1.temp.life;
         propertyPentagon.setName = [Language.TIPCRE_S[2],Language.TIPCRE_S[3],Language.TIPCRE_S[4],Language.TIPCRE_S[5],Language.TIPCRE_S[6]];
         propertyPentagon.showProperty(10000,[param1.temp.aptStrength,param1.temp.aptAgility,param1.temp.aptStamina,param1.temp.aptIntelligence,param1.temp.aptEnergy]);
      }
      
      [Bindable(event="propertyChange")]
      public function get localMap() : LinkTextArea
      {
         return this._1900777969localMap;
      }
      
      public function set attLastPoint(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._30739193attLastPoint;
         if(_loc2_ !== param1)
         {
            this._30739193attLastPoint = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"attLastPoint",_loc2_,param1));
         }
      }
      
      public function __tabBtn2_click(param1:MouseEvent) : void
      {
         skillTabBtnClick(2);
      }
      
      [Bindable(event="propertyChange")]
      public function get attLastPoint() : RoundedLabel
      {
         return this._30739193attLastPoint;
      }
      
      public function set localMap(param1:LinkTextArea) : void
      {
         var _loc2_:Object = this._1900777969localMap;
         if(_loc2_ !== param1)
         {
            this._1900777969localMap = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"localMap",_loc2_,param1));
         }
      }
      
      private function getCatchAble(param1:Object) : void
      {
         if(param1.temp.catchable == 0)
         {
            vo.catchable = Language.TIPCRE_S[1];
            return;
         }
         if(vo.level - _core.player.level >= 5)
         {
            vo.catchable = Language.TIPCRE_S[10];
            return;
         }
      }
   }
}

