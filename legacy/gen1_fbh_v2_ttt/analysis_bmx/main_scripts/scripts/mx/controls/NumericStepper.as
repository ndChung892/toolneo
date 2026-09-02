package mx.controls
{
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextLineMetrics;
   import flash.ui.Keyboard;
   import mx.controls.listClasses.BaseListData;
   import mx.controls.listClasses.IDropInListItemRenderer;
   import mx.controls.listClasses.IListItemRenderer;
   import mx.core.FlexVersion;
   import mx.core.IDataRenderer;
   import mx.core.IIMESupport;
   import mx.core.UIComponent;
   import mx.core.UITextField;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.NumericStepperEvent;
   import mx.managers.IFocusManager;
   import mx.managers.IFocusManagerComponent;
   import mx.styles.StyleProxy;
   
   use namespace mx_internal;
   
   public class NumericStepper extends UIComponent implements IDataRenderer, IDropInListItemRenderer, IFocusManagerComponent, IIMESupport, IListItemRenderer
   {
      
      mx_internal static const VERSION:String = "3.0.0.0";
      
      private static var _downArrowStyleFilters:Object = {
         "cornerRadius":"cornerRadius",
         "highlightAlphas":"highlightAlphas",
         "downArrowUpSkin":"downArrowUpSkin",
         "downArrowOverSkin":"downArrowOverSkin",
         "downArrowDownSkin":"downArrowDownSkin",
         "downArrowDisabledSkin":"downArrowDisabledSkin",
         "downArrowSkin":"downArrowSkin",
         "repeatDelay":"repeatDelay",
         "repeatInterval":"repeatInterval"
      };
      
      private static var _inputFieldStyleFilters:Object = {
         "backgroundAlpha":"backgroundAlpha",
         "backgroundColor":"backgroundColor",
         "backgroundImage":"backgroundImage",
         "backgroundDisabledColor":"backgroundDisabledColor",
         "backgroundSize":"backgroundSize",
         "borderAlpha":"borderAlpha",
         "borderColor":"borderColor",
         "borderSides":"borderSides",
         "borderSkin":"borderSkin",
         "borderStyle":"borderStyle",
         "borderThickness":"borderThickness",
         "dropShadowColor":"dropShadowColor",
         "dropShadowEnabled":"dropShadowEnabled",
         "embedFonts":"embedFonts",
         "focusAlpha":"focusAlpha",
         "focusBlendMode":"focusBlendMode",
         "focusRoundedCorners":"focusRoundedCorners",
         "focusThickness":"focusThickness",
         "paddingLeft":"paddingLeft",
         "paddingRight":"paddingRight",
         "shadowDirection":"shadowDirection",
         "shadowDistance":"shadowDistance",
         "textDecoration":"textDecoration"
      };
      
      private static var _upArrowStyleFilters:Object = {
         "cornerRadius":"cornerRadius",
         "highlightAlphas":"highlightAlphas",
         "upArrowUpSkin":"upArrowUpSkin",
         "upArrowOverSkin":"upArrowOverSkin",
         "upArrowDownSkin":"upArrowDownSkin",
         "upArrowDisabledSkin":"upArrowDisabledSkin",
         "upArrowSkin":"upArrowSkin",
         "repeatDelay":"repeatDelay",
         "repeatInterval":"repeatInterval"
      };
      
      private var valueChanged:Boolean = false;
      
      mx_internal var nextButton:Button;
      
      private var valueSet:Boolean;
      
      private var enabledChanged:Boolean = false;
      
      mx_internal var prevButton:Button;
      
      private var _maxChars:int = 0;
      
      private var _stepSize:Number = 1;
      
      mx_internal var inputField:TextInput;
      
      private var _value:Number = 0;
      
      private var lastValue:Number = 0;
      
      private var _data:Object;
      
      private var maxCharsChanged:Boolean = false;
      
      private var _tabIndex:int = -1;
      
      private var proposedValue:Number = 0;
      
      private var tabIndexChanged:Boolean = false;
      
      private var _previousValue:Number = 0;
      
      private var _nextValue:Number = 0;
      
      private var _imeMode:String = null;
      
      private var _listData:BaseListData;
      
      private var _minimum:Number = 0;
      
      private var _maximum:Number = 10;
      
      public function NumericStepper()
      {
         super();
         tabChildren = true;
      }
      
      public function get imeMode() : String
      {
         return _imeMode;
      }
      
      public function set imeMode(param1:String) : void
      {
         _imeMode = param1;
         if(inputField)
         {
            inputField.imeMode = _imeMode;
         }
      }
      
      [Bindable("minimumChanged")]
      public function get minimum() : Number
      {
         return _minimum;
      }
      
      override protected function focusOutHandler(param1:FocusEvent) : void
      {
         var _loc2_:IFocusManager = focusManager;
         if(_loc2_)
         {
            _loc2_.defaultButtonEnabled = true;
         }
         super.focusOutHandler(param1);
         takeValueFromTextField(param1);
      }
      
      private function checkRange(param1:Number) : Boolean
      {
         return param1 >= minimum && param1 <= maximum;
      }
      
      override protected function createChildren() : void
      {
         super.createChildren();
         if(!inputField)
         {
            inputField = new TextInput();
            inputField.styleName = new StyleProxy(this,inputFieldStyleFilters);
            inputField.focusEnabled = false;
            inputField.restrict = "0-9\\-\\.\\,";
            inputField.maxChars = _maxChars;
            inputField.text = String(_value);
            inputField.parentDrawsFocus = true;
            inputField.imeMode = _imeMode;
            inputField.addEventListener(FocusEvent.FOCUS_IN,inputField_focusInHandler);
            inputField.addEventListener(FocusEvent.FOCUS_OUT,inputField_focusOutHandler);
            inputField.addEventListener(KeyboardEvent.KEY_DOWN,inputField_keyDownHandler);
            inputField.addEventListener(Event.CHANGE,inputField_changeHandler);
            addChild(inputField);
         }
         if(!nextButton)
         {
            nextButton = new Button();
            nextButton.styleName = new StyleProxy(this,upArrowStyleFilters);
            nextButton.upSkinName = "upArrowUpSkin";
            nextButton.overSkinName = "upArrowOverSkin";
            nextButton.downSkinName = "upArrowDownSkin";
            nextButton.disabledSkinName = "upArrowDisabledSkin";
            nextButton.skinName = "upArrowSkin";
            nextButton.upIconName = "";
            nextButton.overIconName = "";
            nextButton.downIconName = "";
            nextButton.disabledIconName = "";
            nextButton.focusEnabled = false;
            nextButton.autoRepeat = true;
            nextButton.addEventListener(MouseEvent.CLICK,buttonClickHandler);
            nextButton.addEventListener(FlexEvent.BUTTON_DOWN,buttonDownHandler);
            addChild(nextButton);
         }
         if(!prevButton)
         {
            prevButton = new Button();
            prevButton.styleName = new StyleProxy(this,downArrowStyleFilters);
            prevButton.upSkinName = "downArrowUpSkin";
            prevButton.overSkinName = "downArrowOverSkin";
            prevButton.downSkinName = "downArrowDownSkin";
            prevButton.disabledSkinName = "downArrowDisabledSkin";
            prevButton.skinName = "downArrowSkin";
            prevButton.upIconName = "";
            prevButton.overIconName = "";
            prevButton.downIconName = "";
            prevButton.disabledIconName = "";
            prevButton.focusEnabled = false;
            prevButton.autoRepeat = true;
            prevButton.addEventListener(MouseEvent.CLICK,buttonClickHandler);
            prevButton.addEventListener(FlexEvent.BUTTON_DOWN,buttonDownHandler);
            addChild(prevButton);
         }
      }
      
      public function set minimum(param1:Number) : void
      {
         _minimum = param1;
         if(!valueChanged)
         {
            this.value = this.value;
            valueSet = false;
         }
         dispatchEvent(new Event("minimumChanged"));
      }
      
      [Bindable("maximumChanged")]
      public function get maximum() : Number
      {
         return _maximum;
      }
      
      private function inputField_focusOutHandler(param1:FocusEvent) : void
      {
         focusOutHandler(param1);
         dispatchEvent(new FocusEvent(param1.type,false,false,param1.relatedObject,param1.shiftKey,param1.keyCode));
      }
      
      private function setValue(param1:Number, param2:Boolean = true, param3:Event = null) : void
      {
         var _loc5_:NumericStepperEvent = null;
         var _loc4_:Number = checkValidValue(param1);
         if(_loc4_ == lastValue)
         {
            return;
         }
         lastValue = _value = _loc4_;
         inputField.text = _loc4_.toString();
         if(param2)
         {
            _loc5_ = new NumericStepperEvent(NumericStepperEvent.CHANGE);
            _loc5_.value = _value;
            _loc5_.triggerEvent = param3;
            dispatchEvent(_loc5_);
         }
         dispatchEvent(new FlexEvent(FlexEvent.VALUE_COMMIT));
      }
      
      protected function get downArrowStyleFilters() : Object
      {
         return _downArrowStyleFilters;
      }
      
      private function takeValueFromTextField(param1:Event = null) : void
      {
         var _loc3_:Number = NaN;
         var _loc2_:Number = Number(inputField.text);
         if(_loc2_ != lastValue && (Math.abs(_loc2_ - lastValue) >= 0.000001 || isNaN(_loc2_)) || inputField.text == "")
         {
            _loc3_ = checkValidValue(Number(inputField.text));
            inputField.text = _loc3_.toString();
            setValue(_loc3_,param1 != null,param1);
         }
      }
      
      private function inputField_focusInHandler(param1:FocusEvent) : void
      {
         focusInHandler(param1);
         dispatchEvent(new FocusEvent(param1.type,false,false,param1.relatedObject,param1.shiftKey,param1.keyCode));
      }
      
      override public function get tabIndex() : int
      {
         return _tabIndex;
      }
      
      public function get nextValue() : Number
      {
         if(checkRange(value + stepSize))
         {
            _nextValue = value + stepSize;
         }
         return _nextValue;
      }
      
      public function set maximum(param1:Number) : void
      {
         _maximum = param1;
         if(!valueChanged)
         {
            this.value = this.value;
            valueSet = false;
         }
         dispatchEvent(new Event("maximumChanged"));
      }
      
      override public function get enabled() : Boolean
      {
         return super.enabled;
      }
      
      override protected function isOurFocus(param1:DisplayObject) : Boolean
      {
         return param1 == inputField || Boolean(super.isOurFocus(param1));
      }
      
      private function buttonPress(param1:Button, param2:Event = null) : void
      {
         var _loc3_:Number = NaN;
         if(enabled)
         {
            takeValueFromTextField();
            _loc3_ = lastValue;
            setValue(param1 == nextButton ? lastValue + stepSize : lastValue - stepSize,true,param2);
            if(_loc3_ != lastValue)
            {
               inputField.getTextField().setSelection(0,0);
            }
         }
      }
      
      public function set data(param1:Object) : void
      {
         _data = param1;
         if(!valueSet)
         {
            this.value = _listData ? parseFloat(_listData.label) : Number(_data);
            valueSet = false;
         }
         dispatchEvent(new FlexEvent(FlexEvent.DATA_CHANGE));
      }
      
      protected function get upArrowStyleFilters() : Object
      {
         return _upArrowStyleFilters;
      }
      
      private function inputField_keyDownHandler(param1:KeyboardEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         switch(param1.keyCode)
         {
            case Keyboard.DOWN:
               _loc2_ = value - stepSize;
               setValue(_loc2_,true);
               break;
            case Keyboard.UP:
               _loc2_ = stepSize + value;
               setValue(_loc2_,true);
               break;
            case Keyboard.HOME:
               inputField.text = minimum.toString();
               setValue(minimum,true);
               break;
            case Keyboard.END:
               inputField.text = maximum.toString();
               setValue(maximum,true);
               break;
            case Keyboard.ENTER:
            case Keyboard.TAB:
               _loc3_ = Number(inputField.text);
               if(_loc3_ != lastValue && (Math.abs(_loc3_ - lastValue) >= 0.000001 || isNaN(_loc3_)))
               {
                  _loc4_ = checkValidValue(Number(inputField.text));
                  inputField.text = _loc4_.toString();
                  setValue(_loc4_,true);
               }
               param1.stopImmediatePropagation();
         }
         dispatchEvent(param1);
      }
      
      override protected function measure() : void
      {
         var _loc5_:Number = NaN;
         var _loc8_:Number = NaN;
         super.measure();
         var _loc1_:Number = minimum.toString().length > maximum.toString().length ? minimum : maximum;
         _loc1_ += stepSize;
         var _loc2_:TextLineMetrics = measureText(_loc1_.toString());
         var _loc3_:Number = inputField.getExplicitOrMeasuredHeight();
         var _loc4_:Number = prevButton.getExplicitOrMeasuredHeight() + nextButton.getExplicitOrMeasuredHeight();
         _loc5_ = Math.max(_loc3_,_loc4_);
         _loc5_ = Math.max(DEFAULT_MEASURED_MIN_HEIGHT,_loc5_);
         var _loc6_:Number = _loc2_.width + UITextField.TEXT_WIDTH_PADDING;
         var _loc7_:Number = Math.max(prevButton.getExplicitOrMeasuredWidth(),nextButton.getExplicitOrMeasuredWidth());
         _loc8_ = _loc6_ + _loc7_ + 20;
         _loc8_ = Math.max(DEFAULT_MEASURED_MIN_WIDTH,_loc8_);
         measuredMinWidth = DEFAULT_MEASURED_MIN_WIDTH;
         measuredMinHeight = DEFAULT_MEASURED_MIN_HEIGHT;
         measuredWidth = _loc8_;
         measuredHeight = _loc5_;
      }
      
      [Bindable("dataChange")]
      public function get listData() : BaseListData
      {
         return _listData;
      }
      
      override protected function focusInHandler(param1:FocusEvent) : void
      {
         super.focusInHandler(param1);
         var _loc2_:IFocusManager = focusManager;
         if(_loc2_)
         {
            _loc2_.defaultButtonEnabled = false;
         }
      }
      
      [Bindable("valueCommit")]
      [Bindable("change")]
      public function get value() : Number
      {
         return valueChanged ? proposedValue : _value;
      }
      
      protected function get inputFieldStyleFilters() : Object
      {
         return _inputFieldStyleFilters;
      }
      
      override public function set tabIndex(param1:int) : void
      {
         if(param1 == _tabIndex)
         {
            return;
         }
         _tabIndex = param1;
         tabIndexChanged = true;
         invalidateProperties();
      }
      
      override public function set enabled(param1:Boolean) : void
      {
         super.enabled = param1;
         enabledChanged = true;
         invalidateProperties();
      }
      
      override public function get baselinePosition() : Number
      {
         if(FlexVersion.compatibilityVersion < FlexVersion.VERSION_3_0)
         {
            return inputField ? inputField.baselinePosition : NaN;
         }
         if(!validateBaselinePosition())
         {
            return NaN;
         }
         return inputField.y + inputField.baselinePosition;
      }
      
      override public function setFocus() : void
      {
         if(stage)
         {
            stage.focus = TextField(inputField.getTextField());
         }
      }
      
      [Bindable("dataChange")]
      public function get data() : Object
      {
         if(!_listData)
         {
            data = this.value;
         }
         return _data;
      }
      
      public function set maxChars(param1:int) : void
      {
         if(param1 == _maxChars)
         {
            return;
         }
         _maxChars = param1;
         maxCharsChanged = true;
         invalidateProperties();
         dispatchEvent(new Event("maxCharsChanged"));
      }
      
      private function buttonDownHandler(param1:FlexEvent) : void
      {
         buttonPress(Button(param1.currentTarget),param1);
      }
      
      public function get previousValue() : Number
      {
         if(checkRange(_value - stepSize))
         {
            _previousValue = value - stepSize;
         }
         return _previousValue;
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(maxCharsChanged)
         {
            maxCharsChanged = false;
            inputField.maxChars = _maxChars;
         }
         if(valueChanged)
         {
            valueChanged = false;
            setValue(isNaN(proposedValue) ? 0 : proposedValue,false);
         }
         if(enabledChanged)
         {
            enabledChanged = false;
            prevButton.enabled = enabled;
            nextButton.enabled = enabled;
            inputField.enabled = enabled;
         }
         if(tabIndexChanged)
         {
            inputField.tabIndex = _tabIndex;
            tabIndexChanged = false;
         }
      }
      
      private function inputField_changeHandler(param1:Event) : void
      {
         param1.stopImmediatePropagation();
         var _loc2_:Number = Number(inputField.text);
         if(_loc2_ != value && (Math.abs(_loc2_ - value) >= 0.000001 || isNaN(_loc2_)) || inputField.text == "")
         {
            _value = checkValidValue(_loc2_);
         }
      }
      
      public function set listData(param1:BaseListData) : void
      {
         _listData = param1;
      }
      
      [Bindable("maxCharsChanged")]
      public function get maxChars() : int
      {
         return _maxChars;
      }
      
      public function set stepSize(param1:Number) : void
      {
         _stepSize = param1;
         if(!valueChanged)
         {
            this.value = this.value;
            valueSet = false;
         }
         dispatchEvent(new Event("stepSizeChanged"));
      }
      
      public function set value(param1:Number) : void
      {
         valueSet = true;
         proposedValue = param1;
         valueChanged = true;
         invalidateProperties();
         invalidateSize();
      }
      
      [Bindable("stepSizeChanged")]
      public function get stepSize() : Number
      {
         return _stepSize;
      }
      
      private function buttonClickHandler(param1:MouseEvent) : void
      {
         inputField.setFocus();
         inputField.getTextField().setSelection(0,0);
      }
      
      override protected function updateDisplayList(param1:Number, param2:Number) : void
      {
         super.updateDisplayList(param1,param2);
         var _loc3_:Number = nextButton.getExplicitOrMeasuredWidth();
         var _loc4_:Number = Math.round(param2 / 2);
         var _loc5_:Number = param2 - _loc4_;
         nextButton.x = param1 - _loc3_;
         nextButton.y = 0;
         nextButton.setActualSize(_loc3_,_loc5_);
         prevButton.x = param1 - _loc3_;
         prevButton.y = param2 - _loc4_;
         prevButton.setActualSize(_loc3_,_loc4_);
         inputField.setActualSize(param1 - _loc3_,param2);
      }
      
      private function checkValidValue(param1:Number) : Number
      {
         var _loc4_:Number = NaN;
         if(isNaN(param1))
         {
            return this.value;
         }
         var _loc2_:Number = stepSize * Math.round(param1 / stepSize);
         var _loc3_:Array = new String(1 + stepSize).split(".");
         if(_loc3_.length == 2)
         {
            _loc4_ = Math.pow(10,_loc3_[1].length);
            _loc2_ = Math.round(_loc2_ * _loc4_) / _loc4_;
         }
         if(_loc2_ > maximum)
         {
            return maximum;
         }
         if(_loc2_ < minimum)
         {
            return minimum;
         }
         return _loc2_;
      }
   }
}

