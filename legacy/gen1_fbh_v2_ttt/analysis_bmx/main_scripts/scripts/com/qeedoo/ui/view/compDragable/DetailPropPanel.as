package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
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
   import mx.containers.VBox;
   import mx.controls.Label;
   import mx.controls.TextInput;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class DetailPropPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public static const OWNER_TYPE_CHAR:uint = 1;
      
      public static const OWNER_TYPE_PET:uint = 2;
      
      private var _propData:Object = null;
      
      private var _ownerType:uint = 0;
      
      private var _467845765finalBreakReborn:TextInput;
      
      private var _1887307336finalCombo:TextInput;
      
      private var _1906307211finalResiDizzy:TextInput;
      
      private var _908333075finalResiDefy:TextInput;
      
      private var _498964688finalConfusion:TextInput;
      
      private const PROP_PER_KEY_ARR:Array = ["finalReduceHurt1","finalReduceHurt2","finalEnhPhyHurt","finalEnhMagicHurt","finalPraDef","finalPraMagDef","finalCriticalDamage"];
      
      private var _908746316finalResiRage:TextInput;
      
      public var _DetailPropPanel_Label2:Label;
      
      public var _DetailPropPanel_Label3:Label;
      
      public var _DetailPropPanel_Label4:Label;
      
      public var _DetailPropPanel_Label5:Label;
      
      public var _DetailPropPanel_Label6:Label;
      
      public var _DetailPropPanel_Label7:Label;
      
      public var _DetailPropPanel_Label1:Label;
      
      public var _DetailPropPanel_Label9:Label;
      
      public var _DetailPropPanel_Label8:Label;
      
      private var _1218397274finalCounter:TextInput;
      
      private var _1872627967finalSleep:TextInput;
      
      private var _1997577724finalPraDef:TextInput;
      
      private var _1382596167finalResiPoison:TextInput;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1167965741finalEnhMagicHurt:TextInput;
      
      public var _DetailPropPanel_Label10:Label;
      
      public var _DetailPropPanel_Label11:Label;
      
      public var _DetailPropPanel_Label12:Label;
      
      public var _DetailPropPanel_Label13:Label;
      
      public var _DetailPropPanel_Label14:Label;
      
      public var _DetailPropPanel_Label15:Label;
      
      public var _DetailPropPanel_Label16:Label;
      
      public var _DetailPropPanel_Label17:Label;
      
      public var _DetailPropPanel_Label18:Label;
      
      public var _DetailPropPanel_Label19:Label;
      
      private var _1879179968finalLight:TextInput;
      
      private var _355194339finalRage:TextInput;
      
      public var _DetailPropPanel_Label20:Label;
      
      public var _DetailPropPanel_Label21:Label;
      
      public var _DetailPropPanel_Label22:Label;
      
      public var _DetailPropPanel_Label23:Label;
      
      public var _DetailPropPanel_Label24:Label;
      
      public var _DetailPropPanel_Label25:Label;
      
      public var _DetailPropPanel_Label26:Label;
      
      private var _974811045finalPraMagDef:TextInput;
      
      private var _core:Core = Core.getInstance();
      
      private var _1040925444finalCriticalDamage:TextInput;
      
      mx_internal var _watchers:Array = [];
      
      private var _1892385864finalResiSleep:TextInput;
      
      private var _1984280679finalResiConfusion:TextInput;
      
      private var _1453362841finalEnhPhyHurt:TextInput;
      
      private var _57704678finalReduceHurt1:TextInput;
      
      private var _57704679finalReduceHurt2:TextInput;
      
      private var _1283394786finalResiCritical:TextInput;
      
      private var _473555694finalRebornRate:TextInput;
      
      private var _1995090974finalPoison:TextInput;
      
      private var _1898937865finalResiLight:TextInput;
      
      private var _pid:int = 0;
      
      private var _1886549314finalDizzy:TextInput;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _bindings:Array = [];
      
      private const PROP_INT_KEY_ARR:Array = ["finalCombo","finalCounter","finalRebornRate","finalBreakReborn","finalDefy","finalResiDefy","finalResiCritical","finalDizzy","finalConfusion","finalSleep","finalPoison","finalRage","finalLight","finalResiDizzy","finalResiConfusion","finalResiSleep","finalResiPoison","finalResiLight","finalResiRage"];
      
      private var _354781098finalDefy:TextInput;
      
      private var _110371416title:BasicTitleCanvas;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":300,
               "height":380,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"title"
               }),new UIComponentDescriptor({
                  "type":VBox,
                  "stylesFactory":function():void
                  {
                     this.verticalGap = 1;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":140,
                        "height":332,
                        "x":14,
                        "y":38,
                        "verticalScrollPolicy":"off",
                        "horizontalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_DetailPropPanel_Label1",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "width":55,
                                          "text":"Liên Kích",
                                          "toolTip":" Khi tấn công vật lý có tỷ lệ thực hiện thêm một lần tấn công; cũng ảnh hưởng tỷ lệ liên kích của kỹ năng"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":TextInput,
                                    "id":"finalCombo",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "center";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":56,
                                          "text":"12.32%",
                                          "height":20,
                                          "width":73,
                                          "editable":false
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_DetailPropPanel_Label2",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":55,
                                          "text":"Phản Kích",
                                          "toolTip":" Khi bị tấn công có xác suất phản công bằng đòn vật lý ",
                                          "x":0
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":TextInput,
                                    "id":"finalCounter",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "center";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":56,
                                          "text":"12.32%",
                                          "height":20,
                                          "width":73,
                                          "editable":false
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_DetailPropPanel_Label3",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "width":55,
                                          "text":"Miễn Tử",
                                          "toolTip":" Khi nhận sát thương chí mạng sẽ có tỷ lệ không chết; mỗi trận chỉ kích hoạt một lần. "
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":TextInput,
                                    "id":"finalRebornRate",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "center";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":56,
                                          "text":"12.32%",
                                          "height":20,
                                          "width":73,
                                          "editable":false
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_DetailPropPanel_Label4",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "width":55,
                                          "text":"Phá Kích",
                                          "toolTip":"Giảm tỷ lệ Miễn Tử "
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":TextInput,
                                    "id":"finalBreakReborn",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "center";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":56,
                                          "text":"12.32%",
                                          "height":20,
                                          "width":73,
                                          "editable":false
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_DetailPropPanel_Label5",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "width":55,
                                          "text":"XPN",
                                          "toolTip":"Có tỷ lệ bỏ qua phòng thủ và hiệu quả giảm sát thương của đối thủ"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":TextInput,
                                    "id":"finalDefy",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "center";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":56,
                                          "text":"12.32%",
                                          "height":20,
                                          "width":73,
                                          "editable":false
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_DetailPropPanel_Label6",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "width":55,
                                          "text":"Kháng XPN",
                                          "toolTip":"Giảm tỷ lệ XPN"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":TextInput,
                                    "id":"finalResiDefy",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "center";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":56,
                                          "text":"12.32%",
                                          "height":20,
                                          "width":73,
                                          "editable":false
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_DetailPropPanel_Label7",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "width":55,
                                          "text":"Kháng Bạo Kích",
                                          "toolTip":"Giảm tỷ lệ Kháng Bạo Kích "
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":TextInput,
                                    "id":"finalResiCritical",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "center";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":56,
                                          "text":"12.32%",
                                          "height":20,
                                          "width":73,
                                          "editable":false
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_DetailPropPanel_Label8",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "width":55,
                                          "text":"Tỉ Lệ Bạo Kích",
                                          "toolTip":"Tăng sát thương khi bạo kích"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":TextInput,
                                    "id":"finalCriticalDamage",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "center";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":56,
                                          "text":"12.32%",
                                          "height":20,
                                          "width":73,
                                          "editable":false
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_DetailPropPanel_Label9",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "width":55,
                                          "text":"Miễn Giảm VL",
                                          "toolTip":"Giảm sát thương vật lý phải chịu，nhưng vô hiệu khi đối thủ kích hoạt buff XPN "
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":TextInput,
                                    "id":"finalReduceHurt1",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "center";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":56,
                                          "text":"12.32%",
                                          "height":20,
                                          "width":73,
                                          "editable":false
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_DetailPropPanel_Label10",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "width":55,
                                          "text":"Miễn Giảm  MP",
                                          "toolTip":"Giảm tỷ lệ sát thương ma pháp phải chịu，nhưng vô hiệu khi đối thủ kích hoạt buff XPN "
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":TextInput,
                                    "id":"finalReduceHurt2",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "center";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":56,
                                          "text":"12.32%",
                                          "height":20,
                                          "width":73,
                                          "editable":false
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_DetailPropPanel_Label11",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "width":55,
                                          "text":"Tăng STVL Cuối",
                                          "toolTip":" Tăng STVL Cuối "
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":TextInput,
                                    "id":"finalEnhPhyHurt",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "center";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":56,
                                          "text":"12.32%",
                                          "height":20,
                                          "width":73,
                                          "editable":false
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_DetailPropPanel_Label12",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "width":55,
                                          "text":"Tăng STMP Cuối",
                                          "toolTip":" Tăng STMP Cuối "
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":TextInput,
                                    "id":"finalEnhMagicHurt",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "center";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":56,
                                          "text":"12.32%",
                                          "height":20,
                                          "width":73,
                                          "editable":false
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_DetailPropPanel_Label13",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "width":55,
                                          "text":"Giảm STVL Cuối",
                                          "toolTip":"Giảm STVL Cuối phải chịu，vẫn có hiệu lực ngay cả khi đối phương bỏ qua phòng ngự"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":TextInput,
                                    "id":"finalPraDef",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "center";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":56,
                                          "text":"12.32%",
                                          "height":20,
                                          "width":73,
                                          "editable":false
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_DetailPropPanel_Label14",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "width":55,
                                          "text":"Giảm STMP Cuối",
                                          "toolTip":" Giảm STMP Cuối phải chịu，vẫn có hiệu lực ngay cả khi đối phương bỏ qua phòng ngự"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":TextInput,
                                    "id":"finalPraMagDef",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "center";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":56,
                                          "text":"12.32%",
                                          "height":20,
                                          "width":73,
                                          "editable":false
                                       };
                                    }
                                 })]
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":VBox,
                  "stylesFactory":function():void
                  {
                     this.verticalGap = 1;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":140,
                        "height":332,
                        "x":155,
                        "y":38,
                        "verticalScrollPolicy":"off",
                        "horizontalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_DetailPropPanel_Label15",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "width":55,
                                          "text":"Choáng chính xác",
                                          "toolTip":"Tăng tỷ lệ Choáng chính xác "
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":TextInput,
                                    "id":"finalDizzy",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "center";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":56,
                                          "text":"12.32%",
                                          "height":20,
                                          "width":73,
                                          "editable":false
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_DetailPropPanel_Label16",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "width":55,
                                          "text":"Hỗn Loạn chính xác",
                                          "toolTip":"Tăng tỷ lệ Hỗn Loạn chính xác "
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":TextInput,
                                    "id":"finalConfusion",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "center";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":56,
                                          "text":"12.32%",
                                          "height":20,
                                          "width":73,
                                          "editable":false
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_DetailPropPanel_Label17",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "width":55,
                                          "text":"Thạch Hóa chính xác",
                                          "toolTip":"Tăng tỷ lệ Thạch Hóa chính xác "
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":TextInput,
                                    "id":"finalLight",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "center";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":56,
                                          "text":"12.32%",
                                          "height":20,
                                          "width":73,
                                          "editable":false
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_DetailPropPanel_Label18",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "width":55,
                                          "text":"Hôn Mê chính xác",
                                          "toolTip":"Tăng tỷ lệ Hôn Mê chính xác "
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":TextInput,
                                    "id":"finalSleep",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "center";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":56,
                                          "text":"12.32%",
                                          "height":20,
                                          "width":73,
                                          "editable":false
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_DetailPropPanel_Label19",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "width":55,
                                          "text":"Trúng Độc chính xác",
                                          "toolTip":"Tăng tỷ lệ Trúng Độc chính xác "
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":TextInput,
                                    "id":"finalPoison",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "center";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":56,
                                          "text":"12.32%",
                                          "height":20,
                                          "width":73,
                                          "editable":false
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_DetailPropPanel_Label20",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "width":55,
                                          "text":"Trào Phúng chính xác",
                                          "toolTip":"Tăng tỷ lệ Trào Phúng chính xác "
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":TextInput,
                                    "id":"finalRage",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "center";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":56,
                                          "text":"12.32%",
                                          "height":20,
                                          "width":73,
                                          "editable":false
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_DetailPropPanel_Label21",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "width":55,
                                          "text":"Kháng Choáng",
                                          "toolTip":"Giảm tỷ lệ Choáng "
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":TextInput,
                                    "id":"finalResiDizzy",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "center";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":56,
                                          "text":"12.32%",
                                          "height":20,
                                          "width":73,
                                          "editable":false
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_DetailPropPanel_Label22",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "width":55,
                                          "text":"Kháng Hỗn Loạn",
                                          "toolTip":"Giảm tỷ lệ Hỗn Loạn"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":TextInput,
                                    "id":"finalResiConfusion",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "center";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":56,
                                          "text":"12.32%",
                                          "height":20,
                                          "width":73,
                                          "editable":false
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_DetailPropPanel_Label23",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "width":55,
                                          "text":"Kháng Thạch Hóa ",
                                          "toolTip":"Giảm tỷ lệ Thạch Hóa "
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":TextInput,
                                    "id":"finalResiLight",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "center";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":56,
                                          "text":"12.32%",
                                          "height":20,
                                          "width":73,
                                          "editable":false
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_DetailPropPanel_Label24",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "width":55,
                                          "text":"Kháng Hôn Mê",
                                          "toolTip":"Giảm tỷ lệ Hôn Mê"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":TextInput,
                                    "id":"finalResiSleep",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "center";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":56,
                                          "text":"12.32%",
                                          "height":20,
                                          "width":73,
                                          "editable":false
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_DetailPropPanel_Label25",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "width":55,
                                          "text":"Kháng Trúng Độc",
                                          "toolTip":"Giảm tỷ lệ Trúng Độc "
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":TextInput,
                                    "id":"finalResiPoison",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "center";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":56,
                                          "text":"12.32%",
                                          "height":20,
                                          "width":73,
                                          "editable":false
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_DetailPropPanel_Label26",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "width":55,
                                          "text":"Kháng Trào Phúng",
                                          "toolTip":"Giảm tỷ lệ Trào Phúng"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":TextInput,
                                    "id":"finalResiRage",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "center";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":56,
                                          "text":"12.32%",
                                          "height":20,
                                          "width":73,
                                          "editable":false
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
      
      private var _cid:int = 0;
      
      public function DetailPropPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 300;
         this.height = 380;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         DetailPropPanel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get finalSleep() : TextInput
      {
         return this._1872627967finalSleep;
      }
      
      public function set finalSleep(param1:TextInput) : void
      {
         var _loc2_:Object = this._1872627967finalSleep;
         if(_loc2_ !== param1)
         {
            this._1872627967finalSleep = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"finalSleep",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get finalPraDef() : TextInput
      {
         return this._1997577724finalPraDef;
      }
      
      [Bindable(event="propertyChange")]
      public function get finalCriticalDamage() : TextInput
      {
         return this._1040925444finalCriticalDamage;
      }
      
      public function set finalResiLight(param1:TextInput) : void
      {
         var _loc2_:Object = this._1898937865finalResiLight;
         if(_loc2_ !== param1)
         {
            this._1898937865finalResiLight = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"finalResiLight",_loc2_,param1));
         }
      }
      
      public function set finalPraDef(param1:TextInput) : void
      {
         var _loc2_:Object = this._1997577724finalPraDef;
         if(_loc2_ !== param1)
         {
            this._1997577724finalPraDef = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"finalPraDef",_loc2_,param1));
         }
      }
      
      public function set finalCriticalDamage(param1:TextInput) : void
      {
         var _loc2_:Object = this._1040925444finalCriticalDamage;
         if(_loc2_ !== param1)
         {
            this._1040925444finalCriticalDamage = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"finalCriticalDamage",_loc2_,param1));
         }
      }
      
      public function set finalBreakReborn(param1:TextInput) : void
      {
         var _loc2_:Object = this._467845765finalBreakReborn;
         if(_loc2_ !== param1)
         {
            this._467845765finalBreakReborn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"finalBreakReborn",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get finalPoison() : TextInput
      {
         return this._1995090974finalPoison;
      }
      
      public function set ownerType(param1:uint) : void
      {
         _ownerType = param1;
      }
      
      public function set finalReduceHurt2(param1:TextInput) : void
      {
         var _loc2_:Object = this._57704679finalReduceHurt2;
         if(_loc2_ !== param1)
         {
            this._57704679finalReduceHurt2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"finalReduceHurt2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get finalResiCritical() : TextInput
      {
         return this._1283394786finalResiCritical;
      }
      
      public function updateView(param1:Object = null, param2:Boolean = false) : void
      {
         var _loc3_:Object = null;
         var _loc4_:String = null;
         _propData = param1;
         if(!initialized)
         {
            callLater(updateView,[param1]);
            return;
         }
         for(_loc3_ in PROP_INT_KEY_ARR)
         {
            _loc4_ = PROP_INT_KEY_ARR[_loc3_];
            (this[_loc4_] as TextInput).text = Number(_propData[_loc4_]).toFixed(2);
         }
         for(_loc3_ in PROP_PER_KEY_ARR)
         {
            _loc4_ = PROP_PER_KEY_ARR[_loc3_];
            if(_loc4_ == "finalPraDef")
            {
               if(_ownerType == OWNER_TYPE_CHAR)
               {
                  _core.remote.call("getFinalPraDef",new Responder(onSetSpeText),_loc4_,Number(_propData[_loc4_]),_core.cid);
               }
               else if(_ownerType == OWNER_TYPE_PET && param2)
               {
                  _core.remote.call("getFinalPraDefPet",new Responder(onSetSpeText),_loc4_,Number(_propData[_loc4_]),_core.cid);
               }
               else
               {
                  (this[_loc4_] as TextInput).text = Number(_propData[_loc4_]).toFixed(2) + "%";
               }
            }
            else if(_loc4_ == "finalPraMagDef")
            {
               if(_ownerType == OWNER_TYPE_CHAR)
               {
                  _core.remote.call("finalPraMagDef",new Responder(onSetSpeText),_loc4_,Number(_propData[_loc4_]),_core.cid);
               }
               else if(_ownerType == OWNER_TYPE_PET && param2)
               {
                  _core.remote.call("finalPraMagDefPet",new Responder(onSetSpeText),_loc4_,Number(_propData[_loc4_]),_core.cid);
               }
               else
               {
                  (this[_loc4_] as TextInput).text = Number(_propData[_loc4_]).toFixed(2) + "%";
               }
            }
            else
            {
               (this[_loc4_] as TextInput).text = Number(_propData[_loc4_]).toFixed(2) + "%";
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get finalResiDefy() : TextInput
      {
         return this._908333075finalResiDefy;
      }
      
      public function set finalPoison(param1:TextInput) : void
      {
         var _loc2_:Object = this._1995090974finalPoison;
         if(_loc2_ !== param1)
         {
            this._1995090974finalPoison = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"finalPoison",_loc2_,param1));
         }
      }
      
      public function set finalResiDefy(param1:TextInput) : void
      {
         var _loc2_:Object = this._908333075finalResiDefy;
         if(_loc2_ !== param1)
         {
            this._908333075finalResiDefy = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"finalResiDefy",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get finalLight() : TextInput
      {
         return this._1879179968finalLight;
      }
      
      public function set finalResiCritical(param1:TextInput) : void
      {
         var _loc2_:Object = this._1283394786finalResiCritical;
         if(_loc2_ !== param1)
         {
            this._1283394786finalResiCritical = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"finalResiCritical",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get finalResiPoison() : TextInput
      {
         return this._1382596167finalResiPoison;
      }
      
      [Bindable(event="propertyChange")]
      public function get finalConfusion() : TextInput
      {
         return this._498964688finalConfusion;
      }
      
      public function set finalCounter(param1:TextInput) : void
      {
         var _loc2_:Object = this._1218397274finalCounter;
         if(_loc2_ !== param1)
         {
            this._1218397274finalCounter = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"finalCounter",_loc2_,param1));
         }
      }
      
      public function set finalDefy(param1:TextInput) : void
      {
         var _loc2_:Object = this._354781098finalDefy;
         if(_loc2_ !== param1)
         {
            this._354781098finalDefy = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"finalDefy",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get finalPraMagDef() : TextInput
      {
         return this._974811045finalPraMagDef;
      }
      
      [Bindable(event="propertyChange")]
      public function get title() : BasicTitleCanvas
      {
         return this._110371416title;
      }
      
      public function set finalConfusion(param1:TextInput) : void
      {
         var _loc2_:Object = this._498964688finalConfusion;
         if(_loc2_ !== param1)
         {
            this._498964688finalConfusion = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"finalConfusion",_loc2_,param1));
         }
      }
      
      private function onSetSpeText(param1:Object) : void
      {
         var _loc2_:String = param1["key"];
         var _loc3_:String = Number(param1["value"]).toFixed(2);
         (this[_loc2_] as TextInput).text = _loc3_ + "%";
      }
      
      private function _DetailPropPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.DETAIL_PROP_PANEL[0];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
      }
      
      public function set finalCombo(param1:TextInput) : void
      {
         var _loc2_:Object = this._1887307336finalCombo;
         if(_loc2_ !== param1)
         {
            this._1887307336finalCombo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"finalCombo",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get finalResiRage() : TextInput
      {
         return this._908746316finalResiRage;
      }
      
      public function set finalDizzy(param1:TextInput) : void
      {
         var _loc2_:Object = this._1886549314finalDizzy;
         if(_loc2_ !== param1)
         {
            this._1886549314finalDizzy = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"finalDizzy",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get finalEnhPhyHurt() : TextInput
      {
         return this._1453362841finalEnhPhyHurt;
      }
      
      public function set finalLight(param1:TextInput) : void
      {
         var _loc2_:Object = this._1879179968finalLight;
         if(_loc2_ !== param1)
         {
            this._1879179968finalLight = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"finalLight",_loc2_,param1));
         }
      }
      
      private function _DetailPropPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DETAIL_PROP_PANEL[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            title.text = param1;
         },"title.text");
         result[0] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _DetailPropPanel_Label1.filters = param1;
         },"_DetailPropPanel_Label1.filters");
         result[1] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _DetailPropPanel_Label2.filters = param1;
         },"_DetailPropPanel_Label2.filters");
         result[2] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _DetailPropPanel_Label3.filters = param1;
         },"_DetailPropPanel_Label3.filters");
         result[3] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _DetailPropPanel_Label4.filters = param1;
         },"_DetailPropPanel_Label4.filters");
         result[4] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _DetailPropPanel_Label5.filters = param1;
         },"_DetailPropPanel_Label5.filters");
         result[5] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _DetailPropPanel_Label6.filters = param1;
         },"_DetailPropPanel_Label6.filters");
         result[6] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _DetailPropPanel_Label7.filters = param1;
         },"_DetailPropPanel_Label7.filters");
         result[7] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _DetailPropPanel_Label8.filters = param1;
         },"_DetailPropPanel_Label8.filters");
         result[8] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _DetailPropPanel_Label9.filters = param1;
         },"_DetailPropPanel_Label9.filters");
         result[9] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _DetailPropPanel_Label10.filters = param1;
         },"_DetailPropPanel_Label10.filters");
         result[10] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _DetailPropPanel_Label11.filters = param1;
         },"_DetailPropPanel_Label11.filters");
         result[11] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _DetailPropPanel_Label12.filters = param1;
         },"_DetailPropPanel_Label12.filters");
         result[12] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _DetailPropPanel_Label13.filters = param1;
         },"_DetailPropPanel_Label13.filters");
         result[13] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _DetailPropPanel_Label14.filters = param1;
         },"_DetailPropPanel_Label14.filters");
         result[14] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _DetailPropPanel_Label15.filters = param1;
         },"_DetailPropPanel_Label15.filters");
         result[15] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _DetailPropPanel_Label16.filters = param1;
         },"_DetailPropPanel_Label16.filters");
         result[16] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _DetailPropPanel_Label17.filters = param1;
         },"_DetailPropPanel_Label17.filters");
         result[17] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _DetailPropPanel_Label18.filters = param1;
         },"_DetailPropPanel_Label18.filters");
         result[18] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _DetailPropPanel_Label19.filters = param1;
         },"_DetailPropPanel_Label19.filters");
         result[19] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _DetailPropPanel_Label20.filters = param1;
         },"_DetailPropPanel_Label20.filters");
         result[20] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _DetailPropPanel_Label21.filters = param1;
         },"_DetailPropPanel_Label21.filters");
         result[21] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _DetailPropPanel_Label22.filters = param1;
         },"_DetailPropPanel_Label22.filters");
         result[22] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _DetailPropPanel_Label23.filters = param1;
         },"_DetailPropPanel_Label23.filters");
         result[23] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _DetailPropPanel_Label24.filters = param1;
         },"_DetailPropPanel_Label24.filters");
         result[24] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _DetailPropPanel_Label25.filters = param1;
         },"_DetailPropPanel_Label25.filters");
         result[25] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _DetailPropPanel_Label26.filters = param1;
         },"_DetailPropPanel_Label26.filters");
         result[26] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get finalBreakReborn() : TextInput
      {
         return this._467845765finalBreakReborn;
      }
      
      public function set finalResiPoison(param1:TextInput) : void
      {
         var _loc2_:Object = this._1382596167finalResiPoison;
         if(_loc2_ !== param1)
         {
            this._1382596167finalResiPoison = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"finalResiPoison",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:DetailPropPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _DetailPropPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_DetailPropPanelWatcherSetupUtil");
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
      public function get finalResiConfusion() : TextInput
      {
         return this._1984280679finalResiConfusion;
      }
      
      [Bindable(event="propertyChange")]
      public function get finalResiDizzy() : TextInput
      {
         return this._1906307211finalResiDizzy;
      }
      
      [Bindable(event="propertyChange")]
      public function get finalCounter() : TextInput
      {
         return this._1218397274finalCounter;
      }
      
      [Bindable(event="propertyChange")]
      public function get finalRebornRate() : TextInput
      {
         return this._473555694finalRebornRate;
      }
      
      public function set finalResiSleep(param1:TextInput) : void
      {
         var _loc2_:Object = this._1892385864finalResiSleep;
         if(_loc2_ !== param1)
         {
            this._1892385864finalResiSleep = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"finalResiSleep",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get finalDefy() : TextInput
      {
         return this._354781098finalDefy;
      }
      
      public function set finalEnhMagicHurt(param1:TextInput) : void
      {
         var _loc2_:Object = this._1167965741finalEnhMagicHurt;
         if(_loc2_ !== param1)
         {
            this._1167965741finalEnhMagicHurt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"finalEnhMagicHurt",_loc2_,param1));
         }
      }
      
      public function set finalResiRage(param1:TextInput) : void
      {
         var _loc2_:Object = this._908746316finalResiRage;
         if(_loc2_ !== param1)
         {
            this._908746316finalResiRage = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"finalResiRage",_loc2_,param1));
         }
      }
      
      public function set finalPraMagDef(param1:TextInput) : void
      {
         var _loc2_:Object = this._974811045finalPraMagDef;
         if(_loc2_ !== param1)
         {
            this._974811045finalPraMagDef = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"finalPraMagDef",_loc2_,param1));
         }
      }
      
      public function set title(param1:BasicTitleCanvas) : void
      {
         var _loc2_:Object = this._110371416title;
         if(_loc2_ !== param1)
         {
            this._110371416title = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"title",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get finalCombo() : TextInput
      {
         return this._1887307336finalCombo;
      }
      
      public function updateCharDetailData() : void
      {
         if(_cid != _core.cid)
         {
            _cid = _core.cid;
            _core.remote.call("getCharDetailData",new Responder(updateView),_cid);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get finalDizzy() : TextInput
      {
         return this._1886549314finalDizzy;
      }
      
      [Bindable(event="propertyChange")]
      public function get finalResiSleep() : TextInput
      {
         return this._1892385864finalResiSleep;
      }
      
      public function set finalRage(param1:TextInput) : void
      {
         var _loc2_:Object = this._355194339finalRage;
         if(_loc2_ !== param1)
         {
            this._355194339finalRage = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"finalRage",_loc2_,param1));
         }
      }
      
      public function set finalRebornRate(param1:TextInput) : void
      {
         var _loc2_:Object = this._473555694finalRebornRate;
         if(_loc2_ !== param1)
         {
            this._473555694finalRebornRate = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"finalRebornRate",_loc2_,param1));
         }
      }
      
      public function updatePetDetailData(param1:int) : void
      {
         _pid = param1;
         _core.remote.call("getPetDetailData",new Responder(updateView),_core.cid,param1);
      }
      
      public function set finalEnhPhyHurt(param1:TextInput) : void
      {
         var _loc2_:Object = this._1453362841finalEnhPhyHurt;
         if(_loc2_ !== param1)
         {
            this._1453362841finalEnhPhyHurt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"finalEnhPhyHurt",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get finalEnhMagicHurt() : TextInput
      {
         return this._1167965741finalEnhMagicHurt;
      }
      
      [Bindable(event="propertyChange")]
      public function get finalRage() : TextInput
      {
         return this._355194339finalRage;
      }
      
      public function set finalResiConfusion(param1:TextInput) : void
      {
         var _loc2_:Object = this._1984280679finalResiConfusion;
         if(_loc2_ !== param1)
         {
            this._1984280679finalResiConfusion = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"finalResiConfusion",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get finalReduceHurt1() : TextInput
      {
         return this._57704678finalReduceHurt1;
      }
      
      [Bindable(event="propertyChange")]
      public function get finalReduceHurt2() : TextInput
      {
         return this._57704679finalReduceHurt2;
      }
      
      public function set finalReduceHurt1(param1:TextInput) : void
      {
         var _loc2_:Object = this._57704678finalReduceHurt1;
         if(_loc2_ !== param1)
         {
            this._57704678finalReduceHurt1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"finalReduceHurt1",_loc2_,param1));
         }
      }
      
      public function set finalResiDizzy(param1:TextInput) : void
      {
         var _loc2_:Object = this._1906307211finalResiDizzy;
         if(_loc2_ !== param1)
         {
            this._1906307211finalResiDizzy = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"finalResiDizzy",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get finalResiLight() : TextInput
      {
         return this._1898937865finalResiLight;
      }
   }
}

