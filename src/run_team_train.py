"""Run the 5-account training loop from the command line.

Evidence is written continuously to logs/team_train.json, so it is readable
while the run is in progress and survives an early stop.
"""
from __future__ import annotations

import json
import time
from pathlib import Path

from app.config_manager import ConfigManager
from app.logger import AppLogger
from app.team_train import TRAIN_MAPS, TeamTrainer

ROOT = Path(__file__).resolve().parent
OUT = ROOT / "logs" / "team_train.json"


def main() -> int:
    trainer = TeamTrainer(ConfigManager(), AppLogger(), evidence_path=OUT)
    trainer.start()
    last = None
    try:
        while trainer.state.running:
            time.sleep(5.0)
            snapshot = (trainer.state.stage, trainer.state.detail,
                        tuple(sorted((a.name, tuple(sorted(a.battles.items())))
                                     for a in trainer.state.accounts)))
            if snapshot != last:
                last = snapshot
                print(json.dumps({
                    "stage": trainer.state.stage,
                    "detail": trainer.state.detail,
                    "map": trainer.state.map_name,
                    "party_ok": trainer.state.party_ok,
                    "restarts": trainer.state.restarts,
                    "battles": {a.name: a.battles for a in trainer.state.accounts},
                }, ensure_ascii=False), flush=True)
    except KeyboardInterrupt:
        trainer.stop()
    print(json.dumps({"final_stage": trainer.state.stage,
                      "maps": TRAIN_MAPS,
                      "battles": {a.name: a.battles for a in trainer.state.accounts}},
                     ensure_ascii=False, indent=2))
    return 0 if trainer.state.stage == "PASS" else 1


if __name__ == "__main__":
    raise SystemExit(main())
