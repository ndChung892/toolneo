/* Address: 007e51e0 | Ghidra name: FUN_007e51e0 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_007e51e0(int *param_1)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  int iVar4;
  int iVar5;
  undefined4 uVar6;
  undefined4 extraout_ECX;
  uint *puVar7;
  uint *puVar8;
  uint local_158 [12];
  uint local_128 [6];
  uint local_110 [6];
  uint local_f8 [6];
  uint local_e0 [6];
  uint local_c8 [4];
  int local_b8;
  uint local_b4;
  uint local_b0 [4];
  int local_a0;
  uint local_9c;
  uint local_98 [4];
  int local_88;
  uint local_84;
  uint local_80 [4];
  int local_70;
  uint local_6c;
  uint local_68 [4];
  int local_58;
  uint local_54;
  uint local_50 [4];
  int local_40;
  uint local_3c;
  int local_38;
  int local_34;
  undefined4 local_30;
  int local_2c;
  uint local_28;
  undefined1 local_24;
  undefined4 *local_20;
  uint local_1c;
  int local_18 [2];
  
  local_158[0] = 0;
  local_158[1] = 0;
  local_158[2] = 0;
  local_158[3] = 0;
  local_158[4] = 0;
  local_158[5] = 0;
  local_158[6] = 0;
  local_158[7] = 0;
  iVar4 = -0x120;
  do {
    *(undefined4 *)((int)local_18 + iVar4) = 0;
    *(undefined4 *)((int)local_18 + iVar4 + 4) = 0;
    *(undefined4 *)(&stack0xfffffff0 + iVar4) = 0;
    *(undefined4 *)(&stack0xfffffff4 + iVar4) = 0;
    *(undefined4 *)(&stack0xfffffff8 + iVar4) = 0;
    *(undefined4 *)(&stack0xfffffffc + iVar4) = 0;
    *(undefined4 *)(&stack0x00000000 + iVar4) = 0;
    *(undefined4 *)(&stack0x00000004 + iVar4) = 0;
    *(undefined4 *)(&stack0x00000008 + iVar4) = 0;
    *(undefined4 *)(&stack0x0000000c + iVar4) = 0;
    *(undefined4 *)(&stack0x00000010 + iVar4) = 0;
    *(undefined4 *)(&stack0x00000014 + iVar4) = 0;
    iVar4 = iVar4 + 0x30;
  } while (iVar4 != 0);
  iVar5 = *param_1;
  local_18[0] = iVar4;
  local_18[1] = iVar4;
  switch(param_1[2]) {
  case 0:
    local_18[1] = param_1[7];
    param_1[7] = 0;
    param_1[2] = -1;
    while( true ) {
      if ((*(uint *)(local_18[1] + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      iVar4 = FUN_00eaeae1();
      *(undefined ***)(iVar4 + 8) = &PTR_DAT_01b8f9bc;
      *(undefined ***)(iVar4 + 0xc) = &PTR_DAT_01be2ed8;
      FUN_0077a610(iVar4,&PTR_DAT_01be3a14);
      local_18[1] = FUN_00975000(*(undefined4 *)(iVar5 + 0x1c));
      if ((*(uint *)(local_18[1] + 0x1c) & 0x1600000) == 0) {
        param_1[2] = 1;
        FUN_00eaecdd();
        FUN_00da10e0();
        FUN_00dfc9c0();
        return;
      }
LAB_007e6025:
      if ((*(uint *)(local_18[1] + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      local_18[0] = FUN_0077ba70();
      if ((*(uint *)(local_18[0] + 0x1c) & 0x1600000) == 0) {
        param_1[2] = 2;
        FUN_00eaecdd();
        FUN_00da10e0();
        FUN_00dfca00(&PTR_DAT_01553e04);
        return;
      }
LAB_007e5fab:
      if ((*(uint *)(local_18[0] + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      FUN_00eaeca8();
      if (param_1[1] != 0) break;
      if (PTR_LAB_01c23e7c != (undefined *)0x0) {
        FUN_00e8f54a();
      }
      local_2c = FUN_00b848a0();
      uVar3 = _UNK_018d602c;
      uVar2 = _UNK_018d6028;
      uVar6 = _UNK_018d6024;
      if (local_2c == 0) {
        local_20 = (undefined4 *)0x0;
        local_1c = 0;
      }
      else {
        local_20 = (undefined4 *)(local_2c + 8);
        local_1c = *(uint *)(local_2c + 4);
      }
      local_30 = 0;
      local_28 = 0;
      local_24 = 0;
      if (local_1c < 9) {
        FUN_0099d6f0();
      }
      else {
        *local_20 = _DAT_018d6020;
        local_20[1] = uVar6;
        local_20[2] = uVar2;
        local_20[3] = uVar3;
        *(undefined2 *)(local_20 + 4) = 0x20;
        local_28 = 9;
      }
      FUN_00de77e0();
      if (local_1c < local_28) goto LAB_007e6734;
      if (local_1c - local_28 < 0x31) {
        FUN_0099d6f0();
      }
      else {
        FUN_00930280(0x62);
        local_28 = local_28 + 0x31;
      }
      FUN_0099d560();
      FUN_007876b0();
      param_1[4] = param_1[4] + 1;
LAB_007e61a5:
      if (3 < param_1[4]) break;
      FUN_00787780();
      local_18[1] = FUN_00975000(*(undefined4 *)(iVar5 + 0x1c));
      if ((*(uint *)(local_18[1] + 0x1c) & 0x1600000) == 0) {
        param_1[2] = 0;
        FUN_00eaecdd();
        FUN_00da10e0();
        FUN_00dfc9c0();
        return;
      }
    }
    if (param_1[1] == 0) {
      FUN_007876b0();
      goto LAB_007e673a;
    }
    if (*(char *)(param_1[1] + 0x1c) == '\0') {
      FUN_0077b520(&PTR_DAT_01be15ec,&PTR_DAT_01b9b7a0);
      local_18[1] = FUN_00975000(*(undefined4 *)(iVar5 + 0x1c));
      if ((*(uint *)(local_18[1] + 0x1c) & 0x1600000) == 0) {
        param_1[2] = 3;
        FUN_00eaecdd();
        FUN_00da10e0();
        FUN_00dfc9c0();
        return;
      }
      goto LAB_007e5f06;
    }
    goto LAB_007e646d;
  case 1:
    local_18[1] = param_1[7];
    param_1[7] = 0;
    param_1[2] = -1;
    goto LAB_007e6025;
  case 2:
    local_18[0] = param_1[8];
    param_1[8] = 0;
    param_1[2] = -1;
    goto LAB_007e5fab;
  case 3:
    local_18[1] = param_1[7];
    param_1[7] = 0;
    param_1[2] = -1;
LAB_007e5f06:
    if ((*(uint *)(local_18[1] + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    FUN_0077b790(&PTR_DAT_01bf9a84,&PTR_DAT_01bf0e88,&PTR_DAT_01b9b81c);
    local_18[1] = FUN_00975000(*(undefined4 *)(iVar5 + 0x1c));
    if ((*(uint *)(local_18[1] + 0x1c) & 0x1600000) == 0) {
      param_1[2] = 4;
      FUN_00eaecdd();
      FUN_00da10e0();
      FUN_00dfc9c0();
      return;
    }
    break;
  case 4:
    local_18[1] = param_1[7];
    param_1[7] = 0;
    param_1[2] = -1;
    break;
  case 5:
    local_18[0] = param_1[8];
    param_1[8] = 0;
    param_1[2] = -1;
    local_18[1] = 0;
    goto LAB_007e5dd4;
  case 6:
    local_18[1] = param_1[7];
    param_1[7] = 0;
    param_1[2] = -1;
    goto LAB_007e5d2f;
  case 7:
    local_18[1] = param_1[7];
    param_1[7] = 0;
    param_1[2] = -1;
    goto LAB_007e5c99;
  case 8:
    local_34 = param_1[9];
    param_1[9] = 0;
    param_1[2] = -1;
    goto LAB_007e5bdd;
  case 9:
    local_38 = param_1[10];
    param_1[10] = 0;
    param_1[2] = -1;
    local_18[1] = 0;
    goto LAB_007e5acf;
  case 10:
    local_18[1] = param_1[7];
    param_1[7] = 0;
    param_1[2] = -1;
    goto LAB_007e5a50;
  case 0xb:
    local_18[1] = param_1[7];
    param_1[7] = 0;
    param_1[2] = -1;
    goto LAB_007e5a21;
  case 0xc:
    local_18[0] = param_1[8];
    param_1[8] = 0;
    param_1[2] = -1;
LAB_007e59bd:
    if ((*(uint *)(local_18[0] + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if ((*(int *)(local_18[0] + 0x20) != 0) &&
       (*(char *)(*(int *)(local_18[0] + 0x20) + 0x1c) != '\0')) {
      *(undefined1 *)((int)param_1 + 0x15) = 1;
      FUN_00eaecdd();
    }
    goto LAB_007e59f4;
  case 0xd:
    local_18[1] = param_1[7];
    param_1[7] = 0;
    param_1[2] = -1;
    goto LAB_007e5988;
  case 0xe:
    local_18[0] = param_1[8];
    param_1[8] = 0;
    param_1[2] = -1;
    goto LAB_007e592c;
  case 0xf:
    local_18[0] = param_1[8];
    param_1[8] = 0;
    param_1[2] = -1;
    goto LAB_007e5895;
  case 0x10:
    local_18[1] = param_1[7];
    param_1[7] = 0;
    param_1[2] = -1;
    goto LAB_007e5860;
  case 0x11:
    local_18[0] = param_1[8];
    param_1[8] = 0;
    param_1[2] = -1;
    goto LAB_007e5257;
  default:
    if ((*(char *)(*(int *)(*(int *)(iVar5 + 4) + 0xfc) + 0x38) == '\0') &&
       ((*(int *)(*(int *)(*(int *)(iVar5 + 4) + 0xf8) + 8) == 0 ||
        (iVar4 = FUN_00909ad0(), iVar4 == 0)))) {
      FUN_007876b0();
      param_1[1] = 0;
      param_1[4] = 0;
      goto LAB_007e61a5;
    }
    iVar4 = *(int *)(*(int *)(iVar5 + 4) + 0xfc);
    if (((*(byte *)(iVar4 + 0x34) & 1) == 0) || (*(char *)(iVar4 + 0x38) != '\x01')) {
      FUN_00b6cb10();
    }
    FUN_00906aa0(&PTR_DAT_01b40da0);
    FUN_007876b0();
    goto LAB_007e673a;
  }
  if ((*(uint *)(local_18[1] + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  local_18[0] = FUN_0077ba70();
  if ((*(uint *)(local_18[0] + 0x1c) & 0x1600000) == 0) {
    param_1[2] = 5;
    FUN_00eaecdd();
    FUN_00da10e0();
    FUN_00dfca00(&PTR_DAT_01553e04);
    return;
  }
LAB_007e5dd4:
  if ((*(uint *)(local_18[0] + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  iVar4 = *(int *)(local_18[0] + 0x20);
  *(undefined1 *)(param_1 + 5) = 0;
  if ((iVar4 != 0) && (*(char *)(iVar4 + 0x1d) == '\0')) {
    FUN_0077bab0();
    *(undefined1 *)(param_1 + 5) = 1;
    local_18[1] = FUN_00975000(*(undefined4 *)(iVar5 + 0x1c));
    if ((*(uint *)(local_18[1] + 0x1c) & 0x1600000) == 0) {
      param_1[2] = 6;
      FUN_00eaecdd();
      FUN_00da10e0();
      FUN_00dfc9c0();
      return;
    }
LAB_007e5d2f:
    if ((*(uint *)(local_18[1] + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
  }
  if ((char)param_1[5] == '\0') {
    FUN_0077b520(&PTR_DAT_01bed970,&PTR_DAT_01b9b81c);
  }
  local_18[1] = FUN_00975000(*(undefined4 *)(iVar5 + 0x1c));
  if ((*(uint *)(local_18[1] + 0x1c) & 0x1600000) == 0) {
    param_1[2] = 7;
    FUN_00eaecdd();
    FUN_00da10e0();
    FUN_00dfc9c0();
    return;
  }
LAB_007e5c99:
  if ((*(uint *)(local_18[1] + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  *(undefined1 *)((int)param_1 + 0x15) = 0;
  param_1[4] = 0;
  while (param_1[4] < 4) {
    local_34 = FUN_0077b060();
    if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
      param_1[2] = 8;
      FUN_00eaecdd();
      FUN_00da10e0();
      FUN_00dfca00(&PTR_DAT_01569c68);
      return;
    }
LAB_007e5bdd:
    if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    iVar4 = *(int *)(*(int *)(local_34 + 0x20) + 8);
    if ((iVar4 == 0) || (iVar4 = FUN_00e51370(&PTR_PTR_0154a108,iVar4,0), iVar4 < 0)) {
      local_18[0] = FUN_0077ba70();
      if ((*(uint *)(local_18[0] + 0x1c) & 0x1600000) == 0) {
        param_1[2] = 0xc;
        FUN_00eaecdd();
        FUN_00da10e0();
        FUN_00dfca00(&PTR_DAT_01553e04);
        return;
      }
      goto LAB_007e59bd;
    }
    local_38 = FUN_0077b0a0(&PTR_DAT_01bb04a8);
    if ((*(uint *)(local_38 + 0x1c) & 0x1600000) == 0) {
      param_1[2] = 9;
      FUN_00eaecdd();
      FUN_00da10e0();
      FUN_00dfca00(&PTR_DAT_01553b90);
      return;
    }
LAB_007e5acf:
    if ((*(uint *)(local_38 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if (*(int *)(local_38 + 0x20) == 0) {
      local_18[1] = FUN_00975000(*(undefined4 *)(iVar5 + 0x1c));
      if ((*(uint *)(local_18[1] + 0x1c) & 0x1600000) == 0) {
        param_1[2] = 0xb;
        FUN_00eaecdd();
        FUN_00da10e0();
        FUN_00dfc9c0();
        return;
      }
LAB_007e5a21:
      if ((*(uint *)(local_18[1] + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
    }
    else {
      iVar4 = FUN_00eaeae1();
      *(undefined ***)(iVar4 + 8) = &PTR_DAT_01bb04a8;
      iVar4 = FUN_00eae9a0(iVar4);
      *(undefined4 *)(iVar4 + 4) = 4;
      FUN_00eaebca();
      iVar4 = FUN_00eae9a0();
      *(undefined4 *)(iVar4 + 4) = 0;
      FUN_00eaebca();
      FUN_0077a610(extraout_ECX,&PTR_DAT_01befc64);
      local_18[1] = FUN_00975000(*(undefined4 *)(iVar5 + 0x1c));
      if ((*(uint *)(local_18[1] + 0x1c) & 0x1600000) == 0) {
        param_1[2] = 10;
        FUN_00eaecdd();
        FUN_00da10e0();
        FUN_00dfc9c0();
        return;
      }
LAB_007e5a50:
      if ((*(uint *)(local_18[1] + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
    }
    local_18[1] = FUN_00975000(*(undefined4 *)(iVar5 + 0x1c));
    if ((*(uint *)(local_18[1] + 0x1c) & 0x1600000) == 0) {
      param_1[2] = 0xd;
      FUN_00eaecdd();
      FUN_00da10e0();
      FUN_00dfc9c0();
      return;
    }
LAB_007e5988:
    if ((*(uint *)(local_18[1] + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    param_1[4] = param_1[4] + 1;
  }
LAB_007e59f4:
  if (*(char *)((int)param_1 + 0x15) == '\0') {
    FUN_007876b0();
  }
  else {
    FUN_0077b7e0(0x342);
    local_18[0] = FUN_0077ba70();
    if ((*(uint *)(local_18[0] + 0x1c) & 0x1600000) == 0) {
      param_1[2] = 0xe;
      FUN_00eaecdd();
      FUN_00da10e0();
      FUN_00dfca00(&PTR_DAT_01553e04);
      return;
    }
LAB_007e592c:
    if ((*(uint *)(local_18[0] + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    FUN_00eaecdd();
    if (param_1[1] != 0) {
LAB_007e646d:
      FUN_0099d430(2);
      puVar7 = local_e0;
      puVar8 = local_50;
      for (iVar4 = 6; iVar4 != 0; iVar4 = iVar4 + -1) {
        *puVar8 = *puVar7;
        puVar7 = puVar7 + 1;
        puVar8 = puVar8 + 1;
      }
      if (local_50[2] <= local_3c) {
        if (local_3c - local_50[2] < 0x2d) {
          FUN_0099d6f0();
        }
        else {
          FUN_00930280(0x5a);
          local_50[2] = local_50[2] + 0x2d;
        }
        FUN_00de77e0();
        if (local_50[2] <= local_3c) {
          if (local_3c == local_50[2]) {
            FUN_0099d6f0();
          }
          else {
            *(undefined2 *)(local_40 + local_50[2] * 2) = 0x2f;
            local_50[2] = local_50[2] + 1;
          }
          FUN_00de77e0();
          FUN_0099d560();
          FUN_007876b0();
          FUN_0099d430(2);
          puVar7 = local_f8;
          puVar8 = local_68;
          for (iVar4 = 6; iVar4 != 0; iVar4 = iVar4 + -1) {
            *puVar8 = *puVar7;
            puVar7 = puVar7 + 1;
            puVar8 = puVar8 + 1;
          }
          FUN_00de77e0();
          if (local_68[2] <= local_54) {
            if (local_54 == local_68[2]) {
              FUN_0099d6f0();
            }
            else {
              *(undefined2 *)(local_58 + local_68[2] * 2) = 0x2f;
              local_68[2] = local_68[2] + 1;
            }
            FUN_00de77e0();
            if (local_68[2] <= local_54) {
              puVar1 = (undefined4 *)(local_58 + local_68[2] * 2);
              if (local_54 - local_68[2] < 5) {
                FUN_0099d6f0();
              }
              else {
                *puVar1 = 0x6c0020;
                puVar1[1] = 0x1ee301b0;
                *(undefined2 *)(puVar1 + 2) = 0x74;
                local_68[2] = local_68[2] + 5;
              }
              FUN_0099d560();
              FUN_00cbc210();
              FUN_00b6c8e0();
              iVar4 = param_1[1];
              if (*(int *)(iVar4 + 0x10) < *(int *)(iVar4 + 0x14)) {
                if (*(int *)(iVar4 + 0x18) < 1) {
                  param_1[3] = *(int *)(iVar4 + 0x10);
                  param_1[4] = 0;
                  while (param_1[4] < *(int *)(*(int *)(param_1[1] + 0xc) + 8)) {
                    FUN_0077bae0(param_1[4]);
                    local_18[0] = FUN_0077ba70();
                    if ((*(uint *)(local_18[0] + 0x1c) & 0x1600000) == 0) {
                      param_1[2] = 0xf;
                      FUN_00eaecdd();
                      FUN_00da10e0();
                      FUN_00dfca00(&PTR_DAT_01553e04);
                      return;
                    }
LAB_007e5895:
                    if ((*(uint *)(local_18[0] + 0x1c) & 0x11000000) != 0x1000000) {
                      FUN_0099dbc0();
                    }
                    if ((*(int *)(local_18[0] + 0x20) != 0) &&
                       (param_1[3] < *(int *)(*(int *)(local_18[0] + 0x20) + 0x10))) break;
                    local_18[1] = FUN_00975000(*(undefined4 *)(iVar5 + 0x1c));
                    if ((*(uint *)(local_18[1] + 0x1c) & 0x1600000) == 0) {
                      param_1[2] = 0x10;
                      FUN_00eaecdd();
                      FUN_00da10e0();
                      FUN_00dfc9c0();
                      return;
                    }
LAB_007e5860:
                    if ((*(uint *)(local_18[1] + 0x1c) & 0x11000000) != 0x1000000) {
                      FUN_0099dbc0();
                    }
                    param_1[4] = param_1[4] + 1;
                  }
                  local_18[0] = FUN_0077ba70();
                  if ((*(uint *)(local_18[0] + 0x1c) & 0x1600000) == 0) {
                    param_1[2] = 0x11;
                    FUN_00eaecdd();
                    FUN_00da10e0();
                    FUN_00dfca00(&PTR_DAT_01553e04);
                    return;
                  }
LAB_007e5257:
                  if ((*(uint *)(local_18[0] + 0x1c) & 0x11000000) != 0x1000000) {
                    FUN_0099dbc0();
                  }
                  iVar4 = *(int *)(local_18[0] + 0x20);
                  FUN_0099d430(2);
                  uVar3 = _UNK_018d5fac;
                  uVar2 = _UNK_018d5fa8;
                  uVar6 = _UNK_018d5fa4;
                  puVar7 = local_110;
                  puVar8 = local_b0;
                  for (iVar5 = 6; iVar5 != 0; iVar5 = iVar5 + -1) {
                    *puVar8 = *puVar7;
                    puVar7 = puVar7 + 1;
                    puVar8 = puVar8 + 1;
                  }
                  if (local_b0[2] <= local_9c) {
                    puVar1 = (undefined4 *)(local_a0 + local_b0[2] * 2);
                    if (local_9c - local_b0[2] < 0xc) {
                      FUN_0099d6f0();
                    }
                    else {
                      *puVar1 = _DAT_018d5fa0;
                      puVar1[1] = uVar6;
                      puVar1[2] = uVar2;
                      puVar1[3] = uVar3;
                      puVar1[4] = 0x1ebf0069;
                      puVar1[5] = 0x20006e;
                      local_b0[2] = local_b0[2] + 0xc;
                    }
                    if (iVar4 == 0) {
                      uVar6 = 0;
                    }
                    else {
                      uVar6 = *(undefined4 *)(iVar4 + 0x10);
                    }
                    FUN_00e1fd80(iVar4 != 0,uVar6);
                    if (local_b0[2] <= local_9c) {
                      if (local_9c == local_b0[2]) {
                        FUN_0099d6f0();
                      }
                      else {
                        *(undefined2 *)(local_a0 + local_b0[2] * 2) = 0x2f;
                        local_b0[2] = local_b0[2] + 1;
                      }
                      if (iVar4 == 0) {
                        uVar6 = 0;
                      }
                      else {
                        uVar6 = *(undefined4 *)(iVar4 + 0x14);
                      }
                      FUN_00e1fd80(iVar4 != 0,uVar6);
                      if (local_b0[2] <= local_9c) {
                        puVar1 = (undefined4 *)(local_a0 + local_b0[2] * 2);
                        if (local_9c - local_b0[2] < 5) {
                          FUN_0099d6f0();
                        }
                        else {
                          *puVar1 = 0x6c0020;
                          puVar1[1] = 0x1ee301b0;
                          *(undefined2 *)(puVar1 + 2) = 0x74;
                          local_b0[2] = local_b0[2] + 5;
                        }
                        FUN_0099d560();
                        FUN_007876b0();
                        FUN_0099d430(2);
                        puVar7 = local_128;
                        puVar8 = local_c8;
                        for (iVar5 = 6; iVar5 != 0; iVar5 = iVar5 + -1) {
                          *puVar8 = *puVar7;
                          puVar7 = puVar7 + 1;
                          puVar8 = puVar8 + 1;
                        }
                        if (iVar4 == 0) {
                          uVar6 = 0;
                        }
                        else {
                          uVar6 = *(undefined4 *)(iVar4 + 0x10);
                        }
                        FUN_00e1fd80(iVar4 != 0,uVar6);
                        if (local_c8[2] <= local_b4) {
                          if (local_b4 == local_c8[2]) {
                            FUN_0099d6f0();
                          }
                          else {
                            *(undefined2 *)(local_b8 + local_c8[2] * 2) = 0x2f;
                            local_c8[2] = local_c8[2] + 1;
                          }
                          if (iVar4 == 0) {
                            uVar6 = 0;
                          }
                          else {
                            uVar6 = *(undefined4 *)(iVar4 + 0x14);
                          }
                          FUN_00e1fd80(iVar4 != 0,uVar6);
                          if (local_c8[2] <= local_b4) {
                            puVar1 = (undefined4 *)(local_b8 + local_c8[2] * 2);
                            if (local_b4 - local_c8[2] < 5) {
                              FUN_0099d6f0();
                            }
                            else {
                              *puVar1 = 0x6c0020;
                              puVar1[1] = 0x1ee301b0;
                              *(undefined2 *)(puVar1 + 2) = 0x74;
                              local_c8[2] = local_c8[2] + 5;
                            }
                            FUN_0099d560();
                            FUN_00cbc210();
                            if (iVar4 != 0) {
                              FUN_00b6c8e0();
                            }
                            goto LAB_007e673a;
                          }
                        }
                      }
                    }
                  }
                  goto LAB_007e6734;
                }
                FUN_0099d430(1);
                uVar3 = _UNK_018d5fbc;
                uVar2 = _UNK_018d5fb8;
                uVar6 = _UNK_018d5fb4;
                puVar7 = local_158 + 6;
                puVar8 = local_98;
                for (iVar4 = 6; iVar4 != 0; iVar4 = iVar4 + -1) {
                  *puVar8 = *puVar7;
                  puVar7 = puVar7 + 1;
                  puVar8 = puVar8 + 1;
                }
                if (local_84 < local_98[2]) goto LAB_007e6734;
                puVar1 = (undefined4 *)(local_88 + local_98[2] * 2);
                if (local_84 - local_98[2] < 0x1e) {
                  FUN_0099d6f0();
                }
                else {
                  *puVar1 = _DAT_018d5fb0;
                  puVar1[1] = uVar6;
                  puVar1[2] = uVar2;
                  puVar1[3] = uVar3;
                  uVar3 = _UNK_018d5fcc;
                  uVar2 = _UNK_018d5fc8;
                  uVar6 = _UNK_018d5fc4;
                  puVar1[4] = _DAT_018d5fc0;
                  puVar1[5] = uVar6;
                  puVar1[6] = uVar2;
                  puVar1[7] = uVar3;
                  uVar3 = _UNK_018d5fdc;
                  uVar2 = _UNK_018d5fd8;
                  uVar6 = _UNK_018d5fd4;
                  puVar1[8] = _DAT_018d5fd0;
                  puVar1[9] = uVar6;
                  puVar1[10] = uVar2;
                  puVar1[0xb] = uVar3;
                  puVar1[0xc] = 0x20002c;
                  puVar1[0xd] = &DAT_00f20063;
                  puVar1[0xe] = 0x20006e;
                  local_98[2] = local_98[2] + 0x1e;
                }
                FUN_00de77e0();
                uVar3 = _UNK_018d5fec;
                uVar2 = _UNK_018d5fe8;
                uVar6 = _UNK_018d5fe4;
                if (local_84 < local_98[2]) goto LAB_007e6734;
                puVar1 = (undefined4 *)(local_88 + local_98[2] * 2);
                if (local_84 - local_98[2] < 8) {
                  FUN_0099d6f0();
                }
                else {
                  *puVar1 = _DAT_018d5fe0;
                  puVar1[1] = uVar6;
                  puVar1[2] = uVar2;
                  puVar1[3] = uVar3;
                  local_98[2] = local_98[2] + 8;
                }
                FUN_0099d560();
                FUN_007876b0();
              }
              else {
                FUN_0099d430(2);
                uVar3 = _UNK_018d5ffc;
                uVar2 = _UNK_018d5ff8;
                uVar6 = _UNK_018d5ff4;
                puVar7 = local_158;
                puVar8 = local_80;
                for (iVar4 = 6; iVar4 != 0; iVar4 = iVar4 + -1) {
                  *puVar8 = *puVar7;
                  puVar7 = puVar7 + 1;
                  puVar8 = puVar8 + 1;
                }
                if (local_6c < local_80[2]) goto LAB_007e6734;
                puVar1 = (undefined4 *)(local_70 + local_80[2] * 2);
                if (local_6c - local_80[2] < 0x1f) {
                  FUN_0099d6f0();
                }
                else {
                  *puVar1 = _DAT_018d5ff0;
                  puVar1[1] = uVar6;
                  puVar1[2] = uVar2;
                  puVar1[3] = uVar3;
                  uVar3 = _UNK_018d600c;
                  uVar2 = _UNK_018d6008;
                  uVar6 = _UNK_018d6004;
                  puVar1[4] = _DAT_018d6000;
                  puVar1[5] = uVar6;
                  puVar1[6] = uVar2;
                  puVar1[7] = uVar3;
                  uVar3 = _UNK_018d601c;
                  uVar2 = _UNK_018d6018;
                  uVar6 = _UNK_018d6014;
                  puVar1[8] = _DAT_018d6010;
                  puVar1[9] = uVar6;
                  puVar1[10] = uVar2;
                  puVar1[0xb] = uVar3;
                  puVar1[0xc] = 0x20006d;
                  puVar1[0xd] = 0x61006e;
                  puVar1[0xe] = 0x200079;
                  *(undefined2 *)(puVar1 + 0xf) = 0x28;
                  local_80[2] = local_80[2] + 0x1f;
                }
                FUN_00de77e0();
                if (local_6c < local_80[2]) goto LAB_007e6734;
                if (local_6c == local_80[2]) {
                  FUN_0099d6f0();
                }
                else {
                  *(undefined2 *)(local_70 + local_80[2] * 2) = 0x2f;
                  local_80[2] = local_80[2] + 1;
                }
                FUN_00de77e0();
                if (local_6c < local_80[2]) goto LAB_007e6734;
                puVar1 = (undefined4 *)(local_70 + local_80[2] * 2);
                if (local_6c - local_80[2] < 7) {
                  FUN_0099d6f0();
                }
                else {
                  *puVar1 = 0x6c0020;
                  puVar1[1] = 0x1ee301b0;
                  puVar1[2] = 0x290074;
                  *(undefined2 *)(puVar1 + 3) = 0x2e;
                  local_80[2] = local_80[2] + 7;
                }
                FUN_0099d560();
                FUN_007876b0();
              }
              FUN_00787780();
              goto LAB_007e673a;
            }
          }
        }
      }
LAB_007e6734:
                    /* WARNING: Subroutine does not return */
      FUN_009318f0();
    }
    FUN_007876b0();
  }
LAB_007e673a:
  param_1[2] = -2;
  param_1[1] = 0;
  if (param_1[6] == 0) {
    if (PTR_FUN_01c22110 != (undefined *)0x0) {
      FUN_00e8eaee();
    }
    FUN_00eaeca8();
  }
  else {
    iVar4 = FUN_00c0a790(0);
    if (iVar4 == 0) {
                    /* WARNING: Subroutine does not return */
      FUN_00931e50();
    }
  }
  return;
}

