/* Address: 0080b8c0 | Ghidra name: FUN_0080b8c0 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_0080b8c0(double *param_1)

{
  undefined4 *puVar1;
  int iVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  int iVar5;
  undefined4 uVar6;
  int iVar7;
  undefined4 extraout_ECX;
  undefined4 extraout_ECX_00;
  undefined4 extraout_ECX_01;
  undefined4 extraout_ECX_02;
  int extraout_ECX_03;
  undefined4 extraout_ECX_04;
  float10 fVar8;
  int local_c0;
  uint local_a0;
  undefined4 local_98;
  undefined4 uStack_94;
  double dStack_90;
  double local_88;
  undefined4 uStack_80;
  undefined4 uStack_7c;
  undefined1 local_78 [4];
  undefined1 local_74 [4];
  undefined1 local_70 [4];
  undefined1 local_6c [12];
  undefined1 local_60 [4];
  int local_5c;
  undefined4 local_58;
  int local_54;
  uint local_50;
  char local_4c;
  undefined4 *local_48;
  uint local_44;
  int local_40;
  int local_34;
  int local_30;
  int local_24;
  int local_20;
  int local_1c;
  int local_18 [2];
  
  local_98 = 0;
  uStack_94 = 0;
  dStack_90 = 0.0;
  local_88 = 0.0;
  uStack_80 = 0;
  uStack_7c = 0;
  iVar5 = -0x60;
  do {
    *(undefined4 *)((int)local_18 + iVar5) = 0;
    *(undefined4 *)((int)local_18 + iVar5 + 4) = 0;
    *(undefined4 *)(&stack0xfffffff0 + iVar5) = 0;
    *(undefined4 *)(&stack0xfffffff4 + iVar5) = 0;
    *(undefined4 *)(&stack0xfffffff8 + iVar5) = 0;
    *(undefined4 *)(&stack0xfffffffc + iVar5) = 0;
    *(undefined4 *)(&stack0x00000000 + iVar5) = 0;
    *(undefined4 *)(&stack0x00000004 + iVar5) = 0;
    *(undefined4 *)(&stack0x00000008 + iVar5) = 0;
    *(undefined4 *)(&stack0x0000000c + iVar5) = 0;
    *(undefined4 *)(&stack0x00000010 + iVar5) = 0;
    *(undefined4 *)(&stack0x00000014 + iVar5) = 0;
    iVar5 = iVar5 + 0x30;
  } while (iVar5 != 0);
  local_18[1] = *(int *)(param_1 + 4);
  iVar2 = *(int *)(param_1 + 1);
  local_18[0] = iVar5;
  switch(local_18[1]) {
  case 0:
    local_18[0] = *(int *)(param_1 + 6);
    *(undefined4 *)(param_1 + 6) = 0;
    local_18[1] = -1;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    break;
  case 1:
    local_1c = *(int *)((int)param_1 + 0x34);
    *(undefined4 *)((int)param_1 + 0x34) = 0;
    local_18[1] = -1;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    goto LAB_0080c6e0;
  case 2:
    local_20 = *(int *)(param_1 + 7);
    *(undefined4 *)(param_1 + 7) = 0;
    local_18[1] = -1;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    goto LAB_0080c5bb;
  case 3:
    local_24 = *(int *)((int)param_1 + 0x3c);
    *(undefined4 *)((int)param_1 + 0x3c) = 0;
    local_18[1] = -1;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    goto LAB_0080c557;
  case 4:
    local_18[0] = *(int *)(param_1 + 6);
    *(undefined4 *)(param_1 + 6) = 0;
    local_18[1] = -1;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    goto LAB_0080c4ac;
  case 5:
    local_1c = *(int *)((int)param_1 + 0x34);
    *(undefined4 *)((int)param_1 + 0x34) = 0;
    local_18[1] = -1;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    goto LAB_0080c44a;
  case 6:
    local_30 = *(int *)(param_1 + 8);
    *(undefined4 *)(param_1 + 8) = 0;
    local_18[1] = -1;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    goto LAB_0080c394;
  case 7:
    local_24 = *(int *)((int)param_1 + 0x3c);
    *(undefined4 *)((int)param_1 + 0x3c) = 0;
    local_18[1] = -1;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    goto LAB_0080c2ec;
  case 8:
    local_20 = *(int *)(param_1 + 7);
    *(undefined4 *)(param_1 + 7) = 0;
    local_18[1] = -1;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    goto LAB_0080c28f;
  case 9:
    local_24 = *(int *)((int)param_1 + 0x3c);
    *(undefined4 *)((int)param_1 + 0x3c) = 0;
    local_18[1] = -1;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    goto LAB_0080c24f;
  case 10:
    local_20 = *(int *)(param_1 + 7);
    *(undefined4 *)(param_1 + 7) = 0;
    local_18[1] = -1;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    goto LAB_0080c1f5;
  case 0xb:
  case 0xc:
    goto switchD_0080b926_caseD_b;
  case 0xd:
    local_20 = *(int *)(param_1 + 7);
    *(undefined4 *)(param_1 + 7) = 0;
    local_18[1] = -1;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    goto LAB_0080c1a1;
  case 0xe:
    local_18[0] = *(int *)(param_1 + 6);
    *(undefined4 *)(param_1 + 6) = 0;
    local_18[1] = -1;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    goto LAB_0080c107;
  case 0xf:
    local_1c = *(int *)((int)param_1 + 0x34);
    *(undefined4 *)((int)param_1 + 0x34) = 0;
    local_18[1] = -1;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    goto LAB_0080c07d;
  case 0x10:
    local_1c = *(int *)((int)param_1 + 0x34);
    *(undefined4 *)((int)param_1 + 0x34) = 0;
    local_18[1] = -1;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    goto LAB_0080c043;
  case 0x11:
    local_30 = *(int *)(param_1 + 8);
    *(undefined4 *)(param_1 + 8) = 0;
    local_18[1] = -1;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    goto LAB_0080bf6c;
  case 0x12:
    local_18[0] = *(int *)(param_1 + 6);
    *(undefined4 *)(param_1 + 6) = 0;
    local_18[1] = -1;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    goto LAB_0080bd82;
  case 0x13:
    local_1c = *(int *)((int)param_1 + 0x34);
    *(undefined4 *)((int)param_1 + 0x34) = 0;
    local_18[1] = -1;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    goto LAB_0080bd3f;
  case 0x14:
    local_1c = *(int *)((int)param_1 + 0x34);
    *(undefined4 *)((int)param_1 + 0x34) = 0;
    local_18[1] = -1;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    goto LAB_0080bca7;
  case 0x15:
    local_5c = *(int *)((int)param_1 + 0x54);
    *(undefined4 *)((int)param_1 + 0x54) = 0;
    local_18[1] = -1;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    goto LAB_0080bb94;
  case 0x16:
    local_1c = *(int *)((int)param_1 + 0x34);
    *(undefined4 *)((int)param_1 + 0x34) = 0;
    local_18[1] = -1;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    goto LAB_0080bb52;
  case 0x17:
    local_5c = *(int *)((int)param_1 + 0x54);
    *(undefined4 *)((int)param_1 + 0x54) = 0;
    local_18[1] = -1;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    goto LAB_0080baea;
  case 0x18:
    local_5c = *(int *)((int)param_1 + 0x54);
    *(undefined4 *)((int)param_1 + 0x54) = 0;
    local_18[1] = -1;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    goto LAB_0080ba9f;
  case 0x19:
    local_1c = *(int *)((int)param_1 + 0x34);
    *(undefined4 *)((int)param_1 + 0x34) = 0;
    local_18[1] = -1;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    goto LAB_0080b98b;
  case 0x1a:
    local_1c = *(int *)((int)param_1 + 0x34);
    *(undefined4 *)((int)param_1 + 0x34) = 0;
    local_18[1] = -1;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
    goto LAB_0080b943;
  default:
    FUN_00eae9a0();
    FUN_00eaeca8();
    FUN_00eaebca();
    FUN_00787780();
    *(undefined4 *)((int)param_1 + 0x24) = 0;
    *(undefined1 *)(*(int *)((int)param_1 + 0xc) + 8) = 0;
    goto LAB_0080c84b;
  }
  do {
    if ((*(uint *)(local_18[0] + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    FUN_00eaecdd();
    local_1c = FUN_00975000();
    if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 4) = 1;
      FUN_00eaeca8();
      FUN_00da3f20();
      FUN_00dfc9c0();
      return;
    }
LAB_0080c6e0:
    if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if ((*(int *)(param_1 + 3) != 0) && (*(char *)(*(int *)(param_1 + 3) + 0x69) == '\0')) {
      local_20 = FUN_0077ad90();
      if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)(param_1 + 4) = 2;
        FUN_00eaecdd();
        FUN_00da3f20();
        FUN_00dfca00();
        return;
      }
LAB_0080c5bb:
      if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      if (*(int *)(DAT_01c28a64 + 8) == 0) {
        FUN_00eae9a0();
        FUN_00e9ad85();
        FUN_00eaebef();
      }
      FUN_00e4e4a0(&PTR_DAT_01544bfc,local_60);
      FUN_00eaebca();
      if (*(int *)(*(int *)(param_1 + 2) + 4) == 0) {
        FUN_00787780();
        local_18[0] = FUN_0077abc0();
        if ((*(uint *)(local_18[0] + 0x1c) & 0x1600000) == 0) {
          *(undefined4 *)(param_1 + 4) = 0xe;
          FUN_00eaecdd();
          FUN_00da3f20();
          FUN_00dfca00();
          return;
        }
LAB_0080c107:
        if ((*(uint *)(local_18[0] + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        FUN_00eaecdd();
        local_1c = FUN_00787840(0,0,0,0);
        if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
          *(undefined4 *)(param_1 + 4) = 0xf;
          FUN_00eaeca8();
          FUN_00da3f20();
          FUN_00dfc9c0();
          return;
        }
LAB_0080c07d:
        if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        while( true ) {
          local_30 = FUN_0077ac00();
          if ((*(uint *)(local_30 + 0x1c) & 0x1600000) == 0) {
            *(undefined4 *)(param_1 + 4) = 0x11;
            FUN_00eaeca8();
            FUN_00da3f20();
            FUN_00dfc9c0();
            return;
          }
LAB_0080bf6c:
          if ((*(uint *)(local_30 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          if (*(char *)(local_30 + 0x20) != '\0') break;
          FUN_00eaeae1();
          iVar5 = FUN_00eae9a0();
          *(undefined4 *)(iVar5 + 4) = 0;
          FUN_00eaebca();
          FUN_0077a610(extraout_ECX_01,&PTR_DAT_01be70d8);
          local_1c = FUN_00975000();
          if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
            *(undefined4 *)(param_1 + 4) = 0x10;
            FUN_00eaecdd();
            FUN_00da3f20();
            FUN_00dfc9c0();
            return;
          }
LAB_0080c043:
          if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
        }
        *param_1 = DAT_018d7110;
        while (_DAT_018d7118 < *param_1) {
          local_18[0] = FUN_0077abc0();
          if ((*(uint *)(local_18[0] + 0x1c) & 0x1600000) == 0) {
            *(undefined4 *)(param_1 + 4) = 0x12;
            FUN_00eaecdd();
            FUN_00da3f20();
            FUN_00dfca00();
            return;
          }
LAB_0080bd82:
          if ((*(uint *)(local_18[0] + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          FUN_00eaeca8();
          local_88 = *(double *)(*(int *)(param_1 + 3) + 0xc) / _DAT_018d70e0;
          fVar8 = (float10)FUN_00eb6460(DAT_018d70f0,
                                        *(double *)(*(int *)(param_1 + 3) + 4) / _DAT_018d70e0 -
                                        _DAT_018d70e8);
          dStack_90 = (double)fVar8;
          fVar8 = (float10)FUN_00eb6460(DAT_018d70f0,local_88 - _DAT_018d70f8);
          *param_1 = SQRT((double)fVar8 + dStack_90);
          uStack_94 = *(undefined4 *)(*(int *)(iVar2 + 0x14) + 8);
          FUN_00eaeae1();
          iVar5 = FUN_00eae9a0();
          *(undefined8 *)(iVar5 + 4) = DAT_018d7100;
          FUN_00eaebca();
          iVar5 = FUN_00eae9a0();
          *(undefined8 *)(iVar5 + 4) = DAT_018d7108;
          FUN_00eaebca();
          iVar5 = FUN_00eae9a0();
          *(undefined4 *)(iVar5 + 4) = 0;
          FUN_00eaebca();
          FUN_0077a610(extraout_ECX_00,&PTR_DAT_01bf1f80);
          local_1c = FUN_00975000();
          if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
            *(undefined4 *)(param_1 + 4) = 0x13;
            FUN_00eaeca8();
            FUN_00da3f20();
            FUN_00dfc9c0();
            return;
          }
LAB_0080bd3f:
          if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
        }
        FUN_00787780();
        *(undefined4 *)(param_1 + 5) = 0;
        while( true ) {
          local_5c = FUN_0077b0a0();
          if ((*(uint *)(local_5c + 0x1c) & 0x1600000) == 0) {
            *(undefined4 *)(param_1 + 4) = 0x17;
            FUN_00eaecdd();
            FUN_00da3f20();
            FUN_00dfca00();
            return;
          }
LAB_0080baea:
          if ((*(uint *)(local_5c + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          if ((*(int *)(local_5c + 0x20) != 0) || (4 < *(int *)(param_1 + 5))) break;
          while( true ) {
            local_5c = FUN_0077b0a0();
            if ((*(uint *)(local_5c + 0x1c) & 0x1600000) == 0) {
              *(undefined4 *)(param_1 + 4) = 0x15;
              FUN_00eaeca8();
              FUN_00da3f20();
              FUN_00dfca00();
              return;
            }
LAB_0080bb94:
            if ((*(uint *)(local_5c + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            if (*(int *)(local_5c + 0x20) != 0) break;
            FUN_00eaeae1();
            iVar5 = FUN_00eae9a0();
            *(undefined4 *)(iVar5 + 4) = 0x118;
            FUN_00eaebca();
            iVar5 = FUN_00eae9a0();
            *(undefined4 *)(iVar5 + 4) = 0;
            FUN_00eaebca();
            FUN_0077a610(extraout_ECX_02,&PTR_DAT_01be3a98);
            local_1c = FUN_00975000();
            if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
              *(undefined4 *)(param_1 + 4) = 0x14;
              FUN_00eaecdd();
              FUN_00da3f20();
              FUN_00dfc9c0();
              return;
            }
LAB_0080bca7:
            if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
          }
          iVar5 = FUN_00eaeae1();
          *(undefined ***)(iVar5 + 8) = &PTR_DAT_01b91278;
          iVar5 = FUN_00eae9a0();
          *(undefined4 *)(iVar5 + 4) = 2;
          FUN_00eaebca();
          iVar5 = FUN_00eae9a0();
          *(undefined4 *)(iVar5 + 4) = 0;
          FUN_00eaebca();
          FUN_0077a610(extraout_ECX,&PTR_DAT_01befc64);
          local_1c = FUN_00975000();
          if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
            *(undefined4 *)(param_1 + 4) = 0x16;
            FUN_00eaecdd();
            FUN_00da3f20();
            FUN_00dfc9c0();
            return;
          }
LAB_0080bb52:
          if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          *(int *)(param_1 + 5) = *(int *)(param_1 + 5) + 1;
        }
        if (4 < *(int *)(param_1 + 5)) {
          FUN_007876b0();
          goto LAB_0080d6af;
        }
        local_5c = FUN_0077b0a0();
        if ((*(uint *)(local_5c + 0x1c) & 0x1600000) == 0) {
          *(undefined4 *)(param_1 + 4) = 0x18;
          FUN_00eaecdd();
          FUN_00da3f20();
          FUN_00dfca00();
          return;
        }
LAB_0080ba9f:
        if ((*(uint *)(local_5c + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        if (*(int *)(local_5c + 0x20) != 0) {
          if (*(int *)(DAT_01c28a64 + 0x20) == 0) {
            FUN_00eae9a0();
            FUN_00e9adeb();
            FUN_00eaebef();
          }
          FUN_00e4e4a0(&PTR_DAT_01543d24,&local_98);
        }
        FUN_00eaeca8();
        local_1c = FUN_00975000();
        if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
          *(undefined4 *)(param_1 + 4) = 0x19;
          FUN_00eaecdd();
          FUN_00da3f20();
          FUN_00dfc9c0();
          return;
        }
LAB_0080b98b:
        if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        if (*(int *)((int)param_1 + 0x1c) == 0) {
          FUN_007876b0();
          goto LAB_0080d6af;
        }
        uVar6 = *(undefined4 *)(*(int *)((int)param_1 + 0x1c) + 8);
        iVar5 = FUN_00eaeae1();
        *(undefined ***)(iVar5 + 8) = &PTR_DAT_01b9125c;
        iVar7 = FUN_00eae9a0();
        *(undefined4 *)(iVar7 + 4) = uVar6;
        FUN_00eaebca();
        iVar7 = FUN_00eae9a0();
        *(undefined4 *)(iVar7 + 4) = 0;
        FUN_00eaebca();
        FUN_0077a610(iVar5,&PTR_DAT_01befc64);
        local_1c = FUN_00975000();
        if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
          *(undefined4 *)(param_1 + 4) = 0x1a;
          FUN_00eaecdd();
          FUN_00da3f20();
          FUN_00dfc9c0();
          return;
        }
LAB_0080b943:
        if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        *(undefined4 *)((int)param_1 + 0x1c) = 0;
LAB_0080b963:
        *(undefined4 *)(param_1 + 2) = 0;
        *(undefined4 *)(param_1 + 3) = 0;
      }
      else {
        uVar6 = FUN_00772d90();
        *(undefined4 *)((int)param_1 + 0x24) = uVar6;
        if ((*(char *)(*(int *)(*(int *)(param_1 + 2) + 4) + 0x3c) == '\0') ||
           (*(char *)(*(int *)(*(int *)(param_1 + 2) + 8) + 8) != '\0')) {
LAB_0080c58b:
          iVar5 = FUN_00909ad0();
          if ((iVar5 == 0) && (iVar5 = FUN_00909ad0(), iVar5 == 0)) {
            iVar5 = FUN_00909ad0();
            if ((iVar5 == 0) && (iVar5 = FUN_00909ad0(), iVar5 == 0)) {
              iVar5 = 1;
            }
            else {
              iVar5 = 2;
            }
          }
          else {
            iVar5 = 0;
          }
          if (iVar5 == 0) {
            do {
              FUN_00eae9a0();
              FUN_00eaeca8();
              FUN_00eaebef();
              local_18[0] = FUN_0077abc0();
              if ((*(uint *)(local_18[0] + 0x1c) & 0x1600000) == 0) {
                *(undefined4 *)(param_1 + 4) = 4;
                FUN_00eaecdd();
                FUN_00da3f20();
                FUN_00dfca00();
                return;
              }
LAB_0080c4ac:
              if ((*(uint *)(local_18[0] + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
              FUN_00eaecdd();
              if ((*(int *)(param_1 + 3) == 0) || (*(char *)(*(int *)(param_1 + 3) + 0x69) == '\0'))
              {
                iVar5 = *(int *)((int)param_1 + 0x14);
                if ((*(int *)(*(int *)(iVar5 + 8) + 4) == 0) || (iVar7 = FUN_00e4e3a0(), iVar7 == 0)
                   ) {
                  uVar6 = 0;
                }
                else {
                  uVar6 = *(undefined4 *)(iVar7 + 0xc);
                }
                *(undefined4 *)(iVar5 + 0x10) = uVar6;
                if (*(int *)(*(int *)(*(int *)((int)param_1 + 0x14) + 8) + 4) != 0) {
                  FUN_00e4e3a0();
                }
                FUN_00eaebef();
                uVar6 = FUN_00eae9a0();
                if (PTR_FUN_01c21b04 != (undefined *)0x0) {
                  FUN_00e8e290();
                }
                FUN_00e9ae40();
                FUN_00e23c20(&PTR_DAT_0155b30c,local_6c,uVar6);
                iVar5 = *(int *)(*(int *)((int)param_1 + 0x14) + 8);
                local_c0 = *(int *)(iVar5 + 0xc);
                if (local_c0 == 0) {
                  FUN_00eae9a0();
                  FUN_00e9ae2f();
                  FUN_00eaebef();
                  local_c0 = extraout_ECX_03;
                }
                uVar6 = FUN_00eae9a0(iVar5);
                FUN_00e9ae62(iVar5);
                local_30 = FUN_00787920(0,0,0,0,0,0,uVar6,local_c0,0);
                if ((*(uint *)(local_30 + 0x1c) & 0x1600000) == 0) {
                  *(undefined4 *)(param_1 + 4) = 6;
                  FUN_00eaecdd();
                  FUN_00da3f20();
                  FUN_00dfc9c0();
                  return;
                }
LAB_0080c394:
                if ((*(uint *)(local_30 + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
                if ((((*(char *)(local_30 + 0x20) != '\0') ||
                     (iVar5 = *(int *)(*(int *)(*(int *)((int)param_1 + 0x14) + 8) + 4), iVar5 == 0)
                     ) || (*(char *)(iVar5 + 0x3c) != '\0')) &&
                   (*(char *)(*(int *)(*(int *)(*(int *)((int)param_1 + 0x14) + 8) + 8) + 8) == '\0'
                   )) {
                  local_24 = FUN_0080afc0();
                  if ((*(uint *)(local_24 + 0x1c) & 0x1600000) == 0) {
                    *(undefined4 *)(param_1 + 4) = 7;
                    FUN_00eaecdd();
                    FUN_00da3f20();
                    FUN_00dfc9c0();
                    return;
                  }
LAB_0080c2ec:
                  if ((*(uint *)(local_24 + 0x1c) & 0x11000000) != 0x1000000) {
                    FUN_0099dbc0();
                  }
                  if (*(char *)(local_24 + 0x21) == '\0') goto LAB_0080b963;
                  *(undefined1 *)(*(int *)(*(int *)(*(int *)((int)param_1 + 0x14) + 8) + 8) + 8) = 1
                  ;
                }
                local_20 = FUN_0077ad90();
                if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
                  *(undefined4 *)(param_1 + 4) = 8;
                  FUN_00eaecdd();
                  FUN_00da3f20();
                  FUN_00dfca00();
                  return;
                }
LAB_0080c28f:
                if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
                if (*(int *)(local_20 + 0x20) != 0) {
                  if (*(int *)(DAT_01c28a64 + 0x10) == 0) {
                    FUN_00eae9a0();
                    FUN_00e9ada7();
                    FUN_00eaebef();
                  }
                  FUN_00e4e4a0(&PTR_DAT_01544bfc,local_70);
                }
                FUN_00eaebef();
                *(undefined4 *)((int)param_1 + 0x14) = 0;
              }
              else {
                local_1c = FUN_00975000();
                if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
                  *(undefined4 *)(param_1 + 4) = 5;
                  FUN_00eaecdd();
                  FUN_00da3f20();
                  FUN_00dfc9c0();
                  return;
                }
LAB_0080c44a:
                if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
              }
              iVar5 = *(int *)(*(int *)(param_1 + 2) + 4);
              if ((iVar5 == 0) ||
                 (*(char *)(*(int *)(*(int *)(param_1 + 2) + 8) + 8) == '\0' &&
                  *(char *)(iVar5 + 0x3c) != '\0')) goto LAB_0080b963;
            } while( true );
          }
          if (iVar5 == 1) {
            local_24 = FUN_0080afc0();
            if ((*(uint *)(local_24 + 0x1c) & 0x1600000) == 0) {
              *(undefined4 *)(param_1 + 4) = 9;
              FUN_00eaecdd();
              FUN_00da3f20();
              FUN_00dfc9c0();
              return;
            }
LAB_0080c24f:
            if ((*(uint *)(local_24 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
          }
          else {
            local_20 = FUN_0077ad90();
            if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
              *(undefined4 *)(param_1 + 4) = 10;
              FUN_00eaecdd();
              FUN_00da3f20();
              FUN_00dfca00();
              return;
            }
LAB_0080c1f5:
            if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            if (*(int *)(local_20 + 0x20) != 0) {
              if (*(int *)(DAT_01c28a64 + 0x14) == 0) {
                FUN_00eae9a0();
                FUN_00e9adb8();
                FUN_00eaebef();
              }
              FUN_00e4e4a0(&PTR_DAT_01544bfc,local_74);
            }
            FUN_00eaebef();
            iVar5 = *(int *)(*(int *)(param_1 + 2) + 4);
            if (iVar5 != 0) {
              if (*(char *)(iVar5 + 0x3c) != '\0') goto LAB_0080b963;
              if (*(int *)(iVar5 + 0x1c) != 0) {
                if (*(int *)(DAT_01c28a64 + 0x18) == 0) {
                  FUN_00eae9a0();
                  FUN_00e9adc9();
                  FUN_00eaebef();
                }
                FUN_00e4ee90();
                FUN_00e4ee50();
                FUN_00eaeca8();
                *(undefined4 *)(param_1 + 9) = 0;
                *(undefined4 *)((int)param_1 + 0x4c) = extraout_ECX_04;
                *(undefined4 *)(param_1 + 10) = 0;
switchD_0080b926_caseD_b:
                if (local_18[1] != 0xb) {
                  if (local_18[1] != 0xc) goto LAB_0080d187;
                  local_1c = *(int *)((int)param_1 + 0x34);
                  *(undefined4 *)((int)param_1 + 0x34) = 0;
                  local_18[1] = -1;
                  *(undefined4 *)(param_1 + 4) = 0xffffffff;
                  goto LAB_0080d16c;
                }
                local_30 = *(int *)(param_1 + 8);
                *(undefined4 *)(param_1 + 8) = 0;
                local_18[1] = -1;
                *(undefined4 *)(param_1 + 4) = 0xffffffff;
LAB_0080d0df:
                if ((*(uint *)(local_30 + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
                local_1c = FUN_00975000();
                if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
                  *(undefined4 *)(param_1 + 4) = 0xc;
                  FUN_00eaecdd();
                  FUN_00da3f20();
                  FUN_00dfc9c0();
                  return;
                }
LAB_0080d16c:
                if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
LAB_0080d187:
                iVar5 = FUN_00cd0850();
                if (iVar5 != 0) break;
                *(undefined4 *)((int)param_1 + 0x44) = 0;
                *(undefined4 *)(param_1 + 9) = 0;
                *(undefined4 *)((int)param_1 + 0x4c) = 0;
                *(undefined4 *)(param_1 + 10) = 0;
                local_20 = FUN_0077ad90();
                if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
                  *(undefined4 *)(param_1 + 4) = 0xd;
                  FUN_00eaeca8();
                  FUN_00da3f20();
                  FUN_00dfca00();
                  return;
                }
LAB_0080c1a1:
                if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
                if (*(int *)(local_20 + 0x20) != 0) {
                  if (*(int *)(DAT_01c28a64 + 0x1c) == 0) {
                    FUN_00eae9a0();
                    FUN_00e9adda();
                    FUN_00eaebef();
                  }
                  FUN_00e4e4a0(&PTR_DAT_01544bfc,&uStack_7c);
                }
                FUN_00eaebca();
              }
            }
            iVar5 = *(int *)(*(int *)(param_1 + 2) + 4);
            if ((iVar5 == 0) || (*(char *)(iVar5 + 0x3c) == '\0')) {
              if (iVar5 != 0) {
                FUN_00e4e3a0();
              }
              FUN_00906aa0();
              FUN_007876b0();
              goto LAB_0080d6af;
            }
          }
          goto LAB_0080b963;
        }
        local_24 = FUN_0080afc0();
        if ((*(uint *)(local_24 + 0x1c) & 0x1600000) == 0) {
          *(undefined4 *)(param_1 + 4) = 3;
          FUN_00eaecdd();
          FUN_00da3f20();
          FUN_00dfc9c0();
          return;
        }
LAB_0080c557:
        if ((*(uint *)(local_24 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        if (*(char *)(local_24 + 0x21) != '\0') {
          *(undefined1 *)(*(int *)(*(int *)(param_1 + 2) + 8) + 8) = 1;
          goto LAB_0080c58b;
        }
      }
LAB_0080c84b:
      if (0x13 < *(int *)((int)param_1 + 0x24)) {
LAB_0080d6af:
        *(undefined4 *)(param_1 + 4) = 0xfffffffe;
        *(undefined4 *)((int)param_1 + 0xc) = 0;
        if (*(int *)((int)param_1 + 0x2c) == 0) {
          if (PTR_FUN_01c22110 != (undefined *)0x0) {
            FUN_00e8eaee();
          }
          FUN_00eaeca8();
          return;
        }
        iVar5 = FUN_00c0a790();
        if (iVar5 != 0) {
          return;
        }
                    /* WARNING: Subroutine does not return */
        FUN_00931e50();
      }
      FUN_00eae9a0();
      FUN_00eaeca8();
      FUN_00eaebef();
    }
    local_18[0] = FUN_0077abc0();
    if ((*(uint *)(local_18[0] + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 4) = 0;
      FUN_00eaecdd();
      FUN_00da3f20();
      FUN_00dfca00();
      return;
    }
  } while( true );
  iVar5 = *(int *)(param_1 + 9);
  iVar7 = FUN_00eae9a0();
  *(undefined4 *)(iVar7 + 4) = *(undefined4 *)(iVar5 + 0xc);
  local_34 = *(int *)(iVar5 + 0x10) - *(int *)(iVar5 + 0x14);
  if (local_34 < 1) {
    local_34 = 1;
  }
  uVar6 = FUN_00eae9a0();
  if (PTR_FUN_01c21b04 != (undefined *)0x0) {
    FUN_00e8e290();
  }
  FUN_00e9ae73();
  FUN_00e21c80(&PTR_DAT_0155b170,local_78,uVar6);
  if ((local_40 == 0) || (*(int *)(local_40 + 8) < 1)) goto LAB_0080d187;
  if (PTR_LAB_01c23e7c != (undefined *)0x0) {
    FUN_00e8f54a();
  }
  local_54 = FUN_00b848a0();
  uVar4 = _UNK_018d712c;
  uVar3 = _UNK_018d7128;
  uVar6 = _UNK_018d7124;
  if (local_54 == 0) {
    local_48 = (undefined4 *)0x0;
    local_a0 = 0;
  }
  else {
    local_48 = (undefined4 *)(local_54 + 8);
    local_a0 = *(uint *)(local_54 + 4);
  }
  local_58 = 0;
  local_50 = 0;
  local_4c = '\0';
  local_44 = local_a0;
  if (local_a0 < 0x1b) {
    FUN_0099d6f0();
  }
  else {
    *local_48 = _DAT_018d7120;
    local_48[1] = uVar6;
    local_48[2] = uVar3;
    local_48[3] = uVar4;
    uVar4 = _UNK_018d713c;
    uVar3 = _UNK_018d7138;
    uVar6 = _UNK_018d7134;
    local_48[4] = _DAT_018d7130;
    local_48[5] = uVar6;
    local_48[6] = uVar3;
    local_48[7] = uVar4;
    uVar4 = _UNK_018d714c;
    uVar3 = _UNK_018d7148;
    uVar6 = _UNK_018d7144;
    local_48[8] = _DAT_018d7140;
    local_48[9] = uVar6;
    local_48[10] = uVar3;
    local_48[0xb] = uVar4;
    local_48[0xc] = 0x200075;
    *(undefined2 *)(local_48 + 0xd) = 0x5b;
    local_50 = 0x1b;
  }
  iVar5 = *(int *)(iVar5 + 4);
  if ((local_4c == '\0') && (iVar5 != 0)) {
    if (local_44 < local_50) goto LAB_0080d6a9;
    if (local_44 - local_50 < *(uint *)(iVar5 + 4)) goto LAB_0080d334;
    FUN_00930280(*(int *)(iVar5 + 4) * 2);
    local_50 = local_50 + *(int *)(iVar5 + 4);
  }
  else {
LAB_0080d334:
    FUN_0099d670();
  }
  if (local_50 <= local_44) {
    if (local_44 - local_50 < 2) {
      FUN_0099d6f0();
    }
    else {
      *(undefined4 *)((int)local_48 + local_50 * 2) = 0x280020;
      local_50 = local_50 + 2;
    }
    FUN_00de77e0();
    if (local_50 <= local_44) {
      puVar1 = (undefined4 *)((int)local_48 + local_50 * 2);
      if (local_44 - local_50 < 4) {
        FUN_0099d6f0();
      }
      else {
        *puVar1 = 0x5d0029;
        puVar1[1] = 0x780020;
        local_50 = local_50 + 4;
      }
      FUN_00de77e0();
      uVar4 = _UNK_018d715c;
      uVar3 = _UNK_018d7158;
      uVar6 = _UNK_018d7154;
      if (local_50 <= local_44) {
        puVar1 = (undefined4 *)((int)local_48 + local_50 * 2);
        if (local_44 - local_50 < 0x13) {
          FUN_0099d6f0();
        }
        else {
          *puVar1 = _DAT_018d7150;
          puVar1[1] = uVar6;
          puVar1[2] = uVar3;
          puVar1[3] = uVar4;
          uVar4 = _UNK_018d716c;
          uVar3 = _UNK_018d7168;
          uVar6 = _UNK_018d7164;
          puVar1[4] = _DAT_018d7160;
          puVar1[5] = uVar6;
          puVar1[6] = uVar3;
          puVar1[7] = uVar4;
          puVar1[8] = 0x430050;
          *(undefined2 *)(puVar1 + 9) = 0x20;
          local_50 = local_50 + 0x13;
        }
        FUN_00de77e0();
        if (local_50 <= local_44) {
          puVar1 = (undefined4 *)((int)local_48 + local_50 * 2);
          if (local_44 - local_50 < 7) {
            FUN_0099d6f0();
          }
          else {
            *puVar1 = 0x1edf0020;
            puVar1[1] = 0x4d0020;
            puVar1[2] = 0x700061;
            *(undefined2 *)(puVar1 + 3) = 0x20;
            local_50 = local_50 + 7;
          }
          FUN_00de77e0();
          uVar4 = _UNK_018d717c;
          uVar3 = _UNK_018d7178;
          uVar6 = _UNK_018d7174;
          if (local_50 <= local_44) {
            puVar1 = (undefined4 *)((int)local_48 + local_50 * 2);
            if (local_44 - local_50 < 0x10) {
              FUN_0099d6f0();
            }
            else {
              *puVar1 = _DAT_018d7170;
              puVar1[1] = uVar6;
              puVar1[2] = uVar3;
              puVar1[3] = uVar4;
              uVar4 = _UNK_018d718c;
              uVar3 = _UNK_018d7188;
              uVar6 = _UNK_018d7184;
              puVar1[4] = _DAT_018d7180;
              puVar1[5] = uVar6;
              puVar1[6] = uVar3;
              puVar1[7] = uVar4;
              local_50 = local_50 + 0x10;
            }
            FUN_0099d560();
            FUN_007876b0();
            FUN_0092af10();
            local_30 = FUN_007878b0();
            if ((*(uint *)(local_30 + 0x1c) & 0x1600000) == 0) {
              *(undefined4 *)(param_1 + 4) = 0xb;
              FUN_00eaecdd();
              FUN_00da3f20();
              FUN_00dfc9c0();
              return;
            }
            goto LAB_0080d0df;
          }
        }
      }
    }
  }
LAB_0080d6a9:
                    /* WARNING: Subroutine does not return */
  FUN_009318f0();
}

