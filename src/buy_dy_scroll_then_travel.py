from __future__ import annotations
import ctypes, json, time, uuid
from pathlib import Path
import cv2, win32gui
from app.config_manager import ConfigManager
from app.logger import AppLogger
from app.map_travel import MAP_TARGETS, MapTraveler, click_client, project_reference_point, send_key
from app.screen_capture import ScreenCapture
from app.single_auto_start import SingleAccountAutoStart
from app.window_manager import WindowManager

ROOT=Path(__file__).parent; OUT=ROOT/'logs/dy_buy_scroll_then_travel.json'
def stop(pid):
    k=ctypes.windll.kernel32; h=k.OpenProcess(0x0001|0x00100000,False,pid)
    if h: k.TerminateProcess(h,0); k.WaitForSingleObject(h,10000); k.CloseHandle(h)
def physical(hwnd,rx,ry):
    ctypes.windll.user32.SetWindowPos(hwnd,-1,0,0,0,0,0x0001|0x0002|0x0040)
    cx,cy=project_reference_point(hwnd,rx,ry); sx,sy=win32gui.ClientToScreen(hwnd,(cx,cy))
    ctypes.windll.user32.SetCursorPos(sx,sy); time.sleep(.25)
    ctypes.windll.user32.mouse_event(0x0002,0,0,0,0); time.sleep(.08)
    ctypes.windll.user32.mouse_event(0x0004,0,0,0,0); time.sleep(.35)
def main():
    cfg=ConfigManager(); acc=next(a for a in cfg.load_accounts()['accounts'] if a['id']=='acc_1')
    login=SingleAccountAutoStart(AppLogger()).start_account(cfg.load_global()['flash_exe'],acc,150)
    pid=int(login.get('pid') or 0); result={'session_id':str(uuid.uuid4()),'account_id':'acc_1','account_key':'dy','pid':pid,'login':login,'status':'PARTIAL','actions':[]}
    try:
        if not login.get('ok'): result['failure_reason']='LOGIN_FAILED'; return 1
        wm=WindowManager(); win=wm.find_by_pid(pid); t=MapTraveler(ScreenCapture(),wm,AppLogger())
        click_client(win.hwnd,864,101,reference=True); time.sleep(2)
        click_client(win.hwnd,284,460,reference=True)
        for ch in 'Tiêu Diêu Phù': ctypes.windll.user32.SendMessageW(win.hwnd,0x0102,ord(ch),0); time.sleep(.03)
        click_client(win.hwnd,402,460,reference=True); time.sleep(2)
        physical(win.hwnd,273,202); physical(win.hwnd,537,460); time.sleep(.5)
        dialog=t._stage_image(win); p=ROOT/'logs/dy_buy_scroll_quantity.png'; cv2.imwrite(str(p),dialog)
        result['actions'].append({'action':'SELECT_DURATION_SCROLL_QTY_1','timestamp':time.time(),'frame':str(p),'unit_price':120})
        send_key(win.hwnd,0x0D); time.sleep(2)
        click_client(win.hwnd,414,334,reference=True); time.sleep(2)
        post=t._stage_image(win); p=ROOT/'logs/dy_buy_scroll_post_confirm.png'; cv2.imwrite(str(p),post)
        result['actions'].append({'action':'CONFIRM_PURCHASE','timestamp':time.time(),'frame':str(p)})
        ctypes.windll.user32.SetWindowPos(win.hwnd,-2,0,0,0,0,0x0001|0x0002|0x0040)
        click_client(win.hwnd,522,260,reference=True); time.sleep(.6)
        click_client(win.hwnd,723,127,reference=True); time.sleep(1)
        target=next(m for m in MAP_TARGETS if m.map_id==13)
        result['travel']=t.travel(win,target,timeout=45)
        if result['travel'].get('ok'): result['status']='TRIAL_PASS'; return 0
        result['failure_reason']=result['travel'].get('detail'); return 1
    finally:
        if pid: stop(pid)
        result['finished_at']=time.time(); OUT.write_text(json.dumps(result,ensure_ascii=False,indent=2),encoding='utf-8')
        print(json.dumps({'status':result.get('status'),'pid':pid,'failure_reason':result.get('failure_reason'),
                          'travel':result.get('travel',{}).get('detail'),'readbacks':len(result.get('travel',{}).get('readbacks',[]))},ensure_ascii=False))
if __name__=='__main__': raise SystemExit(main())
