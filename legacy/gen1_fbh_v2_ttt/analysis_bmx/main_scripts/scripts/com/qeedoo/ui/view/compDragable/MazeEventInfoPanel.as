package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.resource.ResManager;
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
   import mx.controls.Image;
   import mx.controls.Text;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class MazeEventInfoPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _watchers:Array = [];
      
      public var _MazeEventInfoPanel_Text10:Text;
      
      public var _MazeEventInfoPanel_Text11:Text;
      
      public var _MazeEventInfoPanel_Text12:Text;
      
      public var _MazeEventInfoPanel_Text13:Text;
      
      public var _MazeEventInfoPanel_Text14:Text;
      
      public var _MazeEventInfoPanel_Image12:Image;
      
      public var _MazeEventInfoPanel_Image13:Image;
      
      public var _MazeEventInfoPanel_Image14:Image;
      
      public var _MazeEventInfoPanel_Image10:Image;
      
      public var _MazeEventInfoPanel_Image11:Image;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _bindingsByDestination:Object = {};
      
      public var _MazeEventInfoPanel_Image1:Image;
      
      public var _MazeEventInfoPanel_Image2:Image;
      
      public var _MazeEventInfoPanel_Image3:Image;
      
      public var _MazeEventInfoPanel_Image4:Image;
      
      public var _MazeEventInfoPanel_Image5:Image;
      
      public var _MazeEventInfoPanel_Image6:Image;
      
      public var _MazeEventInfoPanel_Text3:Text;
      
      public var _MazeEventInfoPanel_Text4:Text;
      
      public var _MazeEventInfoPanel_Image9:Image;
      
      public var _MazeEventInfoPanel_Text7:Text;
      
      public var _MazeEventInfoPanel_Text1:Text;
      
      public var _MazeEventInfoPanel_Text2:Text;
      
      public var _MazeEventInfoPanel_Image7:Image;
      
      public var _MazeEventInfoPanel_Image8:Image;
      
      public var _MazeEventInfoPanel_Text6:Text;
      
      mx_internal var _bindings:Array = [];
      
      public var _MazeEventInfoPanel_Text8:Text;
      
      public var _MazeEventInfoPanel_Text9:Text;
      
      public var _MazeEventInfoPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      public var _MazeEventInfoPanel_Text5:Text;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":580,
               "height":410,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_MazeEventInfoPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":275,
                        "height":50,
                        "x":15,
                        "y":40,
                        "styleName":"CanvasBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":70,
                                 "height":50,
                                 "x":0,
                                 "y":0,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_MazeEventInfoPanel_Image1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":3,
                                          "width":45,
                                          "height":30
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
                                 "width":205,
                                 "height":50,
                                 "x":70,
                                 "y":0,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Text,
                                    "id":"_MazeEventInfoPanel_Text1",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "y":0,
                                          "percentWidth":100,
                                          "percentHeight":100,
                                          "selectable":false
                                       };
                                    }
                                 })]
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
                        "width":275,
                        "height":50,
                        "x":290,
                        "y":40,
                        "styleName":"CanvasBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":70,
                                 "height":50,
                                 "x":0,
                                 "y":0,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_MazeEventInfoPanel_Image2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":3,
                                          "width":45,
                                          "height":30
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
                                 "width":205,
                                 "height":50,
                                 "x":70,
                                 "y":0,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Text,
                                    "id":"_MazeEventInfoPanel_Text2",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "y":0,
                                          "percentWidth":100,
                                          "percentHeight":100,
                                          "selectable":false
                                       };
                                    }
                                 })]
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
                        "width":275,
                        "height":50,
                        "x":15,
                        "y":90,
                        "styleName":"CanvasBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":70,
                                 "height":50,
                                 "x":0,
                                 "y":0,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_MazeEventInfoPanel_Image3",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":3,
                                          "width":45,
                                          "height":30
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
                                 "width":205,
                                 "height":50,
                                 "x":70,
                                 "y":0,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Text,
                                    "id":"_MazeEventInfoPanel_Text3",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "y":0,
                                          "percentWidth":100,
                                          "percentHeight":100,
                                          "selectable":false
                                       };
                                    }
                                 })]
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
                        "width":275,
                        "height":50,
                        "x":290,
                        "y":90,
                        "styleName":"CanvasBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":70,
                                 "height":50,
                                 "x":0,
                                 "y":0,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_MazeEventInfoPanel_Image4",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":3,
                                          "width":45,
                                          "height":30
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
                                 "width":205,
                                 "height":50,
                                 "x":70,
                                 "y":0,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Text,
                                    "id":"_MazeEventInfoPanel_Text4",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "y":0,
                                          "percentWidth":100,
                                          "percentHeight":100,
                                          "selectable":false
                                       };
                                    }
                                 })]
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
                        "width":275,
                        "height":50,
                        "x":15,
                        "y":140,
                        "styleName":"CanvasBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":70,
                                 "height":50,
                                 "x":0,
                                 "y":0,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_MazeEventInfoPanel_Image5",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":3,
                                          "width":45,
                                          "height":30
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
                                 "width":205,
                                 "height":50,
                                 "x":70,
                                 "y":0,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Text,
                                    "id":"_MazeEventInfoPanel_Text5",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "y":0,
                                          "percentWidth":100,
                                          "percentHeight":100,
                                          "selectable":false
                                       };
                                    }
                                 })]
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
                        "width":275,
                        "height":50,
                        "x":290,
                        "y":140,
                        "styleName":"CanvasBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":70,
                                 "height":50,
                                 "x":0,
                                 "y":0,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_MazeEventInfoPanel_Image6",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":3,
                                          "width":45,
                                          "height":30
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
                                 "width":205,
                                 "height":50,
                                 "x":70,
                                 "y":0,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Text,
                                    "id":"_MazeEventInfoPanel_Text6",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "y":0,
                                          "percentWidth":100,
                                          "percentHeight":100,
                                          "selectable":false
                                       };
                                    }
                                 })]
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
                        "width":275,
                        "height":50,
                        "x":15,
                        "y":190,
                        "styleName":"CanvasBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":70,
                                 "height":50,
                                 "x":0,
                                 "y":0,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_MazeEventInfoPanel_Image7",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":3,
                                          "width":45,
                                          "height":30
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
                                 "width":205,
                                 "height":50,
                                 "x":70,
                                 "y":0,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Text,
                                    "id":"_MazeEventInfoPanel_Text7",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "y":0,
                                          "percentWidth":100,
                                          "percentHeight":100,
                                          "selectable":false
                                       };
                                    }
                                 })]
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
                        "width":275,
                        "height":50,
                        "x":290,
                        "y":190,
                        "styleName":"CanvasBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":70,
                                 "height":50,
                                 "x":0,
                                 "y":0,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_MazeEventInfoPanel_Image8",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":3,
                                          "width":45,
                                          "height":30
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
                                 "width":205,
                                 "height":50,
                                 "x":70,
                                 "y":0,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Text,
                                    "id":"_MazeEventInfoPanel_Text8",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "y":0,
                                          "percentWidth":100,
                                          "percentHeight":100,
                                          "selectable":false
                                       };
                                    }
                                 })]
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
                        "width":275,
                        "height":50,
                        "x":15,
                        "y":240,
                        "styleName":"CanvasBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":70,
                                 "height":50,
                                 "x":0,
                                 "y":0,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_MazeEventInfoPanel_Image9",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":3,
                                          "width":45,
                                          "height":30
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
                                 "width":205,
                                 "height":50,
                                 "x":70,
                                 "y":0,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Text,
                                    "id":"_MazeEventInfoPanel_Text9",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "y":0,
                                          "percentWidth":100,
                                          "percentHeight":100,
                                          "selectable":false
                                       };
                                    }
                                 })]
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
                        "width":275,
                        "height":50,
                        "x":290,
                        "y":240,
                        "styleName":"CanvasBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":70,
                                 "height":50,
                                 "x":0,
                                 "y":0,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_MazeEventInfoPanel_Image10",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":3,
                                          "width":45,
                                          "height":30
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
                                 "width":205,
                                 "height":50,
                                 "x":70,
                                 "y":0,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Text,
                                    "id":"_MazeEventInfoPanel_Text10",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "y":0,
                                          "percentWidth":100,
                                          "percentHeight":100,
                                          "selectable":false
                                       };
                                    }
                                 })]
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
                        "width":275,
                        "height":50,
                        "x":15,
                        "y":290,
                        "styleName":"CanvasBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":70,
                                 "height":50,
                                 "x":0,
                                 "y":0,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_MazeEventInfoPanel_Image11",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":3,
                                          "width":45,
                                          "height":30
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
                                 "width":205,
                                 "height":50,
                                 "x":70,
                                 "y":0,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Text,
                                    "id":"_MazeEventInfoPanel_Text11",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "y":0,
                                          "percentWidth":100,
                                          "percentHeight":100,
                                          "selectable":false
                                       };
                                    }
                                 })]
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
                        "width":275,
                        "height":50,
                        "x":290,
                        "y":290,
                        "styleName":"CanvasBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":70,
                                 "height":50,
                                 "x":0,
                                 "y":0,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_MazeEventInfoPanel_Image12",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":3,
                                          "width":45,
                                          "height":30
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
                                 "width":205,
                                 "height":50,
                                 "x":70,
                                 "y":0,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Text,
                                    "id":"_MazeEventInfoPanel_Text12",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "y":0,
                                          "percentWidth":100,
                                          "percentHeight":100,
                                          "selectable":false
                                       };
                                    }
                                 })]
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
                        "width":275,
                        "height":50,
                        "x":15,
                        "y":340,
                        "styleName":"CanvasBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":70,
                                 "height":50,
                                 "x":0,
                                 "y":0,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_MazeEventInfoPanel_Image13",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":3,
                                          "width":45,
                                          "height":30
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
                                 "width":205,
                                 "height":50,
                                 "x":70,
                                 "y":0,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Text,
                                    "id":"_MazeEventInfoPanel_Text13",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "y":0,
                                          "percentWidth":100,
                                          "percentHeight":100,
                                          "selectable":false
                                       };
                                    }
                                 })]
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
                        "width":275,
                        "height":50,
                        "x":290,
                        "y":340,
                        "styleName":"CanvasBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":70,
                                 "height":50,
                                 "x":0,
                                 "y":0,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_MazeEventInfoPanel_Image14",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":3,
                                          "width":45,
                                          "height":30
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
                                 "width":205,
                                 "height":50,
                                 "x":70,
                                 "y":0,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Text,
                                    "id":"_MazeEventInfoPanel_Text14",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "y":0,
                                          "percentWidth":100,
                                          "percentHeight":100,
                                          "selectable":false
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
      
      private var _core:Core = Core.getInstance();
      
      public function MazeEventInfoPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 580;
         this.height = 410;
         this.styleName = "StandardContent";
         this.cacheAsBitmap = true;
         this.addEventListener("creationComplete",___MazeEventInfoPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         MazeEventInfoPanel._watcherSetupUtil = param1;
      }
      
      private function _MazeEventInfoPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.MAZE_EVENT_INFO_PANEL_U[0];
         _loc1_ = ResManager.getIconUrl(3060100001196);
         _loc1_ = Language.MAZE_EVENT_INFO_PANEL_U[2];
         _loc1_ = ResManager.getIconUrl(3060100001193);
         _loc1_ = Language.MAZE_EVENT_INFO_PANEL_U[16];
         _loc1_ = ResManager.getIconUrl(3060100001189);
         _loc1_ = Language.MAZE_EVENT_INFO_PANEL_U[4];
         _loc1_ = ResManager.getIconUrl(3060100001192);
         _loc1_ = Language.MAZE_EVENT_INFO_PANEL_U[18];
         _loc1_ = ResManager.getIconUrl(3060100001191);
         _loc1_ = Language.MAZE_EVENT_INFO_PANEL_U[6];
         _loc1_ = ResManager.getIconUrl(3060100001194);
         _loc1_ = Language.MAZE_EVENT_INFO_PANEL_U[20];
         _loc1_ = ResManager.getIconUrl(3060100001195);
         _loc1_ = Language.MAZE_EVENT_INFO_PANEL_U[8];
         _loc1_ = ResManager.getIconUrl(3060100001197);
         _loc1_ = Language.MAZE_EVENT_INFO_PANEL_U[22];
         _loc1_ = ResManager.getIconUrl(3060100001190);
         _loc1_ = Language.MAZE_EVENT_INFO_PANEL_U[10];
         _loc1_ = ResManager.getIconUrl(3060100001198);
         _loc1_ = Language.MAZE_EVENT_INFO_PANEL_U[24];
         _loc1_ = ResManager.getIconUrl(3060100001199);
         _loc1_ = Language.MAZE_EVENT_INFO_PANEL_U[12];
         _loc1_ = ResManager.getIconUrl(3060100001200);
         _loc1_ = Language.MAZE_EVENT_INFO_PANEL_U[26];
         _loc1_ = ResManager.getIconUrl(3060100001187);
         _loc1_ = Language.MAZE_EVENT_INFO_PANEL_U[14];
         _loc1_ = ResManager.getIconUrl(3060100001188);
         _loc1_ = Language.MAZE_EVENT_INFO_PANEL_U[28];
      }
      
      public function showPanel() : void
      {
         this.visible = true;
      }
      
      private function _MazeEventInfoPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAZE_EVENT_INFO_PANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MazeEventInfoPanel_BasicTitleCanvas1.text = param1;
         },"_MazeEventInfoPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(3060100001196);
         },function(param1:Object):void
         {
            _MazeEventInfoPanel_Image1.source = param1;
         },"_MazeEventInfoPanel_Image1.source");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAZE_EVENT_INFO_PANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MazeEventInfoPanel_Text1.text = param1;
         },"_MazeEventInfoPanel_Text1.text");
         result[2] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(3060100001193);
         },function(param1:Object):void
         {
            _MazeEventInfoPanel_Image2.source = param1;
         },"_MazeEventInfoPanel_Image2.source");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAZE_EVENT_INFO_PANEL_U[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MazeEventInfoPanel_Text2.text = param1;
         },"_MazeEventInfoPanel_Text2.text");
         result[4] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(3060100001189);
         },function(param1:Object):void
         {
            _MazeEventInfoPanel_Image3.source = param1;
         },"_MazeEventInfoPanel_Image3.source");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAZE_EVENT_INFO_PANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MazeEventInfoPanel_Text3.text = param1;
         },"_MazeEventInfoPanel_Text3.text");
         result[6] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(3060100001192);
         },function(param1:Object):void
         {
            _MazeEventInfoPanel_Image4.source = param1;
         },"_MazeEventInfoPanel_Image4.source");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAZE_EVENT_INFO_PANEL_U[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MazeEventInfoPanel_Text4.text = param1;
         },"_MazeEventInfoPanel_Text4.text");
         result[8] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(3060100001191);
         },function(param1:Object):void
         {
            _MazeEventInfoPanel_Image5.source = param1;
         },"_MazeEventInfoPanel_Image5.source");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAZE_EVENT_INFO_PANEL_U[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MazeEventInfoPanel_Text5.text = param1;
         },"_MazeEventInfoPanel_Text5.text");
         result[10] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(3060100001194);
         },function(param1:Object):void
         {
            _MazeEventInfoPanel_Image6.source = param1;
         },"_MazeEventInfoPanel_Image6.source");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAZE_EVENT_INFO_PANEL_U[20];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MazeEventInfoPanel_Text6.text = param1;
         },"_MazeEventInfoPanel_Text6.text");
         result[12] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(3060100001195);
         },function(param1:Object):void
         {
            _MazeEventInfoPanel_Image7.source = param1;
         },"_MazeEventInfoPanel_Image7.source");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAZE_EVENT_INFO_PANEL_U[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MazeEventInfoPanel_Text7.text = param1;
         },"_MazeEventInfoPanel_Text7.text");
         result[14] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(3060100001197);
         },function(param1:Object):void
         {
            _MazeEventInfoPanel_Image8.source = param1;
         },"_MazeEventInfoPanel_Image8.source");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAZE_EVENT_INFO_PANEL_U[22];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MazeEventInfoPanel_Text8.text = param1;
         },"_MazeEventInfoPanel_Text8.text");
         result[16] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(3060100001190);
         },function(param1:Object):void
         {
            _MazeEventInfoPanel_Image9.source = param1;
         },"_MazeEventInfoPanel_Image9.source");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAZE_EVENT_INFO_PANEL_U[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MazeEventInfoPanel_Text9.text = param1;
         },"_MazeEventInfoPanel_Text9.text");
         result[18] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(3060100001198);
         },function(param1:Object):void
         {
            _MazeEventInfoPanel_Image10.source = param1;
         },"_MazeEventInfoPanel_Image10.source");
         result[19] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAZE_EVENT_INFO_PANEL_U[24];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MazeEventInfoPanel_Text10.text = param1;
         },"_MazeEventInfoPanel_Text10.text");
         result[20] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(3060100001199);
         },function(param1:Object):void
         {
            _MazeEventInfoPanel_Image11.source = param1;
         },"_MazeEventInfoPanel_Image11.source");
         result[21] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAZE_EVENT_INFO_PANEL_U[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MazeEventInfoPanel_Text11.text = param1;
         },"_MazeEventInfoPanel_Text11.text");
         result[22] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(3060100001200);
         },function(param1:Object):void
         {
            _MazeEventInfoPanel_Image12.source = param1;
         },"_MazeEventInfoPanel_Image12.source");
         result[23] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAZE_EVENT_INFO_PANEL_U[26];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MazeEventInfoPanel_Text12.text = param1;
         },"_MazeEventInfoPanel_Text12.text");
         result[24] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(3060100001187);
         },function(param1:Object):void
         {
            _MazeEventInfoPanel_Image13.source = param1;
         },"_MazeEventInfoPanel_Image13.source");
         result[25] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAZE_EVENT_INFO_PANEL_U[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MazeEventInfoPanel_Text13.text = param1;
         },"_MazeEventInfoPanel_Text13.text");
         result[26] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(3060100001188);
         },function(param1:Object):void
         {
            _MazeEventInfoPanel_Image14.source = param1;
         },"_MazeEventInfoPanel_Image14.source");
         result[27] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAZE_EVENT_INFO_PANEL_U[28];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MazeEventInfoPanel_Text14.text = param1;
         },"_MazeEventInfoPanel_Text14.text");
         result[28] = binding;
         return result;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:MazeEventInfoPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _MazeEventInfoPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_MazeEventInfoPanelWatcherSetupUtil");
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
      
      public function ___MazeEventInfoPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         initView();
      }
      
      override public function initView() : void
      {
      }
   }
}

