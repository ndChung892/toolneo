from __future__ import annotations
import ctypes,json,time
from pathlib import Path
from app.config_manager import ConfigManager
from app.logger import AppLogger
from app.map_travel import MAP_TARGETS,MapTraveler
from app.screen_capture import ScreenCapture
from app.single_auto_start import SingleAccountAutoStart
from app.window_manager import WindowManager
ROOT=Path(__file__).parent
def stop(pid):
 k=ctypes.windll.kernel32;h=k.OpenProcess(0x0001|0x00100000,False,pid)
 if h:k.TerminateProcess(h,0);k.WaitForSingleObject(h,10000);k.CloseHandle(h)
def main():
 cfg=ConfigManager();acc=dict(next(a for a in cfg.load_accounts()['accounts'] if a['id']=='acc_1'));acc['login_position']=3
 login=SingleAccountAutoStart(AppLogger()).start_account(cfg.load_global()['flash_exe'],acc,150);pid=int(login.get('pid') or 0);r={'diagnostic_only':True,'configured_slot':2,'tested_slot':3,'login':login,'pid':pid}
 try:
  if not login.get('ok'):r['failure_reason']='SLOT3_LOGIN_FAILED';return 1
  wm=WindowManager();w=wm.find_by_pid(pid);t=MapTraveler(ScreenCapture(),wm,AppLogger());target=next(m for m in MAP_TARGETS if m.map_id==13);r['travel']=t.travel(w,target,timeout=40);r['ok']=bool(r['travel'].get('ok'));return 0 if r['ok'] else 1
 finally:
  if pid:stop(pid)
  (ROOT/'logs/dy_slot3_travel_diagnostic.json').write_text(json.dumps(r,ensure_ascii=False,indent=2),encoding='utf-8');print(json.dumps({'ok':r.get('ok'),'pid':pid,'login':login.get('detail'),'travel':r.get('travel',{}).get('detail')},ensure_ascii=False))
if __name__=='__main__':raise SystemExit(main())
