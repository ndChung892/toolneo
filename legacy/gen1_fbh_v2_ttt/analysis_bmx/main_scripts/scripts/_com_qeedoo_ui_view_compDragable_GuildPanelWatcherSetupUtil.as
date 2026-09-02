package
{
   import com.qeedoo.ui.view.compDragable.GuildPanel;
   import flash.display.Sprite;
   import mx.binding.IWatcherSetupUtil;
   import mx.binding.PropertyWatcher;
   import mx.core.IFlexModuleFactory;
   
   public class _com_qeedoo_ui_view_compDragable_GuildPanelWatcherSetupUtil extends Sprite implements IWatcherSetupUtil
   {
      
      public function _com_qeedoo_ui_view_compDragable_GuildPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         GuildPanel.watcherSetupUtil = new _com_qeedoo_ui_view_compDragable_GuildPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void
      {
         param4[34] = new PropertyWatcher("canDeleteGuild",{"propertyChange":true},[param3[18],param3[20]],param2);
         param4[7] = new PropertyWatcher("guildDuty",{"propertyChange":true},[param3[4]],param2);
         param4[31] = new PropertyWatcher("canEditInfo",{"propertyChange":true},[param3[16]],param2);
         param4[67] = new PropertyWatcher("pageGuildAC",{"propertyChange":true},[param3[36]],param2);
         param4[6] = new PropertyWatcher("guildLeader",{"propertyChange":true},[param3[3]],param2);
         param4[5] = new PropertyWatcher("guildName",{"propertyChange":true},[param3[2]],param2);
         param4[34].updateParent(param1);
         param4[7].updateParent(param1);
         param4[31].updateParent(param1);
         param4[67].updateParent(param1);
         param4[6].updateParent(param1);
         param4[5].updateParent(param1);
      }
   }
}

