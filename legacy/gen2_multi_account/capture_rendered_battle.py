import time, cv2
from pathlib import Path
from app.boss_memory import FlashMemory
from app.boss_runner import BossRunner
from app.logger import AppLogger
from app.screen_capture import ScreenCapture
from app.window_manager import WindowManager

w=next(w for w in WindowManager().list_all() if (w.title or '').casefold()=='tsk')
m=FlashMemory(w.pid); pb=0x130740A0; core=m.u32(pb+0x1c0)
if (m.u32(core+0x9c)&~7)!=pb: raise SystemExit('ownership changed')
r=BossRunner(AppLogger()); r.start(w)
deadline=time.monotonic()+180
while time.monotonic()<deadline and not bool(m.u32(pb+0x70)): time.sleep(.05)
if not bool(m.u32(pb+0x70)): raise SystemExit('battle timeout')
time.sleep(5)
img=ScreenCapture().capture_window(w); Path('logs').mkdir(exist_ok=True)
cv2.imwrite('logs/battle_rendered.png',img)
print(Path('logs/battle_rendered.png').resolve())
r.stop(); m.close()
