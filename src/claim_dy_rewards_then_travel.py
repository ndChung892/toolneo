from __future__ import annotations
import ctypes, json, time, uuid
from pathlib import Path
import cv2
from app.config_manager import ConfigManager
from app.logger import AppLogger
from app.map_travel import MAP_TARGETS, MapTraveler, click_client
from app.screen_capture import ScreenCapture
from app.single_auto_start import SingleAccountAutoStart
from app.window_manager import WindowManager

ROOT=Path(__file__).parent; OUT=ROOT/'logs/dy_rewards_then_travel.json'
def stop(pid):
    k=ctypes.windll.kernel32; h=k.OpenProcess(0x0001|0x00100000,False,pid)
    if h: k.TerminateProcess(h,0); k.WaitForSingleObject(h,10000); k.CloseHandle(h)
def main():
    cfg=ConfigManager(); acc=next(a for a in cfg.load_accounts()['accounts'] if a['id']=='acc_1')
    login=SingleAccountAutoStart(AppLogger()).start_account(cfg.load_global()['flash_exe'],acc,150)
    pid=int(login.get('pid') or 0); result={'session_id':str(uuid.uuid4()),'login':login,'pid':pid,'actions':[],'status':'PARTIAL'}
    try:
        if not login.get('ok'): result['failure_reason']='LOGIN_FAILED'; return 1
        wm=WindowManager(); win=wm.find_by_pid(pid); t=MapTraveler(ScreenCapture(),wm,AppLogger())
        for name,x,y,delay in [('open_daily',678,52,1.5),('open_welfare',201,539,1.5),
                               ('claim_login',315,251,1.0),('claim_holiday',315,478,1.0)]:
            click_client(win.hwnd,x,y,reference=True); time.sleep(delay)
            frame=t._stage_image(win); path=ROOT/'logs'/f'dy_reward_{name}.png'; cv2.imwrite(str(path),frame)
            result['actions'].append({'timestamp':time.time(),'action':name,'point':[x,y],'frame':str(path)})
        click_client(win.hwnd,728,107,reference=True); time.sleep(.7)
        click_client(win.hwnd,778,68,reference=True); time.sleep(1.0)
        target=next(m for m in MAP_TARGETS if m.map_id==13)
        result['travel']=t.travel(win,target,timeout=40)
        if result['travel'].get('ok'): result['status']='TRIAL_PASS'; return 0
        result['failure_reason']=result['travel'].get('detail'); return 1
    finally:
        if pid: stop(pid)
        result['finished_at']=time.time(); OUT.write_text(json.dumps(result,ensure_ascii=False,indent=2),encoding='utf-8')
        print(json.dumps({'status':result.get('status'),'pid':pid,'failure_reason':result.get('failure_reason'),
                          'travel':result.get('travel',{}).get('detail'),'readbacks':len(result.get('travel',{}).get('readbacks',[]))},ensure_ascii=False))
if __name__=='__main__': raise SystemExit(main())
