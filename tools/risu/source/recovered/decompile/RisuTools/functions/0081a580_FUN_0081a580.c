/* Address: 0081a580 | Ghidra name: FUN_0081a580 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_0081a580(int *param_1)

{
  int iVar1;
  int iVar2;
  int iVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 extraout_ECX;
  undefined4 extraout_ECX_00;
  undefined4 extraout_ECX_01;
  int extraout_ECX_02;
  undefined4 extraout_ECX_03;
  undefined4 extraout_ECX_04;
  undefined4 extraout_ECX_05;
  undefined **ppuVar6;
  undefined4 extraout_ECX_06;
  int *piVar7;
  int *piVar8;
  bool bVar9;
  double dVar10;
  undefined1 *puVar11;
  int local_f0;
  undefined1 local_ac [4];
  undefined4 local_a8;
  undefined4 local_a4;
  undefined4 local_a0;
  undefined4 local_9c;
  undefined1 local_98 [4];
  undefined4 local_94;
  undefined1 local_90 [4];
  undefined4 local_8c;
  undefined4 local_88;
  undefined1 local_84 [4];
  undefined4 local_80;
  undefined1 local_7c [8];
  undefined4 local_74;
  undefined4 local_70;
  undefined4 local_68;
  undefined1 local_64 [4];
  undefined1 local_60 [4];
  int local_5c [7];
  int local_40 [6];
  int local_28;
  int local_24;
  int local_20;
  int local_1c;
  int local_18;
  int local_14;
  
  puVar11 = (undefined1 *)0x0;
  iVar2 = -0x150;
  do {
    *(undefined4 *)((int)&local_14 + iVar2) = 0;
    *(undefined4 *)(&stack0xfffffff0 + iVar2) = 0;
    *(undefined4 *)(&stack0xfffffff4 + iVar2) = 0;
    *(undefined4 *)(&stack0xfffffff8 + iVar2) = 0;
    *(undefined4 *)(&stack0xfffffffc + iVar2) = 0;
    *(undefined4 *)(&stack0x00000000 + iVar2) = 0;
    *(undefined4 *)(&stack0x00000004 + iVar2) = 0;
    *(undefined4 *)(&stack0x00000008 + iVar2) = 0;
    *(undefined4 *)(&stack0x0000000c + iVar2) = 0;
    *(undefined4 *)(&stack0x00000010 + iVar2) = 0;
    *(undefined4 *)(&stack0x00000014 + iVar2) = 0;
    *(undefined4 *)(&stack0x00000018 + iVar2) = 0;
    iVar2 = iVar2 + 0x30;
  } while (iVar2 != 0);
  iVar1 = *param_1;
  local_14 = iVar2;
  switch(param_1[9]) {
  case 0:
    local_14 = param_1[0x12];
    param_1[0x12] = 0;
    param_1[9] = -1;
    break;
  case 1:
    local_18 = param_1[0x13];
    param_1[0x13] = 0;
    param_1[9] = -1;
    goto LAB_0081cacb;
  case 2:
    local_1c = param_1[0x14];
    param_1[0x14] = 0;
    param_1[9] = -1;
    goto LAB_0081ca7b;
  case 3:
    local_18 = param_1[0x13];
    param_1[0x13] = 0;
    param_1[9] = -1;
    goto LAB_0081c9c2;
  case 4:
    local_1c = param_1[0x14];
    param_1[0x14] = 0;
    param_1[9] = -1;
    goto LAB_0081c935;
  case 5:
    local_20 = param_1[0x15];
    param_1[0x15] = 0;
    param_1[9] = -1;
    goto LAB_0081c883;
  case 6:
    local_1c = param_1[0x14];
    param_1[0x14] = 0;
    param_1[9] = -1;
    goto LAB_0081c804;
  case 7:
    local_1c = param_1[0x14];
    param_1[0x14] = 0;
    param_1[9] = -1;
    goto LAB_0081c739;
  case 8:
    local_1c = param_1[0x14];
    param_1[0x14] = 0;
    param_1[9] = -1;
    goto LAB_0081c638;
  case 9:
    local_1c = param_1[0x14];
    param_1[0x14] = 0;
    param_1[9] = -1;
    goto LAB_0081c5b6;
  case 10:
    local_1c = param_1[0x14];
    param_1[0x14] = 0;
    param_1[9] = -1;
    goto LAB_0081c587;
  case 0xb:
    local_1c = param_1[0x14];
    param_1[0x14] = 0;
    param_1[9] = -1;
    goto LAB_0081c558;
  case 0xc:
    local_24 = param_1[0x16];
    param_1[0x16] = 0;
    param_1[9] = -1;
    goto LAB_0081c4d0;
  case 0xd:
    local_1c = param_1[0x14];
    param_1[0x14] = 0;
    param_1[9] = -1;
    goto LAB_0081c453;
  case 0xe:
    local_24 = param_1[0x16];
    param_1[0x16] = 0;
    param_1[9] = -1;
    goto LAB_0081c376;
  case 0xf:
    local_1c = param_1[0x14];
    param_1[0x14] = 0;
    param_1[9] = -1;
    goto LAB_0081c2f9;
  case 0x10:
    local_24 = param_1[0x16];
    param_1[0x16] = 0;
    param_1[9] = -1;
    goto LAB_0081c245;
  case 0x11:
    local_14 = param_1[0x12];
    param_1[0x12] = 0;
    param_1[9] = -1;
    goto LAB_0081c1a2;
  case 0x12:
    local_28 = param_1[0x17];
    param_1[0x17] = 0;
    param_1[9] = -1;
    goto LAB_0081c115;
  case 0x13:
    local_1c = param_1[0x14];
    param_1[0x14] = 0;
    param_1[9] = -1;
    goto LAB_0081be00;
  case 0x14:
    local_1c = param_1[0x14];
    param_1[0x14] = 0;
    param_1[9] = -1;
    goto LAB_0081bd81;
  case 0x15:
    local_28 = param_1[0x17];
    param_1[0x17] = 0;
    param_1[9] = -1;
    goto LAB_0081bd3f;
  case 0x16:
    local_1c = param_1[0x14];
    param_1[0x14] = 0;
    param_1[9] = -1;
    goto LAB_0081bcad;
  case 0x17:
    local_1c = param_1[0x14];
    param_1[0x14] = 0;
    param_1[9] = -1;
    goto LAB_0081bc08;
  case 0x18:
    local_28 = param_1[0x17];
    param_1[0x17] = 0;
    param_1[9] = -1;
    goto LAB_0081bbc6;
  case 0x19:
    local_1c = param_1[0x14];
    param_1[0x14] = 0;
    param_1[9] = -1;
    goto LAB_0081bb91;
  case 0x1a:
    local_20 = param_1[0x15];
    param_1[0x15] = 0;
    param_1[9] = -1;
    goto LAB_0081b922;
  case 0x1b:
    local_20 = param_1[0x15];
    param_1[0x15] = 0;
    param_1[9] = -1;
    goto LAB_0081b896;
  case 0x1c:
    local_1c = param_1[0x14];
    param_1[0x14] = 0;
    param_1[9] = -1;
    goto LAB_0081b762;
  case 0x1d:
    local_1c = param_1[0x14];
    param_1[0x14] = 0;
    param_1[9] = -1;
    local_14 = 0;
    goto LAB_0081b6df;
  case 0x1e:
    local_14 = param_1[0x12];
    param_1[0x12] = 0;
    param_1[9] = -1;
    goto LAB_0081b5a3;
  case 0x1f:
    local_18 = param_1[0x13];
    param_1[0x13] = 0;
    param_1[9] = -1;
    goto LAB_0081b561;
  case 0x20:
    local_1c = param_1[0x14];
    param_1[0x14] = 0;
    param_1[9] = -1;
    goto LAB_0081b522;
  case 0x21:
    local_14 = param_1[0x12];
    param_1[0x12] = 0;
    param_1[9] = -1;
    goto LAB_0081b4a0;
  case 0x22:
    local_1c = param_1[0x14];
    param_1[0x14] = 0;
    param_1[9] = -1;
    goto LAB_0081b413;
  case 0x23:
    local_20 = param_1[0x15];
    param_1[0x15] = 0;
    param_1[9] = -1;
    goto LAB_0081b316;
  case 0x24:
    local_1c = param_1[0x14];
    param_1[0x14] = 0;
    param_1[9] = -1;
    goto LAB_0081b20b;
  case 0x25:
    local_1c = param_1[0x14];
    param_1[0x14] = 0;
    param_1[9] = -1;
    goto LAB_0081b189;
  case 0x26:
    local_14 = param_1[0x12];
    param_1[0x12] = 0;
    param_1[9] = -1;
    goto LAB_0081b0c1;
  case 0x27:
    local_1c = param_1[0x14];
    param_1[0x14] = 0;
    param_1[9] = -1;
    goto LAB_0081b08b;
  case 0x28:
    local_1c = param_1[0x14];
    param_1[0x14] = 0;
    param_1[9] = -1;
    goto LAB_0081b055;
  case 0x29:
    local_24 = param_1[0x16];
    param_1[0x16] = 0;
    param_1[9] = -1;
    goto LAB_0081afa9;
  case 0x2a:
    local_1c = param_1[0x14];
    param_1[0x14] = 0;
    param_1[9] = -1;
    goto LAB_0081af15;
  case 0x2b:
    local_1c = param_1[0x14];
    param_1[0x14] = 0;
    param_1[9] = -1;
    goto LAB_0081ae88;
  case 0x2c:
    local_20 = param_1[0x15];
    param_1[0x15] = 0;
    param_1[9] = -1;
    goto LAB_0081ad7c;
  case 0x2d:
    local_1c = param_1[0x14];
    param_1[0x14] = 0;
    param_1[9] = -1;
    goto LAB_0081acef;
  case 0x2e:
    local_20 = param_1[0x15];
    param_1[0x15] = 0;
    param_1[9] = -1;
    goto LAB_0081ac55;
  case 0x2f:
    local_20 = param_1[0x15];
    param_1[0x15] = 0;
    param_1[9] = -1;
    goto LAB_0081ac13;
  case 0x30:
    local_1c = param_1[0x14];
    param_1[0x14] = 0;
    param_1[9] = -1;
    goto LAB_0081ab08;
  case 0x31:
    local_1c = param_1[0x14];
    param_1[0x14] = 0;
    param_1[9] = -1;
    goto LAB_0081aad1;
  case 0x32:
    local_20 = param_1[0x15];
    param_1[0x15] = 0;
    param_1[9] = -1;
    goto LAB_0081a9ca;
  case 0x33:
    local_1c = param_1[0x14];
    param_1[0x14] = 0;
    param_1[9] = -1;
    goto LAB_0081a8f8;
  case 0x34:
    local_1c = param_1[0x14];
    param_1[0x14] = 0;
    param_1[9] = -1;
    goto LAB_0081a8d9;
  case 0x35:
    local_14 = param_1[0x12];
    param_1[0x12] = 0;
    param_1[9] = -1;
    goto LAB_0081a853;
  case 0x36:
    local_1c = param_1[0x14];
    param_1[0x14] = 0;
    param_1[9] = -1;
    goto LAB_0081a7e6;
  case 0x37:
    local_1c = param_1[0x14];
    param_1[0x14] = 0;
    param_1[9] = -1;
    goto LAB_0081a73f;
  case 0x38:
    local_14 = param_1[0x12];
    param_1[0x12] = 0;
    param_1[9] = -1;
    goto LAB_0081a682;
  case 0x39:
    local_5c[6] = param_1[0x18];
    param_1[0x18] = 0;
    param_1[9] = -1;
    goto LAB_0081a60f;
  case 0x3a:
  case 0x3e:
    local_1c = param_1[0x14];
    param_1[0x14] = 0;
    param_1[9] = -1;
    goto LAB_0081a5f3;
  case 0x3b:
    local_1c = param_1[0x14];
    param_1[0x14] = 0;
    param_1[9] = -1;
    goto LAB_0081df10;
  case 0x3c:
    local_20 = param_1[0x15];
    param_1[0x15] = 0;
    param_1[9] = -1;
    goto LAB_0081dea2;
  case 0x3d:
    local_1c = param_1[0x14];
    param_1[0x14] = 0;
    param_1[9] = -1;
    goto LAB_0081de60;
  case 0x3f:
    local_24 = param_1[0x16];
    param_1[0x16] = 0;
    param_1[9] = -1;
    goto LAB_0081ddf7;
  case 0x40:
    local_1c = param_1[0x14];
    param_1[0x14] = 0;
    param_1[9] = -1;
    goto LAB_0081dd8e;
  case 0x41:
    local_24 = param_1[0x16];
    param_1[0x16] = 0;
    param_1[9] = -1;
    goto LAB_0081dcfb;
  case 0x42:
    local_1c = param_1[0x14];
    param_1[0x14] = 0;
    param_1[9] = -1;
    goto LAB_0081dc76;
  case 0x43:
    local_1c = param_1[0x14];
    param_1[0x14] = 0;
    param_1[9] = -1;
    goto LAB_0081dbfd;
  case 0x44:
    local_20 = param_1[0x15];
    param_1[0x15] = 0;
    param_1[9] = -1;
    goto LAB_0081db76;
  case 0x45:
    local_1c = param_1[0x14];
    param_1[0x14] = 0;
    param_1[9] = -1;
    goto LAB_0081db54;
  case 0x46:
    local_20 = param_1[0x15];
    param_1[0x15] = 0;
    param_1[9] = -1;
    goto LAB_0081db0c;
  case 0x47:
    local_20 = param_1[0x15];
    param_1[0x15] = 0;
    param_1[9] = -1;
    goto LAB_0081dad3;
  case 0x48:
    local_1c = param_1[0x14];
    param_1[0x14] = 0;
    param_1[9] = -1;
    goto LAB_0081da44;
  case 0x49:
    local_1c = param_1[0x14];
    param_1[0x14] = 0;
    param_1[9] = -1;
    goto LAB_0081da20;
  default:
    FUN_00eae9a0();
    FUN_00eaeca8();
    FUN_00eaebef();
    FUN_00b6c8e0();
    FUN_007876b0();
    FUN_00787780();
    param_1[10] = 0;
    goto LAB_0081cc07;
  }
  do {
    if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    FUN_00eaebef();
    iVar2 = *(int *)(*(int *)(param_1[2] + 8) + 4);
    if ((iVar2 == 0) || (*(char *)(iVar2 + 0x69) == '\0')) {
LAB_0081ccf1:
      local_1c = FUN_00975000();
      if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
        param_1[9] = 2;
        FUN_00eaecdd();
        FUN_00da50a0();
        FUN_00dfc9c0();
        return;
      }
LAB_0081ca7b:
      if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      param_1[0xb] = param_1[0xb] + 1;
      iVar2 = *(int *)(*(int *)(param_1[2] + 8) + 4);
      if ((iVar2 != 0) && (*(char *)(iVar2 + 0x69) == '\0')) goto LAB_0081cd5d;
    }
    else {
      local_18 = FUN_0077ad90();
      if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
        param_1[9] = 1;
        FUN_00eaecdd();
        FUN_00da50a0();
        FUN_00dfca00();
        return;
      }
LAB_0081cacb:
      if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      if (*(int *)(local_18 + 0x20) == 0) {
        iVar2 = 0;
      }
      else {
        if (*(int *)(DAT_01c28a7c + 8) == 0) {
          FUN_00eae9a0();
          FUN_00e9b0b5(puVar11);
          puVar11 = (undefined1 *)0x81ccce;
          FUN_00eaebef();
        }
        iVar2 = FUN_00e4e4a0(&PTR_DAT_01544bfc,local_60);
      }
      if (iVar2 == 0) goto LAB_0081ccf1;
      if (*(char *)(iVar2 + 0x3c) == '\0') {
        if (param_1[0xb] < 0x1f) goto LAB_0081ccf1;
        FUN_007876b0();
      }
      else {
        FUN_007876b0();
      }
LAB_0081cd5d:
      local_18 = FUN_0077ad90();
      if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
        param_1[9] = 3;
        FUN_00eaecdd();
        FUN_00da50a0();
        FUN_00dfca00();
        return;
      }
LAB_0081c9c2:
      if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      if (*(int *)(DAT_01c28a7c + 0xc) == 0) {
        FUN_00eae9a0();
        FUN_00e9b0c6(puVar11);
        puVar11 = (undefined1 *)0x81ca33;
        FUN_00eaebef();
      }
      FUN_00e4e4a0(&PTR_DAT_01544bfc,local_64);
      FUN_00eaebca();
      iVar2 = param_1[2];
      iVar3 = FUN_00909ad0();
      if ((iVar3 == 0) && (iVar3 = FUN_00909ad0(), iVar3 == 0)) {
        iVar3 = FUN_00909ad0();
        if ((iVar3 == 0) && (iVar3 = FUN_00909ad0(), iVar3 == 0)) {
          uVar4 = 2;
        }
        else {
          uVar4 = 1;
        }
      }
      else {
        uVar4 = 0;
      }
      *(undefined4 *)(iVar2 + 0x14) = uVar4;
      if (*(int *)(param_1[2] + 4) == 0) {
        FUN_00787620();
        FUN_00792d90();
        local_14 = FUN_00cc8cb0();
        iVar2 = FUN_00b6fc00();
        if (iVar2 == 0) {
          param_1[9] = 0x35;
          FUN_00eaecdd();
          FUN_00e39660(&PTR_PTR_01554034,param_1);
          return;
        }
LAB_0081a853:
        FUN_00cce6b0();
        FUN_00eaebca();
        if ((*(int *)(*(int *)(param_1[2] + 8) + 4) != 0) && (iVar2 = FUN_00778e50(), iVar2 != 9)) {
          FUN_007876b0();
          iVar2 = FUN_0081a0c0();
          if (iVar2 == 0) {
            bVar9 = true;
          }
          else {
            FUN_0081a0c0();
            iVar2 = FUN_00a7ff10();
            bVar9 = iVar2 == 0;
          }
          *(bool *)(param_1 + 0x10) = bVar9;
          FUN_00787600();
          FUN_00775240();
          iVar2 = FUN_00b6c8d0();
          if (iVar2 == 0) {
LAB_0081cecb:
            FUN_00787620();
            FUN_00792cb0();
            param_1[0xe] = 0;
            while (param_1[0xe] < 3) {
              FUN_007876f0();
              local_1c = FUN_00973a50();
              iVar2 = FUN_0099db90();
              if (iVar2 == 0) {
                param_1[9] = 0x3b;
                FUN_00eaecdd();
                FUN_00dfcb20();
                return;
              }
LAB_0081df10:
              FUN_0099dba0();
              FUN_00787620();
              FUN_00792e00();
              local_20 = FUN_00cc8cb0();
              iVar2 = FUN_00b6fc00();
              if (iVar2 == 0) {
                param_1[9] = 0x3c;
                FUN_00eaecdd();
                FUN_00e39660(&PTR_PTR_01553bd4,param_1);
                return;
              }
LAB_0081dea2:
              FUN_00cce6b0();
              FUN_00eaeca8();
              FUN_007876f0();
              local_1c = FUN_00973a50();
              iVar2 = FUN_0099db90();
              if (iVar2 == 0) {
                param_1[9] = 0x3d;
                FUN_00eaecdd();
                FUN_00dfcb20();
                return;
              }
LAB_0081de60:
              FUN_0099dba0();
              if (param_1[6] != 0) {
                FUN_00787620();
                FUN_00792d60(0,1);
                break;
              }
              param_1[0xe] = param_1[0xe] + 1;
            }
          }
          else {
            FUN_0081a0b0();
            iVar2 = FUN_00b6c8d0();
            if ((char)param_1[0x10] == '\0' && iVar2 == 0) goto LAB_0081cecb;
            FUN_00787620();
            FUN_00792d40();
            FUN_007876f0();
            local_1c = FUN_00973a50();
            iVar2 = FUN_0099db90();
            if (iVar2 == 0) {
              param_1[9] = 0x36;
              FUN_00eaecdd();
              FUN_00dfcb20();
              return;
            }
LAB_0081a7e6:
            FUN_0099dba0();
            FUN_00787840(0,0,0,0);
            local_1c = FUN_00973a50();
            iVar2 = FUN_0099db90();
            if (iVar2 == 0) {
              param_1[9] = 0x37;
              FUN_00eaecdd();
              FUN_00dfcb20();
              return;
            }
LAB_0081a73f:
            FUN_0099dba0();
            if ((char)param_1[0x10] != '\0') {
              FUN_00787a10(0,1);
              local_1c = FUN_00973a50();
              iVar2 = FUN_0099db90();
              if (iVar2 != 0) goto LAB_0081a5f3;
              param_1[9] = 0x3a;
              FUN_00eaecdd();
              FUN_00dfcb20();
              return;
            }
            FUN_00eae9a0();
            FUN_0081a520();
            FUN_00eaed7c();
            FUN_00eaebef();
            FUN_00787620();
            FUN_00792d90();
            local_14 = FUN_00cc8cb0();
            iVar2 = FUN_00b6fc00();
            if (iVar2 == 0) {
              param_1[9] = 0x38;
              FUN_00eaecdd();
              FUN_00e39660(&PTR_PTR_01554034,param_1);
              return;
            }
LAB_0081a682:
            FUN_00cce6b0();
            FUN_00eaebca();
            FUN_00eae9a0();
            FUN_0081a0c0();
            FUN_00e9b1a3(puVar11);
            FUN_00e44450(&PTR_DAT_01543854);
            FUN_00e4ee50();
            FUN_00e17500();
            local_5c[6] = FUN_00cc8cb0();
            puVar11 = (undefined1 *)0x81a6fc;
            iVar2 = FUN_00b6fc00();
            if (iVar2 == 0) {
              param_1[9] = 0x39;
              FUN_00eaecdd();
              FUN_00e39660();
              return;
            }
LAB_0081a60f:
            FUN_00cce6b0();
            param_1[5] = 0;
          }
          while( true ) {
            FUN_00787620();
            FUN_00792db0();
            local_24 = FUN_00b6e1a0();
            iVar2 = FUN_00b6fc00();
            if (iVar2 == 0) {
              param_1[9] = 0x3f;
              FUN_00eaecdd();
              FUN_00e17990();
              return;
            }
LAB_0081ddf7:
            iVar2 = FUN_00b6fc70();
            if (iVar2 == 0) break;
            FUN_007876f0();
            local_1c = FUN_00973a50();
            iVar2 = FUN_0099db90();
            if (iVar2 == 0) {
              param_1[9] = 0x3e;
              FUN_00eaecdd();
              FUN_00dfcb20();
              return;
            }
LAB_0081a5f3:
            FUN_0099dba0();
          }
        }
        while( true ) {
          FUN_00787620();
          FUN_00792da0();
          local_24 = FUN_00b6e1a0();
          iVar2 = FUN_00b6fc00();
          if (iVar2 == 0) {
            param_1[9] = 0x41;
            FUN_00eaecdd();
            FUN_00e17990();
            return;
          }
LAB_0081dcfb:
          iVar2 = FUN_00b6fc70();
          if (iVar2 != 0) break;
          FUN_00787620();
          FUN_00792d20();
          FUN_007876f0();
          local_1c = FUN_00973a50();
          iVar2 = FUN_0099db90();
          if (iVar2 == 0) {
            param_1[9] = 0x40;
            FUN_00eaecdd();
            FUN_00dfcb20();
            return;
          }
LAB_0081dd8e:
          FUN_0099dba0();
        }
        FUN_007877c0(0,0,0,DAT_018d7820,DAT_018d7818);
        local_1c = FUN_00973a50();
        iVar2 = FUN_0099db90();
        if (iVar2 == 0) {
          param_1[9] = 0x42;
          FUN_00eaecdd();
          FUN_00dfcb20();
          return;
        }
LAB_0081dc76:
        FUN_0099dba0();
        FUN_00787780();
        param_1[0xc] = 0;
        while( true ) {
          FUN_00787620();
          FUN_00792e00();
          local_20 = FUN_00cc8cb0();
          iVar2 = FUN_00b6fc00();
          if (iVar2 == 0) {
            param_1[9] = 0x46;
            FUN_00eaecdd();
            FUN_00e39660(&PTR_PTR_01553bd4,param_1);
            return;
          }
LAB_0081db0c:
          iVar2 = FUN_00cce6b0();
          if ((iVar2 != 0) || (4 < param_1[0xc])) break;
          while( true ) {
            FUN_00787620();
            FUN_00792e00();
            local_20 = FUN_00cc8cb0();
            iVar2 = FUN_00b6fc00();
            if (iVar2 == 0) {
              param_1[9] = 0x44;
              FUN_00eaecdd();
              FUN_00e39660(&PTR_PTR_01553bd4,param_1);
              return;
            }
LAB_0081db76:
            iVar2 = FUN_00cce6b0();
            if (iVar2 != 0) break;
            FUN_00787620();
            FUN_00792c80();
            FUN_007876f0();
            local_1c = FUN_00973a50();
            iVar2 = FUN_0099db90();
            if (iVar2 == 0) {
              param_1[9] = 0x43;
              FUN_00eaecdd();
              FUN_00dfcb20();
              return;
            }
LAB_0081dbfd:
            FUN_0099dba0();
          }
          FUN_00787620();
          FUN_00792d60(0,0);
          FUN_007876f0();
          local_1c = FUN_00973a50();
          iVar2 = FUN_0099db90();
          if (iVar2 == 0) {
            param_1[9] = 0x45;
            FUN_00eaecdd();
            FUN_00dfcb20();
            return;
          }
LAB_0081db54:
          FUN_0099dba0();
          param_1[0xc] = param_1[0xc] + 1;
        }
        if (4 < param_1[0xc]) {
          FUN_007876b0();
          goto LAB_0081df74;
        }
        FUN_00787620();
        FUN_00792e00();
        local_20 = FUN_00cc8cb0();
        iVar2 = FUN_00b6fc00();
        if (iVar2 == 0) {
          param_1[9] = 0x47;
          FUN_00eaecdd();
          FUN_00e39660(&PTR_PTR_01553bd4,param_1);
          return;
        }
LAB_0081dad3:
        FUN_00cce6b0();
        FUN_00eaeca8();
        if (param_1[6] != 0) {
          FUN_00777680();
          if (*(int *)(DAT_01c28a7c + 0x20) == 0) {
            FUN_00eae9a0();
            FUN_00e9b11b(puVar11);
            puVar11 = (undefined1 *)0x81d153;
            FUN_00eaebef();
          }
          FUN_00e4e370();
        }
        FUN_00eaeca8();
        FUN_007876f0();
        local_1c = FUN_00973a50();
        iVar2 = FUN_0099db90();
        if (iVar2 == 0) {
          param_1[9] = 0x48;
          FUN_00eaecdd();
          FUN_00dfcb20();
          return;
        }
LAB_0081da44:
        FUN_0099dba0();
        if (param_1[7] == 0) {
          if (param_1[6] != 0) {
            FUN_00777680();
            if (*(int *)(DAT_01c28a7c + 0x24) == 0) {
              FUN_00eae9a0();
              FUN_00e9b12c(puVar11);
              FUN_00eaebef();
            }
            FUN_00e44450();
            FUN_009075c0();
          }
          FUN_00906aa0();
          FUN_007876b0();
          goto LAB_0081df74;
        }
        FUN_00787620();
        uVar4 = FUN_00777670();
        FUN_00792d60(0,uVar4);
        FUN_007876f0();
        local_1c = FUN_00973a50();
        iVar2 = FUN_0099db90();
        if (iVar2 == 0) {
          param_1[9] = 0x49;
          FUN_00eaecdd();
          FUN_00dfcb20();
          return;
        }
LAB_0081da20:
        FUN_0099dba0();
        param_1[7] = 0;
      }
      else {
        iVar2 = FUN_00772d90();
        param_1[10] = iVar2;
        if ((param_1[10] == -1) || (10 < param_1[10])) goto LAB_0081df74;
        if (*(char *)(*(int *)(param_1[2] + 4) + 0x3c) == '\0') {
          FUN_00eae9a0();
          FUN_00eaeca8();
          param_1[10] = param_1[10] + -1;
          if (*(int *)(param_1[2] + 0x14) == 0) {
            ppuVar6 = &PTR_DAT_01bfb07c;
          }
          else {
            ppuVar6 = &PTR_DAT_01bfa2f0;
          }
          *(undefined ***)(param_1[3] + 4) = ppuVar6;
          if (*(int *)(param_1[2] + 0x14) == 0) {
            ppuVar6 = &PTR_DAT_01bca168;
          }
          else {
            ppuVar6 = &PTR_DAT_01bcddf0;
          }
          *(undefined ***)(param_1[3] + 8) = ppuVar6;
          if (*(int *)(param_1[2] + 0x14) == 0) {
            iVar2 = 10;
          }
          else {
            iVar2 = 0x1b;
          }
          iVar3 = *(int *)(*(int *)(param_1[2] + 8) + 4);
          if ((iVar3 != 0) && (*(int *)(iVar3 + 0x28) != iVar2)) {
            if (*(char *)(*(int *)(iVar1 + 0x20) + 0x38) == '\0') {
              FUN_00906a20();
              FUN_007876b0();
              local_1c = FUN_00787840(0,0,0,0);
              if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
                param_1[9] = 10;
                FUN_00eaecdd();
                FUN_00da50a0();
                FUN_00dfc9c0();
                return;
              }
LAB_0081c587:
              if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
            }
            else {
              param_1[0xc] = 0;
              do {
                local_68 = *(undefined4 *)(*(int *)(iVar1 + 0x14) + 8);
                FUN_00eaeae1();
                iVar2 = FUN_00eae9a0();
                *(undefined4 *)(iVar2 + 4) = 0x236;
                FUN_00eaebca();
                iVar2 = FUN_00eae9a0();
                *(undefined4 *)(iVar2 + 4) = 0;
                FUN_00eaebca();
                FUN_0077a610(extraout_ECX_06,&PTR_DAT_01be3a98);
                local_1c = FUN_00975000();
                if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
                  param_1[9] = 4;
                  FUN_00eaecdd();
                  FUN_00da50a0();
                  FUN_00dfc9c0();
                  return;
                }
LAB_0081c935:
                if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
                local_20 = FUN_0077b0a0();
                if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
                  param_1[9] = 5;
                  FUN_00eaecdd();
                  FUN_00da50a0();
                  FUN_00dfca00();
                  return;
                }
LAB_0081c883:
                if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
                FUN_00eaecdd();
                param_1[0xc] = param_1[0xc] + 1;
                if ((5 < param_1[0xc]) && (param_1[6] == 0)) {
                  FUN_007876b0();
                  local_1c = FUN_00787840(0,0,0,0);
                  if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
                    param_1[9] = 6;
                    FUN_00eaecdd();
                    FUN_00da50a0();
                    FUN_00dfc9c0();
                    return;
                  }
LAB_0081c804:
                  if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
                    FUN_0099dbc0();
                  }
                  local_1c = FUN_00975000();
                  if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
                    param_1[9] = 7;
                    FUN_00eaecdd();
                    FUN_00da50a0();
                    FUN_00dfc9c0();
                    return;
                  }
LAB_0081c739:
                  if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
                    FUN_0099dbc0();
                  }
                  param_1[0xc] = 0;
                }
              } while (param_1[6] == 0);
              FUN_00eae9a0();
              FUN_00e9b170(puVar11);
              FUN_00e4e4a0();
              FUN_00eaeca8();
              puVar11 = *(undefined1 **)(iVar1 + 0x1c);
              local_1c = FUN_00975000(puVar11);
              if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
                param_1[9] = 8;
                FUN_00eaecdd();
                FUN_00da50a0();
                FUN_00dfc9c0();
                return;
              }
LAB_0081c638:
              if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
              if (param_1[7] != 0) {
                uVar4 = *(undefined4 *)(param_1[7] + 8);
                local_70 = *(undefined4 *)(*(int *)(iVar1 + 0x14) + 8);
                iVar2 = FUN_00eaeae1();
                *(undefined ***)(iVar2 + 8) = &PTR_DAT_01b948c4;
                iVar3 = FUN_00eae9a0();
                *(undefined4 *)(iVar3 + 4) = uVar4;
                FUN_00eaebca();
                iVar3 = FUN_00eae9a0();
                *(undefined4 *)(iVar3 + 4) = 0;
                FUN_00eaebca();
                FUN_0077a610(iVar2,&PTR_DAT_01befc64);
              }
              local_1c = FUN_00975000();
              if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
                param_1[9] = 9;
                FUN_00eaecdd();
                FUN_00da50a0();
                FUN_00dfc9c0();
                return;
              }
LAB_0081c5b6:
              if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
              param_1[7] = 0;
            }
          }
          while( true ) {
            local_24 = FUN_0077ac40();
            if ((*(uint *)(local_24 + 0x1c) & 0x1600000) == 0) {
              param_1[9] = 0xc;
              FUN_00eaecdd();
              FUN_00da50a0();
              FUN_00dfc9c0();
              return;
            }
LAB_0081c4d0:
            if ((*(uint *)(local_24 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            if (*(char *)(local_24 + 0x20) == '\0') break;
            local_1c = FUN_00975000();
            if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
              param_1[9] = 0xb;
              FUN_00eaecdd();
              FUN_00da50a0();
              FUN_00dfc9c0();
              return;
            }
LAB_0081c558:
            if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
          }
          while( true ) {
            local_24 = FUN_0077ac00();
            if ((*(uint *)(local_24 + 0x1c) & 0x1600000) == 0) {
              param_1[9] = 0xe;
              FUN_00eaecdd();
              FUN_00da50a0();
              FUN_00dfc9c0();
              return;
            }
LAB_0081c376:
            if ((*(uint *)(local_24 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            if (*(char *)(local_24 + 0x20) != '\0') break;
            local_74 = *(undefined4 *)(*(int *)(iVar1 + 0x14) + 8);
            FUN_00eaeae1();
            iVar2 = FUN_00eae9a0();
            *(undefined4 *)(iVar2 + 4) = 0;
            FUN_00eaebca();
            FUN_0077a610(extraout_ECX_03,&PTR_DAT_01be70d8);
            local_1c = FUN_00975000();
            if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
              param_1[9] = 0xd;
              FUN_00eaecdd();
              FUN_00da50a0();
              FUN_00dfc9c0();
              return;
            }
LAB_0081c453:
            if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
          }
          while( true ) {
            local_24 = FUN_0077af00();
            if ((*(uint *)(local_24 + 0x1c) & 0x1600000) == 0) {
              param_1[9] = 0x10;
              FUN_00eaecdd();
              FUN_00da50a0();
              FUN_00dfc9c0();
              return;
            }
LAB_0081c245:
            if ((*(uint *)(local_24 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            if (*(char *)(local_24 + 0x20) != '\0') break;
            FUN_00906a20();
            FUN_00782420();
            local_1c = FUN_00975000();
            if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
              param_1[9] = 0xf;
              FUN_00eaecdd();
              FUN_00da50a0();
              FUN_00dfc9c0();
              return;
            }
LAB_0081c2f9:
            if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
          }
          FUN_0077ae70();
          param_1[0xc] = 0;
          while (param_1[0xc] < 5) {
            FUN_00eae9a0();
            FUN_00eaeca8();
            *(undefined4 *)(param_1[4] + 4) = 0;
            param_1[0xd] = 0;
            do {
              local_14 = FUN_0077abc0();
              if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
                param_1[9] = 0x11;
                FUN_00eaecdd();
                FUN_00da50a0();
                FUN_00dfca00();
                return;
              }
LAB_0081c1a2:
              if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
              FUN_00eaebef();
              local_28 = FUN_0077acc0();
              if ((*(uint *)(local_28 + 0x1c) & 0x1600000) == 0) {
                param_1[9] = 0x12;
                FUN_00eaecdd();
                FUN_00da50a0();
                FUN_00dfca00();
                return;
              }
LAB_0081c115:
              if ((*(uint *)(local_28 + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
              FUN_00eaecdd();
              local_1c = FUN_00975000();
              if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
                param_1[9] = 0x13;
                FUN_00eaecdd();
                FUN_00da50a0();
                FUN_00dfc9c0();
                return;
              }
LAB_0081be00:
              if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
              if ((*(int *)(*(int *)(param_1[2] + 8) + 4) != 0) && (param_1[8] != 0)) {
                if (*(int *)(param_1[2] + 0xc) == 0) {
                  FUN_00eae9a0();
                  FUN_00e9b14e(puVar11);
                  puVar11 = (undefined1 *)0x81be7e;
                  FUN_00eaec5e();
                }
                FUN_00e4ee90();
                iVar2 = DAT_01c28a7c;
                if (*(int *)(DAT_01c28a7c + 0x10) == 0) {
                  FUN_00eae9a0();
                  FUN_00e9b0d7(puVar11);
                  puVar11 = (undefined1 *)0x81bed9;
                  FUN_00eaebef();
                }
                FUN_00e4ee90();
                if (*(int *)(*(int *)(param_1[2] + 8) + 0xc) == 0) {
                  FUN_00eae9a0();
                  FUN_00e9b13d(puVar11);
                  puVar11 = (undefined1 *)0x81bf3a;
                  FUN_00eaebef();
                }
                FUN_00e44450();
                local_f0 = *(int *)(iVar2 + 0x14);
                if (local_f0 == 0) {
                  FUN_00eae9a0();
                  FUN_00e9b0e8(puVar11);
                  FUN_00eaebef();
                  local_f0 = extraout_ECX_02;
                }
                FUN_00eae9a0();
                FUN_00cf24b0(0,0,0,local_f0);
                FUN_00e4ee50();
                puVar11 = (undefined1 *)(param_1[4] + 4);
                FUN_00e4e3a0();
                FUN_00eaebca();
              }
              if ((*(int *)(param_1[4] + 4) == 0) &&
                 (param_1[0xd] = param_1[0xd] + 1, param_1[0xd] == (param_1[0xd] / 5) * 5)) {
                FUN_007876b0();
              }
              param_1[8] = 0;
              iVar2 = *(int *)(param_1[4] + 4);
            } while (iVar2 == 0);
            dVar10 = *(double *)(iVar2 + 4) / _DAT_018d7828;
            iVar3 = 0x7fffffff;
            if (dVar10 < _DAT_018d7830) {
              iVar3 = (int)(double)(-(ulonglong)(!NAN(dVar10) && !NAN(dVar10)) & (ulonglong)dVar10);
            }
            dVar10 = *(double *)(iVar2 + 0xc) / _DAT_018d7828;
            iVar2 = 0x7fffffff;
            if (dVar10 < _DAT_018d7830) {
              iVar2 = (int)(double)(-(ulonglong)(!NAN(dVar10) && !NAN(dVar10)) & (ulonglong)dVar10);
            }
            local_1c = FUN_007877c0(0,0,0,(double)iVar2,(double)iVar3);
            if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
              param_1[9] = 0x14;
              FUN_00eaecdd();
              FUN_00da50a0();
              FUN_00dfc9c0();
              return;
            }
LAB_0081bd81:
            if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            local_28 = FUN_0077acc0();
            if ((*(uint *)(local_28 + 0x1c) & 0x1600000) == 0) {
              param_1[9] = 0x15;
              FUN_00eaecdd();
              FUN_00da50a0();
              FUN_00dfca00();
              return;
            }
LAB_0081bd3f:
            if ((*(uint *)(local_28 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            if (*(int *)(local_28 + 0x20) == 0) {
              iVar2 = 0;
            }
            else {
              FUN_00eae9a0();
              FUN_00e9b181(puVar11);
              puVar11 = local_7c;
              iVar2 = FUN_00e4e4a0();
            }
            if ((iVar2 == 0) || (*(char *)(iVar2 + 0x2c) != '\0')) {
              FUN_00906aa0();
              FUN_007876b0();
            }
            else {
              FUN_00906a20();
              FUN_007876b0();
              uVar4 = *(undefined4 *)(*(int *)(param_1[4] + 4) + 0x28);
              local_80 = *(undefined4 *)(*(int *)(iVar1 + 0x14) + 8);
              uVar5 = FUN_00eaeae1();
              iVar2 = FUN_00eae9a0();
              *(undefined4 *)(iVar2 + 4) = uVar4;
              FUN_00eaebca();
              iVar2 = FUN_00eae9a0();
              *(undefined4 *)(iVar2 + 4) = 0;
              FUN_00eaebca();
              FUN_0077a610(uVar5,&PTR_DAT_01be3a98);
              local_1c = FUN_00975000();
              if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
                param_1[9] = 0x16;
                FUN_00eaecdd();
                FUN_00da50a0();
                FUN_00dfc9c0();
                return;
              }
LAB_0081bcad:
              if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
              param_1[0xe] = 0;
              while( true ) {
                local_20 = FUN_0077b0a0();
                if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
                  param_1[9] = 0x1a;
                  FUN_00eaecdd();
                  FUN_00da50a0();
                  FUN_00dfca00();
                  return;
                }
LAB_0081b922:
                if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
                if ((*(int *)(local_20 + 0x20) != 0) || (1 < param_1[0xe])) goto LAB_0081bb1f;
                local_1c = FUN_00975000();
                if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
                  param_1[9] = 0x17;
                  FUN_00eaecdd();
                  FUN_00da50a0();
                  FUN_00dfc9c0();
                  return;
                }
LAB_0081bc08:
                if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
                FUN_00906aa0();
                FUN_007876b0();
                local_28 = FUN_0077acc0();
                if ((*(uint *)(local_28 + 0x1c) & 0x1600000) == 0) {
                  param_1[9] = 0x18;
                  FUN_00eaecdd();
                  FUN_00da50a0();
                  FUN_00dfca00();
                  return;
                }
LAB_0081bbc6:
                if ((*(uint *)(local_28 + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
                if (*(int *)(local_28 + 0x20) == 0) {
                  iVar2 = 0;
                }
                else {
                  FUN_00eae9a0();
                  FUN_00e9b192(puVar11);
                  puVar11 = local_84;
                  iVar2 = FUN_00e4e4a0();
                }
                if ((iVar2 == 0) || (*(char *)(iVar2 + 0x2c) != '\0')) break;
                uVar4 = *(undefined4 *)(*(int *)(param_1[4] + 4) + 0x28);
                local_88 = *(undefined4 *)(*(int *)(iVar1 + 0x14) + 8);
                uVar5 = FUN_00eaeae1();
                iVar2 = FUN_00eae9a0();
                *(undefined4 *)(iVar2 + 4) = uVar4;
                FUN_00eaebca();
                iVar2 = FUN_00eae9a0();
                *(undefined4 *)(iVar2 + 4) = 0;
                FUN_00eaebca();
                FUN_0077a610(uVar5,&PTR_DAT_01be3a98);
                local_1c = FUN_00975000();
                if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
                  param_1[9] = 0x19;
                  FUN_00eaecdd();
                  FUN_00da50a0();
                  FUN_00dfc9c0();
                  return;
                }
LAB_0081bb91:
                if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
                param_1[0xe] = param_1[0xe] + 1;
              }
              FUN_00906aa0();
              FUN_007876b0();
LAB_0081bb1f:
              local_20 = FUN_0077b0a0();
              if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
                param_1[9] = 0x1b;
                FUN_00eaecdd();
                FUN_00da50a0();
                FUN_00dfca00();
                return;
              }
LAB_0081b896:
              if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
              if (*(int *)(local_20 + 0x20) != 0) {
                local_1c = FUN_00975000();
                if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
                  param_1[9] = 0x1c;
                  FUN_00eaecdd();
                  FUN_00da50a0();
                  FUN_00dfc9c0();
                  return;
                }
LAB_0081b762:
                if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
                local_8c = *(undefined4 *)(*(int *)(iVar1 + 0x14) + 8);
                iVar2 = FUN_00eaeae1();
                *(undefined ***)(iVar2 + 8) = &PTR_DAT_01b91278;
                iVar2 = FUN_00eae9a0();
                *(undefined4 *)(iVar2 + 4) = 0;
                FUN_00eaebca();
                iVar2 = FUN_00eae9a0();
                *(undefined4 *)(iVar2 + 4) = 0;
                FUN_00eaebca();
                FUN_0077a610(extraout_ECX_01,&PTR_DAT_01befc64);
                FUN_00906aa0();
                FUN_007876b0();
                param_1[0xf] = 0;
                *(undefined1 *)(param_1 + 0x10) = 0;
                while (param_1[0xf] < 10) {
                  local_1c = FUN_00975000();
                  if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
                    param_1[9] = 0x1d;
                    FUN_00eaecdd();
                    FUN_00da50a0();
                    FUN_00dfc9c0();
                    return;
                  }
LAB_0081b6df:
                  if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
                    FUN_0099dbc0();
                  }
                  local_14 = FUN_0077abc0();
                  if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
                    param_1[9] = 0x1e;
                    FUN_00eaecdd();
                    FUN_00da50a0();
                    FUN_00dfca00();
                    return;
                  }
LAB_0081b5a3:
                  if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
                    FUN_0099dbc0();
                  }
                  if ((*(int *)(local_14 + 0x20) != 0) &&
                     (*(char *)(*(int *)(local_14 + 0x20) + 0x69) != '\0')) {
LAB_0081b6a9:
                    *(undefined1 *)(param_1 + 0x10) = 1;
                    break;
                  }
                  local_18 = FUN_0077ad90();
                  if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
                    param_1[9] = 0x1f;
                    FUN_00eaecdd();
                    FUN_00da50a0();
                    FUN_00dfca00();
                    return;
                  }
LAB_0081b561:
                  if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
                    FUN_0099dbc0();
                  }
                  if (*(int *)(local_18 + 0x20) == 0) {
                    iVar2 = 0;
                  }
                  else {
                    if (*(int *)(param_1[2] + 0x10) == 0) {
                      FUN_00eae9a0();
                      FUN_00e9b15f(puVar11);
                      puVar11 = (undefined1 *)0x81b675;
                      FUN_00eaebef();
                    }
                    iVar2 = FUN_00e4e4a0(&PTR_DAT_01544bfc,local_90);
                  }
                  if ((iVar2 != 0) && (*(char *)(iVar2 + 0x3c) != '\0')) {
                    FUN_007876b0();
                    goto LAB_0081b6a9;
                  }
                  param_1[0xf] = param_1[0xf] + 1;
                }
                if ((char)param_1[0x10] != '\0') break;
                FUN_007876b0();
              }
              param_1[4] = 0;
            }
            param_1[0xc] = param_1[0xc] + 1;
          }
          local_1c = FUN_00975000();
          if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
            param_1[9] = 0x20;
            FUN_00eaecdd();
            FUN_00da50a0();
            FUN_00dfc9c0();
            return;
          }
LAB_0081b522:
          if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          param_1[3] = 0;
        }
        else {
          if (*(char *)(*(int *)(iVar1 + 0x20) + 0x38) == '\0') {
            local_14 = FUN_0077abc0();
            if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
              param_1[9] = 0x26;
              FUN_00eaecdd();
              FUN_00da50a0();
              FUN_00dfca00();
              return;
            }
LAB_0081b0c1:
            if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            FUN_00eaebef();
            iVar2 = *(int *)(*(int *)(param_1[2] + 8) + 4);
            if ((iVar2 != 0) && (*(int *)(iVar2 + 0x28) != 9)) {
              FUN_007876b0();
              local_1c = FUN_00787840(0,0,0,0);
              if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
                param_1[9] = 0x27;
                FUN_00eaecdd();
                FUN_00da50a0();
                FUN_00dfc9c0();
                return;
              }
LAB_0081b08b:
              if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
            }
          }
          else {
            local_14 = FUN_0077abc0();
            if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
              param_1[9] = 0x21;
              FUN_00eaecdd();
              FUN_00da50a0();
              FUN_00dfca00();
              return;
            }
LAB_0081b4a0:
            if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            FUN_00eaebef();
            iVar2 = *(int *)(*(int *)(param_1[2] + 8) + 4);
            if ((iVar2 != 0) && (*(int *)(iVar2 + 0x28) != 9)) {
              do {
                if (*(int *)(param_1[2] + 0x14) == 0) {
                  uVar4 = 0x237;
                }
                else {
                  uVar4 = 0x89b;
                }
                local_94 = *(undefined4 *)(*(int *)(iVar1 + 0x14) + 8);
                uVar5 = FUN_00eaeae1();
                iVar2 = FUN_00eae9a0();
                *(undefined4 *)(iVar2 + 4) = uVar4;
                FUN_00eaebca();
                iVar2 = FUN_00eae9a0();
                *(undefined4 *)(iVar2 + 4) = 0;
                FUN_00eaebca();
                FUN_0077a610(uVar5,&PTR_DAT_01be3a98);
                local_1c = FUN_00975000();
                if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
                  param_1[9] = 0x22;
                  FUN_00eaecdd();
                  FUN_00da50a0();
                  FUN_00dfc9c0();
                  return;
                }
LAB_0081b413:
                if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
                local_20 = FUN_0077b0a0();
                if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
                  param_1[9] = 0x23;
                  FUN_00eaecdd();
                  FUN_00da50a0();
                  FUN_00dfca00();
                  return;
                }
LAB_0081b316:
                if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
                FUN_00eaecdd();
              } while (param_1[6] == 0);
              if (*(int *)(DAT_01c28a7c + 0x18) == 0) {
                FUN_00eae9a0();
                FUN_00e9b0f9(puVar11);
                puVar11 = (undefined1 *)0x81b391;
                FUN_00eaebef();
              }
              FUN_00e4e4a0(&PTR_DAT_01543d24,local_98);
              FUN_00eaeca8();
              local_1c = FUN_00975000();
              if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
                param_1[9] = 0x24;
                FUN_00eaecdd();
                FUN_00da50a0();
                FUN_00dfc9c0();
                return;
              }
LAB_0081b20b:
              if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
              if (param_1[7] != 0) {
                uVar4 = *(undefined4 *)(param_1[7] + 8);
                local_9c = *(undefined4 *)(*(int *)(iVar1 + 0x14) + 8);
                iVar2 = FUN_00eaeae1();
                *(undefined ***)(iVar2 + 8) = &PTR_DAT_01b948c4;
                iVar3 = FUN_00eae9a0();
                *(undefined4 *)(iVar3 + 4) = uVar4;
                FUN_00eaebca();
                iVar3 = FUN_00eae9a0();
                *(undefined4 *)(iVar3 + 4) = 0;
                FUN_00eaebca();
                FUN_0077a610(iVar2,&PTR_DAT_01befc64);
              }
              local_1c = FUN_00975000();
              if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
                param_1[9] = 0x25;
                FUN_00eaecdd();
                FUN_00da50a0();
                FUN_00dfc9c0();
                return;
              }
LAB_0081b189:
              if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
              param_1[7] = 0;
            }
          }
          while( true ) {
            local_24 = FUN_0077ac00();
            if ((*(uint *)(local_24 + 0x1c) & 0x1600000) == 0) {
              param_1[9] = 0x29;
              FUN_00eaecdd();
              FUN_00da50a0();
              FUN_00dfc9c0();
              return;
            }
LAB_0081afa9:
            if ((*(uint *)(local_24 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            if (*(char *)(local_24 + 0x20) != '\0') break;
            local_a0 = *(undefined4 *)(*(int *)(iVar1 + 0x14) + 8);
            FUN_00eaeae1();
            iVar2 = FUN_00eae9a0();
            *(undefined4 *)(iVar2 + 4) = 0;
            FUN_00eaebca();
            FUN_0077a610(extraout_ECX_04,&PTR_DAT_01be70d8);
            local_1c = FUN_00975000();
            if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
              param_1[9] = 0x28;
              FUN_00eaecdd();
              FUN_00da50a0();
              FUN_00dfc9c0();
              return;
            }
LAB_0081b055:
            if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
          }
          local_1c = FUN_007877c0(0,0,0,DAT_018d7820,DAT_018d7818);
          if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
            param_1[9] = 0x2a;
            FUN_00eaecdd();
            FUN_00da50a0();
            FUN_00dfc9c0();
            return;
          }
LAB_0081af15:
          if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          FUN_00787780();
          while( true ) {
            local_20 = FUN_0077b0a0();
            if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
              param_1[9] = 0x32;
              FUN_00eaecdd();
              FUN_00da50a0();
              FUN_00dfca00();
              return;
            }
LAB_0081a9ca:
            if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            if (*(int *)(local_20 + 0x20) != 0) break;
            while( true ) {
              local_20 = FUN_0077b0a0();
              if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
                param_1[9] = 0x2e;
                FUN_00eaecdd();
                FUN_00da50a0();
                FUN_00dfca00();
                return;
              }
LAB_0081ac55:
              if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
              if (*(int *)(local_20 + 0x20) != 0) break;
              while( true ) {
                local_20 = FUN_0077b0a0();
                if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
                  param_1[9] = 0x2c;
                  FUN_00eaecdd();
                  FUN_00da50a0();
                  FUN_00dfca00();
                  return;
                }
LAB_0081ad7c:
                if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
                if (*(int *)(local_20 + 0x20) != 0) break;
                local_a4 = *(undefined4 *)(*(int *)(iVar1 + 0x14) + 8);
                FUN_00eaeae1();
                iVar2 = FUN_00eae9a0();
                *(undefined4 *)(iVar2 + 4) = 3;
                FUN_00eaebca();
                iVar2 = FUN_00eae9a0();
                *(undefined4 *)(iVar2 + 4) = 0;
                FUN_00eaebca();
                FUN_0077a610(extraout_ECX_05,&PTR_DAT_01be3a98);
                local_1c = FUN_00975000();
                if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
                  param_1[9] = 0x2b;
                  FUN_00eaecdd();
                  FUN_00da50a0();
                  FUN_00dfc9c0();
                  return;
                }
LAB_0081ae88:
                if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
              }
              local_a8 = *(undefined4 *)(*(int *)(iVar1 + 0x14) + 8);
              iVar2 = FUN_00eaeae1();
              *(undefined ***)(iVar2 + 8) = &PTR_DAT_01b91278;
              iVar2 = FUN_00eae9a0();
              *(undefined4 *)(iVar2 + 4) = 0;
              FUN_00eaebca();
              iVar2 = FUN_00eae9a0();
              *(undefined4 *)(iVar2 + 4) = 0;
              FUN_00eaebca();
              FUN_0077a610(extraout_ECX_00,&PTR_DAT_01befc64);
              local_1c = FUN_00975000();
              if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
                param_1[9] = 0x2d;
                FUN_00eaecdd();
                FUN_00da50a0();
                FUN_00dfc9c0();
                return;
              }
LAB_0081acef:
              if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
            }
            local_20 = FUN_0077b0a0();
            if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
              param_1[9] = 0x2f;
              FUN_00eaecdd();
              FUN_00da50a0();
              FUN_00dfca00();
              return;
            }
LAB_0081ac13:
            if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            if (*(int *)(local_20 + 0x20) != 0) {
              if (*(int *)(DAT_01c28a7c + 0x1c) == 0) {
                FUN_00eae9a0();
                FUN_00e9b10a(puVar11);
                puVar11 = (undefined1 *)0x81d5bc;
                FUN_00eaebef();
              }
              FUN_00e4e4a0(&PTR_DAT_01543d24,local_ac);
            }
            FUN_00eaeca8();
            local_1c = FUN_00975000();
            if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
              param_1[9] = 0x30;
              FUN_00eaecdd();
              FUN_00da50a0();
              FUN_00dfc9c0();
              return;
            }
LAB_0081ab08:
            if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            if (param_1[7] != 0) {
              uVar4 = *(undefined4 *)(param_1[7] + 8);
              iVar2 = FUN_00eaeae1();
              *(undefined ***)(iVar2 + 8) = &PTR_DAT_01b9125c;
              iVar3 = FUN_00eae9a0();
              *(undefined4 *)(iVar3 + 4) = uVar4;
              FUN_00eaebca();
              iVar3 = FUN_00eae9a0();
              *(undefined4 *)(iVar3 + 4) = 0;
              FUN_00eaebca();
              FUN_0077a610(iVar2,&PTR_DAT_01befc64);
            }
            local_1c = FUN_00975000();
            if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
              param_1[9] = 0x31;
              FUN_00eaecdd();
              FUN_00da50a0();
              FUN_00dfc9c0();
              return;
            }
LAB_0081aad1:
            if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            param_1[7] = 0;
          }
          iVar2 = FUN_00eaeae1();
          *(undefined ***)(iVar2 + 8) = &PTR_DAT_01ba04a8;
          iVar2 = FUN_00eae9a0();
          *(undefined4 *)(iVar2 + 4) = 1;
          FUN_00eaebca();
          iVar2 = FUN_00eae9a0();
          *(undefined4 *)(iVar2 + 4) = 0;
          FUN_00eaebca();
          FUN_0077a610(extraout_ECX,&PTR_DAT_01befc64);
          FUN_007876f0();
          local_1c = FUN_00973a50();
          iVar2 = FUN_0099db90();
          if (iVar2 == 0) {
            param_1[9] = 0x33;
            FUN_00eaecdd();
            FUN_00dfcb20();
            return;
          }
LAB_0081a8f8:
          FUN_0099dba0();
          local_5c[0] = 0;
          local_5c[1] = 0;
          local_5c[2] = 0;
          local_5c[3] = 0;
          local_5c[4] = 0;
          local_5c[5] = 0;
          FUN_0099d430();
          piVar7 = local_5c;
          piVar8 = local_40;
          for (iVar2 = 6; iVar2 != 0; iVar2 = iVar2 + -1) {
            *piVar8 = *piVar7;
            piVar7 = piVar7 + 1;
            piVar8 = piVar8 + 1;
          }
          FUN_0099d5d0();
          FUN_00de77e0();
          FUN_0099d5d0();
          FUN_0099d560();
          FUN_007876b0();
          if (param_1[10] == 10) {
            FUN_007876f0();
            local_1c = FUN_00973a50();
            iVar2 = FUN_0099db90();
            if (iVar2 == 0) {
              param_1[9] = 0x34;
              FUN_00eaecdd();
              FUN_00dfcb20();
              return;
            }
LAB_0081a8d9:
            FUN_0099dba0();
          }
        }
      }
      param_1[2] = 0;
      param_1[6] = 0;
LAB_0081cc07:
      if (9 < param_1[10]) {
        FUN_007876b0();
LAB_0081df74:
        param_1[9] = -2;
        param_1[1] = 0;
        FUN_0099cd70();
        return;
      }
      FUN_00eae9a0();
      FUN_00eaeca8();
      FUN_00eaebef();
      param_1[0xb] = 0;
    }
    local_14 = FUN_0077abc0();
    if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
      param_1[9] = 0;
      FUN_00eaecdd();
      FUN_00da50a0();
      FUN_00dfca00();
      return;
    }
  } while( true );
}

