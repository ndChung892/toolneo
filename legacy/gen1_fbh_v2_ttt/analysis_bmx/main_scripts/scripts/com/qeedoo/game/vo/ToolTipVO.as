package com.qeedoo.game.vo
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import mx.events.PropertyChangeEvent;
   
   public class ToolTipVO implements IEventDispatcher
   {
      
      private var _993674992propSuit:String;
      
      private var _1786820714genMCost:String;
      
      private var _755439989propBasic:String;
      
      private var _3062044cre2:int;
      
      private var _2125731805priceType:String;
      
      private var _994192832propBind:String;
      
      private var _1611566147customize:String;
      
      private var _1411922449bProp4:String;
      
      private var _2043719706activeLine:String;
      
      private var _1411922452bProp1:String;
      
      private var _815592395targetNum:String;
      
      private var _1005290219currencyType:int;
      
      private var _575402001currency:Number;
      
      private var _2043958003activeTime:String;
      
      private var _1306045074preSkill:String;
      
      private var _1869749240maintainCost:String;
      
      private var _108401031reqCL:String;
      
      private var _204474875activeNPC:String;
      
      private var _1894776345clsJewel2:Class;
      
      private var _103659588maker:String;
      
      private var _1407588379costVisible:Boolean;
      
      private var _439241862reqClass:String;
      
      private var _756288675propAdded:String;
      
      private var _1310369910expCost:String;
      
      private var _1178238231clsStar3:Class;
      
      private var _3062043cre1:int;
      
      private var _1178238233clsStar5:Class;
      
      private var _1178238235clsStar7:Class;
      
      private var _3062047cre5:int;
      
      private var _1178238237clsStar9:Class;
      
      private var _3237038info:String;
      
      private var _1714035539moneyCost:String;
      
      private var _934532241reqEnv:String;
      
      private var _1298740563endure:String;
      
      private var _102865796level:String;
      
      private var _1454910359currentPoint:String;
      
      private var _1894776347clsJewel4:Class;
      
      private var _1576501672rareMCost:String;
      
      private var _441785000equSkill0:String;
      
      private var _1894776351clsJewel8:Class;
      
      private var _1249743735effectEndTime:String;
      
      private var _431118970reqLevel:String;
      
      private var _664016577propFeatherPet:String;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      private var _1511253621activeEquipName:String;
      
      private var _2129320517clsStar10:Class;
      
      private var _1894776349clsJewel6:Class;
      
      private var _722769290btnVisible:Boolean;
      
      private var _1411922451bProp2:String;
      
      private var _3575610type:String;
      
      private var _106934601price:String;
      
      private var _3062046cre4:int;
      
      private var _747804969position:String;
      
      private var _1306563286guildExp:String;
      
      private var _170514808urlIcon:String;
      
      private var _1715818494effectTime:String;
      
      private var _3023933bind:String;
      
      private var _1249801634lwingName:String;
      
      private var _1469746035guildMoney:String;
      
      private var _1894776344clsJewel1:Class;
      
      private var _1724546052description:String;
      
      private var _747928928propJewel:String;
      
      private var _762141852dexProgress:String;
      
      private var _9888733className:String;
      
      private var _3292052kind:String;
      
      private var _267844315magicWeaponLevel:String;
      
      private var _1178238229clsStar1:Class;
      
      private var _1984815176preBuilds:Array;
      
      private var _993680394propSoul:String;
      
      private var _1952114124expSkill:String;
      
      private var _1662836996element:String;
      
      private var _148001439useType:String;
      
      private var _96805apt:String;
      
      private var _3373707name:String;
      
      private var _1178238232clsStar4:Class;
      
      private var _1178238230clsStar2:Class;
      
      private var _1178238234clsStar6:Class;
      
      private var _1178238236clsStar8:Class;
      
      private var _3062045cre3:int;
      
      private var _1894776346clsJewel3:Class;
      
      private var _1894776350clsJewel7:Class;
      
      private var _951516156consume:String;
      
      private var _1391475432clsJewel10:Class;
      
      private var _889937718propFeatherChar:String;
      
      private var _1470959791guildLevel:String;
      
      private var _1411922450bProp3:String;
      
      private var _1894776348clsJewel5:Class;
      
      private var _1894776352clsJewel9:Class;
      
      private var _333642022guildContrib:String;
      
      public function ToolTipVO()
      {
         super();
      }
      
      [Bindable(event="propertyChange")]
      public function get activeNPC() : String
      {
         return this._204474875activeNPC;
      }
      
      public function set activeNPC(param1:String) : void
      {
         var _loc2_:Object = this._204474875activeNPC;
         if(_loc2_ !== param1)
         {
            this._204474875activeNPC = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"activeNPC",_loc2_,param1));
         }
      }
      
      public function set consume(param1:String) : void
      {
         var _loc2_:Object = this._951516156consume;
         if(_loc2_ !== param1)
         {
            this._951516156consume = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"consume",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get consume() : String
      {
         return this._951516156consume;
      }
      
      [Bindable(event="propertyChange")]
      public function get maintainCost() : String
      {
         return this._1869749240maintainCost;
      }
      
      [Bindable(event="propertyChange")]
      public function get costVisible() : Boolean
      {
         return this._1407588379costVisible;
      }
      
      [Bindable(event="propertyChange")]
      public function get currency() : Number
      {
         return this._575402001currency;
      }
      
      [Bindable(event="propertyChange")]
      public function get clsJewel2() : Class
      {
         return this._1894776345clsJewel2;
      }
      
      [Bindable(event="propertyChange")]
      public function get clsJewel4() : Class
      {
         return this._1894776347clsJewel4;
      }
      
      [Bindable(event="propertyChange")]
      public function get clsJewel5() : Class
      {
         return this._1894776348clsJewel5;
      }
      
      [Bindable(event="propertyChange")]
      public function get clsJewel6() : Class
      {
         return this._1894776349clsJewel6;
      }
      
      [Bindable(event="propertyChange")]
      public function get clsJewel7() : Class
      {
         return this._1894776350clsJewel7;
      }
      
      [Bindable(event="propertyChange")]
      public function get clsJewel1() : Class
      {
         return this._1894776344clsJewel1;
      }
      
      [Bindable(event="propertyChange")]
      public function get clsJewel3() : Class
      {
         return this._1894776346clsJewel3;
      }
      
      [Bindable(event="propertyChange")]
      public function get className() : String
      {
         return this._9888733className;
      }
      
      [Bindable(event="propertyChange")]
      public function get apt() : String
      {
         return this._96805apt;
      }
      
      public function set clsStar1(param1:Class) : void
      {
         var _loc2_:Object = this._1178238229clsStar1;
         if(_loc2_ !== param1)
         {
            this._1178238229clsStar1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"clsStar1",_loc2_,param1));
         }
      }
      
      public function set clsStar2(param1:Class) : void
      {
         var _loc2_:Object = this._1178238230clsStar2;
         if(_loc2_ !== param1)
         {
            this._1178238230clsStar2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"clsStar2",_loc2_,param1));
         }
      }
      
      public function set clsStar3(param1:Class) : void
      {
         var _loc2_:Object = this._1178238231clsStar3;
         if(_loc2_ !== param1)
         {
            this._1178238231clsStar3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"clsStar3",_loc2_,param1));
         }
      }
      
      public function set clsStar5(param1:Class) : void
      {
         var _loc2_:Object = this._1178238233clsStar5;
         if(_loc2_ !== param1)
         {
            this._1178238233clsStar5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"clsStar5",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get targetNum() : String
      {
         return this._815592395targetNum;
      }
      
      public function set clsStar7(param1:Class) : void
      {
         var _loc2_:Object = this._1178238235clsStar7;
         if(_loc2_ !== param1)
         {
            this._1178238235clsStar7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"clsStar7",_loc2_,param1));
         }
      }
      
      public function set clsStar4(param1:Class) : void
      {
         var _loc2_:Object = this._1178238232clsStar4;
         if(_loc2_ !== param1)
         {
            this._1178238232clsStar4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"clsStar4",_loc2_,param1));
         }
      }
      
      public function set clsStar8(param1:Class) : void
      {
         var _loc2_:Object = this._1178238236clsStar8;
         if(_loc2_ !== param1)
         {
            this._1178238236clsStar8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"clsStar8",_loc2_,param1));
         }
      }
      
      public function set clsJewel2(param1:Class) : void
      {
         var _loc2_:Object = this._1894776345clsJewel2;
         if(_loc2_ !== param1)
         {
            this._1894776345clsJewel2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"clsJewel2",_loc2_,param1));
         }
      }
      
      public function set currency(param1:Number) : void
      {
         var _loc2_:Object = this._575402001currency;
         if(_loc2_ !== param1)
         {
            this._575402001currency = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currency",_loc2_,param1));
         }
      }
      
      public function set clsJewel7(param1:Class) : void
      {
         var _loc2_:Object = this._1894776350clsJewel7;
         if(_loc2_ !== param1)
         {
            this._1894776350clsJewel7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"clsJewel7",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bind() : String
      {
         return this._3023933bind;
      }
      
      public function set clsJewel8(param1:Class) : void
      {
         var _loc2_:Object = this._1894776351clsJewel8;
         if(_loc2_ !== param1)
         {
            this._1894776351clsJewel8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"clsJewel8",_loc2_,param1));
         }
      }
      
      public function set clsJewel1(param1:Class) : void
      {
         var _loc2_:Object = this._1894776344clsJewel1;
         if(_loc2_ !== param1)
         {
            this._1894776344clsJewel1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"clsJewel1",_loc2_,param1));
         }
      }
      
      public function set clsStar9(param1:Class) : void
      {
         var _loc2_:Object = this._1178238237clsStar9;
         if(_loc2_ !== param1)
         {
            this._1178238237clsStar9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"clsStar9",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get clsJewel9() : Class
      {
         return this._1894776352clsJewel9;
      }
      
      [Bindable(event="propertyChange")]
      public function get expSkill() : String
      {
         return this._1952114124expSkill;
      }
      
      public function set clsJewel4(param1:Class) : void
      {
         var _loc2_:Object = this._1894776347clsJewel4;
         if(_loc2_ !== param1)
         {
            this._1894776347clsJewel4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"clsJewel4",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get propBind() : String
      {
         return this._994192832propBind;
      }
      
      public function set clsJewel6(param1:Class) : void
      {
         var _loc2_:Object = this._1894776349clsJewel6;
         if(_loc2_ !== param1)
         {
            this._1894776349clsJewel6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"clsJewel6",_loc2_,param1));
         }
      }
      
      public function set apt(param1:String) : void
      {
         var _loc2_:Object = this._96805apt;
         if(_loc2_ !== param1)
         {
            this._96805apt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"apt",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get maker() : String
      {
         return this._103659588maker;
      }
      
      public function set guildContrib(param1:String) : void
      {
         var _loc2_:Object = this._333642022guildContrib;
         if(_loc2_ !== param1)
         {
            this._333642022guildContrib = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"guildContrib",_loc2_,param1));
         }
      }
      
      public function set className(param1:String) : void
      {
         var _loc2_:Object = this._9888733className;
         if(_loc2_ !== param1)
         {
            this._9888733className = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"className",_loc2_,param1));
         }
      }
      
      public function set cre1(param1:int) : void
      {
         var _loc2_:Object = this._3062043cre1;
         if(_loc2_ !== param1)
         {
            this._3062043cre1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cre1",_loc2_,param1));
         }
      }
      
      public function set clsJewel9(param1:Class) : void
      {
         var _loc2_:Object = this._1894776352clsJewel9;
         if(_loc2_ !== param1)
         {
            this._1894776352clsJewel9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"clsJewel9",_loc2_,param1));
         }
      }
      
      public function set clsJewel5(param1:Class) : void
      {
         var _loc2_:Object = this._1894776348clsJewel5;
         if(_loc2_ !== param1)
         {
            this._1894776348clsJewel5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"clsJewel5",_loc2_,param1));
         }
      }
      
      public function set position(param1:String) : void
      {
         var _loc2_:Object = this._747804969position;
         if(_loc2_ !== param1)
         {
            this._747804969position = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"position",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get activeLine() : String
      {
         return this._2043719706activeLine;
      }
      
      public function set guildExp(param1:String) : void
      {
         var _loc2_:Object = this._1306563286guildExp;
         if(_loc2_ !== param1)
         {
            this._1306563286guildExp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"guildExp",_loc2_,param1));
         }
      }
      
      public function set priceType(param1:String) : void
      {
         var _loc2_:Object = this._2125731805priceType;
         if(_loc2_ !== param1)
         {
            this._2125731805priceType = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"priceType",_loc2_,param1));
         }
      }
      
      public function set clsStar6(param1:Class) : void
      {
         var _loc2_:Object = this._1178238234clsStar6;
         if(_loc2_ !== param1)
         {
            this._1178238234clsStar6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"clsStar6",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get clsJewel8() : Class
      {
         return this._1894776351clsJewel8;
      }
      
      public function set propSuit(param1:String) : void
      {
         var _loc2_:Object = this._993674992propSuit;
         if(_loc2_ !== param1)
         {
            this._993674992propSuit = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"propSuit",_loc2_,param1));
         }
      }
      
      public function set cre2(param1:int) : void
      {
         var _loc2_:Object = this._3062044cre2;
         if(_loc2_ !== param1)
         {
            this._3062044cre2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cre2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get customize() : String
      {
         return this._1611566147customize;
      }
      
      public function set cre3(param1:int) : void
      {
         var _loc2_:Object = this._3062045cre3;
         if(_loc2_ !== param1)
         {
            this._3062045cre3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cre3",_loc2_,param1));
         }
      }
      
      public function set clsJewel10(param1:Class) : void
      {
         var _loc2_:Object = this._1391475432clsJewel10;
         if(_loc2_ !== param1)
         {
            this._1391475432clsJewel10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"clsJewel10",_loc2_,param1));
         }
      }
      
      public function set clsJewel3(param1:Class) : void
      {
         var _loc2_:Object = this._1894776346clsJewel3;
         if(_loc2_ !== param1)
         {
            this._1894776346clsJewel3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"clsJewel3",_loc2_,param1));
         }
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(param1,param2,param3,param4,param5);
      }
      
      [Bindable(event="propertyChange")]
      public function get rareMCost() : String
      {
         return this._1576501672rareMCost;
      }
      
      public function set cre4(param1:int) : void
      {
         var _loc2_:Object = this._3062046cre4;
         if(_loc2_ !== param1)
         {
            this._3062046cre4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cre4",_loc2_,param1));
         }
      }
      
      public function set cre5(param1:int) : void
      {
         var _loc2_:Object = this._3062047cre5;
         if(_loc2_ !== param1)
         {
            this._3062047cre5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cre5",_loc2_,param1));
         }
      }
      
      public function set propFeatherChar(param1:String) : void
      {
         var _loc2_:Object = this._889937718propFeatherChar;
         if(_loc2_ !== param1)
         {
            this._889937718propFeatherChar = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"propFeatherChar",_loc2_,param1));
         }
      }
      
      public function set activeLine(param1:String) : void
      {
         var _loc2_:Object = this._2043719706activeLine;
         if(_loc2_ !== param1)
         {
            this._2043719706activeLine = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"activeLine",_loc2_,param1));
         }
      }
      
      public function set expSkill(param1:String) : void
      {
         var _loc2_:Object = this._1952114124expSkill;
         if(_loc2_ !== param1)
         {
            this._1952114124expSkill = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"expSkill",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get activeEquipName() : String
      {
         return this._1511253621activeEquipName;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnVisible() : Boolean
      {
         return this._722769290btnVisible;
      }
      
      public function set targetNum(param1:String) : void
      {
         var _loc2_:Object = this._815592395targetNum;
         if(_loc2_ !== param1)
         {
            this._815592395targetNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"targetNum",_loc2_,param1));
         }
      }
      
      public function set propBind(param1:String) : void
      {
         var _loc2_:Object = this._994192832propBind;
         if(_loc2_ !== param1)
         {
            this._994192832propBind = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"propBind",_loc2_,param1));
         }
      }
      
      public function set type(param1:String) : void
      {
         var _loc2_:Object = this._3575610type;
         if(_loc2_ !== param1)
         {
            this._3575610type = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"type",_loc2_,param1));
         }
      }
      
      public function set propFeatherPet(param1:String) : void
      {
         var _loc2_:Object = this._664016577propFeatherPet;
         if(_loc2_ !== param1)
         {
            this._664016577propFeatherPet = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"propFeatherPet",_loc2_,param1));
         }
      }
      
      public function set customize(param1:String) : void
      {
         var _loc2_:Object = this._1611566147customize;
         if(_loc2_ !== param1)
         {
            this._1611566147customize = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"customize",_loc2_,param1));
         }
      }
      
      public function set bind(param1:String) : void
      {
         var _loc2_:Object = this._3023933bind;
         if(_loc2_ !== param1)
         {
            this._3023933bind = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bind",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get name() : String
      {
         return this._3373707name;
      }
      
      [Bindable(event="propertyChange")]
      public function get guildMoney() : String
      {
         return this._1469746035guildMoney;
      }
      
      [Bindable(event="propertyChange")]
      public function get preBuilds() : Array
      {
         return this._1984815176preBuilds;
      }
      
      public function set maker(param1:String) : void
      {
         var _loc2_:Object = this._103659588maker;
         if(_loc2_ !== param1)
         {
            this._103659588maker = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"maker",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get urlIcon() : String
      {
         return this._170514808urlIcon;
      }
      
      public function set price(param1:String) : void
      {
         var _loc2_:Object = this._106934601price;
         if(_loc2_ !== param1)
         {
            this._106934601price = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"price",_loc2_,param1));
         }
      }
      
      public function set preBuilds(param1:Array) : void
      {
         var _loc2_:Object = this._1984815176preBuilds;
         if(_loc2_ !== param1)
         {
            this._1984815176preBuilds = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"preBuilds",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get propJewel() : String
      {
         return this._747928928propJewel;
      }
      
      public function set guildLevel(param1:String) : void
      {
         var _loc2_:Object = this._1470959791guildLevel;
         if(_loc2_ !== param1)
         {
            this._1470959791guildLevel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"guildLevel",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get priceType() : String
      {
         return this._2125731805priceType;
      }
      
      [Bindable(event="propertyChange")]
      public function get equSkill0() : String
      {
         return this._441785000equSkill0;
      }
      
      [Bindable(event="propertyChange")]
      public function get endure() : String
      {
         return this._1298740563endure;
      }
      
      [Bindable(event="propertyChange")]
      public function get genMCost() : String
      {
         return this._1786820714genMCost;
      }
      
      [Bindable(event="propertyChange")]
      public function get info() : String
      {
         return this._3237038info;
      }
      
      [Bindable(event="propertyChange")]
      public function get propBasic() : String
      {
         return this._755439989propBasic;
      }
      
      public function set effectTime(param1:String) : void
      {
         var _loc2_:Object = this._1715818494effectTime;
         if(_loc2_ !== param1)
         {
            this._1715818494effectTime = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effectTime",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get moneyCost() : String
      {
         return this._1714035539moneyCost;
      }
      
      public function set rareMCost(param1:String) : void
      {
         var _loc2_:Object = this._1576501672rareMCost;
         if(_loc2_ !== param1)
         {
            this._1576501672rareMCost = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rareMCost",_loc2_,param1));
         }
      }
      
      public function set useType(param1:String) : void
      {
         var _loc2_:Object = this._148001439useType;
         if(_loc2_ !== param1)
         {
            this._148001439useType = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"useType",_loc2_,param1));
         }
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(param1);
      }
      
      public function set dexProgress(param1:String) : void
      {
         var _loc2_:Object = this._762141852dexProgress;
         if(_loc2_ !== param1)
         {
            this._762141852dexProgress = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dexProgress",_loc2_,param1));
         }
      }
      
      public function set propAdded(param1:String) : void
      {
         var _loc2_:Object = this._756288675propAdded;
         if(_loc2_ !== param1)
         {
            this._756288675propAdded = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"propAdded",_loc2_,param1));
         }
      }
      
      public function set reqEnv(param1:String) : void
      {
         var _loc2_:Object = this._934532241reqEnv;
         if(_loc2_ !== param1)
         {
            this._934532241reqEnv = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"reqEnv",_loc2_,param1));
         }
      }
      
      public function set activeEquipName(param1:String) : void
      {
         var _loc2_:Object = this._1511253621activeEquipName;
         if(_loc2_ !== param1)
         {
            this._1511253621activeEquipName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"activeEquipName",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get currencyType() : int
      {
         return this._1005290219currencyType;
      }
      
      public function set genMCost(param1:String) : void
      {
         var _loc2_:Object = this._1786820714genMCost;
         if(_loc2_ !== param1)
         {
            this._1786820714genMCost = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"genMCost",_loc2_,param1));
         }
      }
      
      public function set reqClass(param1:String) : void
      {
         var _loc2_:Object = this._439241862reqClass;
         if(_loc2_ !== param1)
         {
            this._439241862reqClass = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"reqClass",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get element() : String
      {
         return this._1662836996element;
      }
      
      public function set preSkill(param1:String) : void
      {
         var _loc2_:Object = this._1306045074preSkill;
         if(_loc2_ !== param1)
         {
            this._1306045074preSkill = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"preSkill",_loc2_,param1));
         }
      }
      
      public function set reqLevel(param1:String) : void
      {
         var _loc2_:Object = this._431118970reqLevel;
         if(_loc2_ !== param1)
         {
            this._431118970reqLevel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"reqLevel",_loc2_,param1));
         }
      }
      
      public function set reqCL(param1:String) : void
      {
         var _loc2_:Object = this._108401031reqCL;
         if(_loc2_ !== param1)
         {
            this._108401031reqCL = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"reqCL",_loc2_,param1));
         }
      }
      
      public function set level(param1:String) : void
      {
         var _loc2_:Object = this._102865796level;
         if(_loc2_ !== param1)
         {
            this._102865796level = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"level",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get clsStar1() : Class
      {
         return this._1178238229clsStar1;
      }
      
      public function set name(param1:String) : void
      {
         var _loc2_:Object = this._3373707name;
         if(_loc2_ !== param1)
         {
            this._3373707name = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"name",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get clsStar5() : Class
      {
         return this._1178238233clsStar5;
      }
      
      public function set guildMoney(param1:String) : void
      {
         var _loc2_:Object = this._1469746035guildMoney;
         if(_loc2_ !== param1)
         {
            this._1469746035guildMoney = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"guildMoney",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get clsStar7() : Class
      {
         return this._1178238235clsStar7;
      }
      
      public function set propBasic(param1:String) : void
      {
         var _loc2_:Object = this._755439989propBasic;
         if(_loc2_ !== param1)
         {
            this._755439989propBasic = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"propBasic",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get clsStar3() : Class
      {
         return this._1178238231clsStar3;
      }
      
      public function set urlIcon(param1:String) : void
      {
         var _loc2_:Object = this._170514808urlIcon;
         if(_loc2_ !== param1)
         {
            this._170514808urlIcon = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"urlIcon",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get clsStar6() : Class
      {
         return this._1178238234clsStar6;
      }
      
      [Bindable(event="propertyChange")]
      public function get cre1() : int
      {
         return this._3062043cre1;
      }
      
      [Bindable(event="propertyChange")]
      public function get clsStar2() : Class
      {
         return this._1178238230clsStar2;
      }
      
      [Bindable(event="propertyChange")]
      public function get guildContrib() : String
      {
         return this._333642022guildContrib;
      }
      
      [Bindable(event="propertyChange")]
      public function get clsStar4() : Class
      {
         return this._1178238232clsStar4;
      }
      
      [Bindable(event="propertyChange")]
      public function get position() : String
      {
         return this._747804969position;
      }
      
      [Bindable(event="propertyChange")]
      public function get guildExp() : String
      {
         return this._1306563286guildExp;
      }
      
      [Bindable(event="propertyChange")]
      public function get cre4() : int
      {
         return this._3062046cre4;
      }
      
      public function set currentPoint(param1:String) : void
      {
         var _loc2_:Object = this._1454910359currentPoint;
         if(_loc2_ !== param1)
         {
            this._1454910359currentPoint = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currentPoint",_loc2_,param1));
         }
      }
      
      public function set btnVisible(param1:Boolean) : void
      {
         var _loc2_:Object = this._722769290btnVisible;
         if(_loc2_ !== param1)
         {
            this._722769290btnVisible = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnVisible",_loc2_,param1));
         }
      }
      
      public function set expCost(param1:String) : void
      {
         var _loc2_:Object = this._1310369910expCost;
         if(_loc2_ !== param1)
         {
            this._1310369910expCost = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"expCost",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get type() : String
      {
         return this._3575610type;
      }
      
      [Bindable(event="propertyChange")]
      public function get propSuit() : String
      {
         return this._993674992propSuit;
      }
      
      [Bindable(event="propertyChange")]
      public function get clsStar8() : Class
      {
         return this._1178238236clsStar8;
      }
      
      public function set kind(param1:String) : void
      {
         var _loc2_:Object = this._3292052kind;
         if(_loc2_ !== param1)
         {
            this._3292052kind = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"kind",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cre5() : int
      {
         return this._3062047cre5;
      }
      
      [Bindable(event="propertyChange")]
      public function get clsJewel10() : Class
      {
         return this._1391475432clsJewel10;
      }
      
      public function set propJewel(param1:String) : void
      {
         var _loc2_:Object = this._747928928propJewel;
         if(_loc2_ !== param1)
         {
            this._747928928propJewel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"propJewel",_loc2_,param1));
         }
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get price() : String
      {
         return this._106934601price;
      }
      
      [Bindable(event="propertyChange")]
      public function get magicWeaponLevel() : String
      {
         return this._267844315magicWeaponLevel;
      }
      
      public function set equSkill0(param1:String) : void
      {
         var _loc2_:Object = this._441785000equSkill0;
         if(_loc2_ !== param1)
         {
            this._441785000equSkill0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"equSkill0",_loc2_,param1));
         }
      }
      
      public function set lwingName(param1:String) : void
      {
         var _loc2_:Object = this._1249801634lwingName;
         if(_loc2_ !== param1)
         {
            this._1249801634lwingName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lwingName",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cre2() : int
      {
         return this._3062044cre2;
      }
      
      [Bindable(event="propertyChange")]
      public function get propFeatherPet() : String
      {
         return this._664016577propFeatherPet;
      }
      
      [Bindable(event="propertyChange")]
      public function get guildLevel() : String
      {
         return this._1470959791guildLevel;
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(param1,param2,param3);
      }
      
      [Bindable(event="propertyChange")]
      public function get propAdded() : String
      {
         return this._756288675propAdded;
      }
      
      [Bindable(event="propertyChange")]
      public function get useType() : String
      {
         return this._148001439useType;
      }
      
      public function set info(param1:String) : void
      {
         var _loc2_:Object = this._3237038info;
         if(_loc2_ !== param1)
         {
            this._3237038info = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"info",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get dexProgress() : String
      {
         return this._762141852dexProgress;
      }
      
      [Bindable(event="propertyChange")]
      public function get reqEnv() : String
      {
         return this._934532241reqEnv;
      }
      
      public function set endure(param1:String) : void
      {
         var _loc2_:Object = this._1298740563endure;
         if(_loc2_ !== param1)
         {
            this._1298740563endure = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"endure",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get reqClass() : String
      {
         return this._439241862reqClass;
      }
      
      [Bindable(event="propertyChange")]
      public function get clsStar9() : Class
      {
         return this._1178238237clsStar9;
      }
      
      public function set clsStar10(param1:Class) : void
      {
         var _loc2_:Object = this._2129320517clsStar10;
         if(_loc2_ !== param1)
         {
            this._2129320517clsStar10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"clsStar10",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get reqLevel() : String
      {
         return this._431118970reqLevel;
      }
      
      [Bindable(event="propertyChange")]
      public function get reqCL() : String
      {
         return this._108401031reqCL;
      }
      
      [Bindable(event="propertyChange")]
      public function get activeTime() : String
      {
         return this._2043958003activeTime;
      }
      
      [Bindable(event="propertyChange")]
      public function get level() : String
      {
         return this._102865796level;
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get effectEndTime() : String
      {
         return this._1249743735effectEndTime;
      }
      
      [Bindable(event="propertyChange")]
      public function get preSkill() : String
      {
         return this._1306045074preSkill;
      }
      
      [Bindable(event="propertyChange")]
      public function get expCost() : String
      {
         return this._1310369910expCost;
      }
      
      public function set moneyCost(param1:String) : void
      {
         var _loc2_:Object = this._1714035539moneyCost;
         if(_loc2_ !== param1)
         {
            this._1714035539moneyCost = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moneyCost",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get kind() : String
      {
         return this._3292052kind;
      }
      
      [Bindable(event="propertyChange")]
      public function get currentPoint() : String
      {
         return this._1454910359currentPoint;
      }
      
      [Bindable(event="propertyChange")]
      public function get propFeatherChar() : String
      {
         return this._889937718propFeatherChar;
      }
      
      [Bindable(event="propertyChange")]
      public function get lwingName() : String
      {
         return this._1249801634lwingName;
      }
      
      public function set effectEndTime(param1:String) : void
      {
         var _loc2_:Object = this._1249743735effectEndTime;
         if(_loc2_ !== param1)
         {
            this._1249743735effectEndTime = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effectEndTime",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cre3() : int
      {
         return this._3062045cre3;
      }
      
      public function set magicWeaponLevel(param1:String) : void
      {
         var _loc2_:Object = this._267844315magicWeaponLevel;
         if(_loc2_ !== param1)
         {
            this._267844315magicWeaponLevel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"magicWeaponLevel",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get clsStar10() : Class
      {
         return this._2129320517clsStar10;
      }
      
      public function set costVisible(param1:Boolean) : void
      {
         var _loc2_:Object = this._1407588379costVisible;
         if(_loc2_ !== param1)
         {
            this._1407588379costVisible = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"costVisible",_loc2_,param1));
         }
      }
      
      public function set currencyType(param1:int) : void
      {
         var _loc2_:Object = this._1005290219currencyType;
         if(_loc2_ !== param1)
         {
            this._1005290219currencyType = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currencyType",_loc2_,param1));
         }
      }
      
      public function set bProp3(param1:String) : void
      {
         var _loc2_:Object = this._1411922450bProp3;
         if(_loc2_ !== param1)
         {
            this._1411922450bProp3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bProp3",_loc2_,param1));
         }
      }
      
      public function set bProp4(param1:String) : void
      {
         var _loc2_:Object = this._1411922449bProp4;
         if(_loc2_ !== param1)
         {
            this._1411922449bProp4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bProp4",_loc2_,param1));
         }
      }
      
      public function set bProp1(param1:String) : void
      {
         var _loc2_:Object = this._1411922452bProp1;
         if(_loc2_ !== param1)
         {
            this._1411922452bProp1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bProp1",_loc2_,param1));
         }
      }
      
      public function set activeTime(param1:String) : void
      {
         var _loc2_:Object = this._2043958003activeTime;
         if(_loc2_ !== param1)
         {
            this._2043958003activeTime = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"activeTime",_loc2_,param1));
         }
      }
      
      public function set bProp2(param1:String) : void
      {
         var _loc2_:Object = this._1411922451bProp2;
         if(_loc2_ !== param1)
         {
            this._1411922451bProp2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bProp2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bProp2() : String
      {
         return this._1411922451bProp2;
      }
      
      [Bindable(event="propertyChange")]
      public function get bProp3() : String
      {
         return this._1411922450bProp3;
      }
      
      [Bindable(event="propertyChange")]
      public function get bProp4() : String
      {
         return this._1411922449bProp4;
      }
      
      public function set maintainCost(param1:String) : void
      {
         var _loc2_:Object = this._1869749240maintainCost;
         if(_loc2_ !== param1)
         {
            this._1869749240maintainCost = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"maintainCost",_loc2_,param1));
         }
      }
      
      public function set propSoul(param1:String) : void
      {
         var _loc2_:Object = this._993680394propSoul;
         if(_loc2_ !== param1)
         {
            this._993680394propSoul = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"propSoul",_loc2_,param1));
         }
      }
      
      public function set description(param1:String) : void
      {
         var _loc2_:Object = this._1724546052description;
         if(_loc2_ !== param1)
         {
            this._1724546052description = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"description",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bProp1() : String
      {
         return this._1411922452bProp1;
      }
      
      [Bindable(event="propertyChange")]
      public function get description() : String
      {
         return this._1724546052description;
      }
      
      [Bindable(event="propertyChange")]
      public function get propSoul() : String
      {
         return this._993680394propSoul;
      }
      
      [Bindable(event="propertyChange")]
      public function get effectTime() : String
      {
         return this._1715818494effectTime;
      }
      
      public function set element(param1:String) : void
      {
         var _loc2_:Object = this._1662836996element;
         if(_loc2_ !== param1)
         {
            this._1662836996element = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"element",_loc2_,param1));
         }
      }
   }
}

