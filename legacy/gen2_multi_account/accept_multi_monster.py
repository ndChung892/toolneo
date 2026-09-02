from __future__ import annotations
import json,time
from pathlib import Path
from app.boss_runner import BossRunner
from app.logger import AppLogger
from app.window_manager import WindowManager

PHAT=(3060100000051,2060100000051)
CAI=(3060100001180,2060100001208)
DAU=(3060100001180,2060100001211)

def main():
 w=next(w for w in WindowManager().list_all() if w.title=='TSk')
 phases=[('one',[PHAT]),('two',[PHAT,CAI]),('three',[PHAT,CAI,DAU])]
 evidence={'pid':w.pid,'hwnd':w.hwnd,'phases':[]}
 for name,selected in phases:
  log=AppLogger();r=BossRunner(log,selected_signatures=set(selected));check=r.precheck(w)
  phase={'name':name,'selected':[list(x) for x in selected],'precheck':check,'battles':[]}
  print('PHASE',name,'PRECHECK',check,flush=True)
  if not check['ok']: raise SystemExit(2)
  r.start(w);last_attacks=0;deadline=time.monotonic()+12*60
  try:
   while time.monotonic()<deadline and r.state.clears<5:
    if r.state.attacks>last_attacks:
     t=r.target
     item={'attack':r.state.attacks,'runtime_id':r.state.target_id,
           'type':r.state.target_type,'resource':r.state.target_resource}
     phase['battles'].append(item);last_attacks=r.state.attacks;print(name,item,flush=True)
    time.sleep(.08)
  finally:r.stop()
  phase['attacks']=r.state.attacks;phase['clears']=r.state.clears
  phase['ok']=r.state.clears>=5 and all((x['type'],x['resource']) in set(selected) for x in phase['battles'])
  evidence['phases'].append(phase)
  Path('logs').mkdir(exist_ok=True);Path('logs/multi_monster_acceptance.json').write_text(json.dumps(evidence,indent=2))
  print('PHASE_RESULT',name,phase['ok'],phase['attacks'],phase['clears'],flush=True)
  if not phase['ok']: raise SystemExit(3)
 print('ACCEPTED',flush=True)
if __name__=='__main__':main()
