# toolneo

Tool automation cho game TSK. Thành phẩm hiện hành là **VptAvalonia** (UI Avalonia .NET 8)
giao tiếp qua bridge stdio JSON tới backend Python.

## Cấu trúc

```
toolneo/
├── VptAvalonia/            >>> THÀNH PHẨM — chạy VptAvalonia.exe ở đây <<<
│                           (bản Release net8.0, 51 file, cần đủ cả thư mục)
│
├── src/                    Dự án hiện hành (dev_supervisor_target_a_v2)
│   ├── app/                Backend Python (backend.py, các module điều khiển)
│   ├── avalonia_ui/
│   │   └── VptAvalonia/    Source UI Avalonia (.axaml/.cs/.csproj)
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

## Chạy

```
VptAvalonia\VptAvalonia.exe
```

## Build lại UI

```powershell
cd src/avalonia_ui/VptAvalonia
dotnet build -c Release
# Output ra bin/Release/net8.0/ (bi .gitignore bo qua).
# Muon cap nhat thanh pham thi copy toan bo noi dung folder do de len /VptAvalonia.
```

## Ghi chú

- Repo **không dùng Git LFS** — clone bằng `git clone` bình thường.
- Bản build PyInstaller cũ (`dist_*`, `build_*`) đã bị loại khỏi repo, xem `.gitignore`.
- Những thứ sau được archive ngoài repo tại `Desktop\toolneo_archive`
  (xem `ARCHIVE_MANIFEST.txt` trong thư mục đó):
  - Tool tải về được: Ghidra, JDK 21, ILSpy, JRE
  - File dump / decompile > 100 MB (vượt giới hạn cứng của GitHub)
  - **Ảnh screenshot trong `evidence/logs`** — 5.076 file / 3.87 GB.
    Cấu trúc thư mục được giữ nguyên nên có thể copy ngược lại vào repo bất cứ lúc nào.
    Toàn bộ log dạng text (`.log`, `.json`, `.jsonl`) **vẫn nằm trong repo**.
