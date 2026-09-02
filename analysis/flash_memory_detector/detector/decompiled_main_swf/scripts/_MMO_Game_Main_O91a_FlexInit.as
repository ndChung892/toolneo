package
{
   import flash.net.registerClassAlias;
   import mx.collections.ArrayCollection;
   import mx.collections.ArrayList;
   import mx.core.IFlexModuleFactory;
   import mx.core.mx_internal;
   import mx.effects.EffectManager;
   import mx.styles.StyleManager;
   import mx.utils.ObjectProxy;
   
   public class _MMO_Game_Main_O91a_FlexInit
   {
      
      public function _MMO_Game_Main_O91a_FlexInit()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         EffectManager.mx_internal::registerEffectTrigger("addedEffect","added");
         EffectManager.mx_internal::registerEffectTrigger("completeEffect","complete");
         EffectManager.mx_internal::registerEffectTrigger("creationCompleteEffect","creationComplete");
         EffectManager.mx_internal::registerEffectTrigger("focusInEffect","focusIn");
         EffectManager.mx_internal::registerEffectTrigger("focusOutEffect","focusOut");
         EffectManager.mx_internal::registerEffectTrigger("hideEffect","hide");
         EffectManager.mx_internal::registerEffectTrigger("itemsChangeEffect","itemsChange");
         EffectManager.mx_internal::registerEffectTrigger("mouseDownEffect","mouseDown");
         EffectManager.mx_internal::registerEffectTrigger("mouseUpEffect","mouseUp");
         EffectManager.mx_internal::registerEffectTrigger("moveEffect","move");
         EffectManager.mx_internal::registerEffectTrigger("removedEffect","removed");
         EffectManager.mx_internal::registerEffectTrigger("resizeEffect","resize");
         EffectManager.mx_internal::registerEffectTrigger("resizeEndEffect","resizeEnd");
         EffectManager.mx_internal::registerEffectTrigger("resizeStartEffect","resizeStart");
         EffectManager.mx_internal::registerEffectTrigger("rollOutEffect","rollOut");
         EffectManager.mx_internal::registerEffectTrigger("rollOverEffect","rollOver");
         EffectManager.mx_internal::registerEffectTrigger("showEffect","show");
         registerClassAlias("flex.messaging.io.ArrayCollection",ArrayCollection);
         registerClassAlias("flex.messaging.io.ArrayList",ArrayList);
         registerClassAlias("flex.messaging.io.ObjectProxy",ObjectProxy);
         var _loc2_:Array = ["horizontalGridLineColor","selectionDisabledColor","strokeWidth","fontGridFitType","kerning","errorColor","color","alternatingItemColors","leading","fontAntiAliasType","backgroundDisabledColor","selectionColor","labelWidth","textIndent","barColor","fontThickness","fontFamily","textSelectedColor","disabledIconColor","strokeColor","dropShadowColor","shadowColor","fontWeight","dropdownBorderColor","dividerColor","textAlign","fontSharpness","shadowCapColor","footerColors","depthColors","headerColors","letterSpacing","textDecoration","fontStyle","disabledColor","modalTransparencyColor","highlightColor","rollOverColor","modalTransparencyBlur","themeColor","modalTransparencyDuration","verticalGridLineColor","modalTransparency","iconColor","fontSize","textRollOverColor"];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.length)
         {
            StyleManager.registerInheritingStyle(_loc2_[_loc3_]);
            _loc3_++;
         }
      }
   }
}

