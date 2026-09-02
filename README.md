# toolneo

Tool automation cho game TSK. Thành phẩm hiện hành là **VptAvalonia** (UI Avalonia .NET 8)
giao tiếp qua bridge stdio JSON tới backend Python.

## Cấu trúc

```
toolneo/
├── src/                    Dự án hiện hành (dev_supervisor_target_a_v2)
│   ├── app/                Backend Python (backend.py, các module điều khiển)
│   ├── avalonia_ui/
│   │   └── VptAvalonia/    UI Avalonia — bin/Release/net8.0/VptAvalonia.exe
│   ├── configs/            Cấu hình tài khoản / profile
│   ├── runtime/            Tài nguyên runtime
│   ├── scripts/            Script tiện ích
│   ├── tests/              Test
│   └── *.py                Script probe / accept / diagnose
│
├── evidence/               Log & ảnh chứng cứ các phiên chạy
│   ├── logs/               Log runtime + screenshot theo phiên
│   ├── root_logs/
│   └── screenshots/
│
├── analysis/               Kết quả phân tích / reverse
│   ├── quest_memory/       Dump bộ nhớ quest
│   ├── quest_pcode/        P-code AS3
│   ├── risugame_decompiled/
│   ├── risutools_decompiled/
│   ├── risu_decompiled/
│   ├── risu_reference/
│   ├── research_auto_risu_1_1_1/
│   ├── risu_ghidra_scripts/  Script export Ghidra
│   └── flash_memory_detector/
│
├── tools/                  Tool mẫu để đối chiếu hành vi
│   ├── bmx/                BMx V8.8.7.2
│   └── risu/               RisuTools 1.1.1 + source dựng lại + assets
│
├── legacy/                 Các thế hệ code cũ (tham chiếu, không phát triển tiếp)
│   ├── gen1_fbh_v2_ttt/
│   ├── gen1_fbh_v2_ttt_original_extract/
│   ├── gen2_multi_account/
│   └── gen3_named_entities_autologin/
│
└── docs/                   Handoff, behavior contract, layout runtime
```

## Build UI

```powershell
cd src/avalonia_ui/VptAvalonia
dotnet build -c Release
# Output: bin/Release/net8.0/VptAvalonia.exe
```

## Ghi chú

- Repo dùng **Git LFS** cho `*.png`, `*.swf`, `*.exe`, `*.dll` — cần `git lfs install` trước khi clone.
- Bản build PyInstaller cũ (`dist_*`, `build_*`) đã bị loại khỏi repo, xem `.gitignore`.
- Tool nặng tải về được (Ghidra, JDK, ILSpy) và các file dump >100MB được archive ngoài repo
  tại `Desktop\toolneo_archive` — xem `ARCHIVE_MANIFEST.txt` trong thư mục đó.
