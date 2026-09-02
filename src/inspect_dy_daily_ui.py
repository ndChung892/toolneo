from __future__ import annotations
import ctypes, json, time
from pathlib import Path
import cv2
import win32gui
from app.config_manager import ConfigManager
from app.logger import AppLogger
from app.map_travel import MapTraveler, click_client, project_reference_point
from app.screen_capture import ScreenCapture
from app.single_auto_start import SingleAccountAutoStart
from app.window_manager import WindowManager

ROOT = Path(__file__).parent

def stop(pid):
    k=ctypes.windll.kernel32; h=k.OpenProcess(0x0001|0x00100000,False,pid)
    if h: k.TerminateProcess(h,0); k.WaitForSingleObject(h,10000); k.CloseHandle(h)

def main():
    cfg=ConfigManager(); acc=next(a for a in cfg.load_accounts()['accounts'] if a['id']=='acc_1')
    login=SingleAccountAutoStart(AppLogger()).start_account(cfg.load_global()['flash_exe'],acc,150)
    pid=int(login.get('pid') or 0); out={'login':login,'pid':pid}
    try:
        if not login.get('ok'): return 1
        wm=WindowManager(); win=wm.find_by_pid(pid); t=MapTraveler(ScreenCapture(),wm,AppLogger())
        before=t._stage_image(win); cv2.imwrite(str(ROOT/'logs/dy_daily_before.png'),before)
        click_client(win.hwnd, 580, 568, reference=True)
        time.sleep(2)
        bag=t._stage_image(win); cv2.imwrite(str(ROOT/'logs/dy_bag_after_scroll_purchase.png'),bag)
        out['before']=str(ROOT/'logs/dy_daily_before.png'); out['bag']=str(ROOT/'logs/dy_bag_after_scroll_purchase.png')
        ctypes.windll.user32.SetWindowPos(win.hwnd,-1,0,0,0,0,0x0001|0x0002|0x0040)
        cx,cy=project_reference_point(win.hwnd,456,286); sx,sy=win32gui.ClientToScreen(win.hwnd,(cx,cy))
        ctypes.windll.user32.SetCursorPos(sx,sy); time.sleep(1.5)
        tip=t._stage_image(win); cv2.imwrite(str(ROOT/'logs/dy_bag_scroll_tooltip.png'),tip)
        out['tooltip']=str(ROOT/'logs/dy_bag_scroll_tooltip.png')
        ctypes.windll.user32.SetWindowPos(win.hwnd,-2,0,0,0,0,0x0001|0x0002|0x0040)
        return 0
    finally:
        if pid: stop(pid)
        (ROOT/'logs/dy_daily_ui_inspection.json').write_text(json.dumps(out,ensure_ascii=False,indent=2),encoding='utf-8')
if __name__=='__main__': raise SystemExit(main())
