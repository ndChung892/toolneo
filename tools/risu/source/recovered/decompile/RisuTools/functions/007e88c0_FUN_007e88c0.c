/* Address: 007e88c0 | Ghidra name: FUN_007e88c0 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_007e88c0(int *param_1)

{
  undefined4 *puVar1;
  int iVar2;
  undefined4 uVar3;
  uint uVar4;
  int iVar5;
  undefined4 uVar6;
  int iVar7;
  int extraout_ECX;
  uint *puVar8;
  uint *puVar9;
  undefined4 in_stack_ffffff38;
  undefined4 uVar10;
  undefined4 local_9c;
  undefined4 uStack_98;
  undefined4 uStack_94;
  uint auStack_90 [6];
  uint local_78 [6];
  int local_60;
  int local_5c;
  int local_58;
  uint local_54 [4];
  int local_44;
  uint local_40;
  int local_3c;
  int local_38;
  uint local_34 [4];
  int local_24;
  uint local_20;
  int local_1c [3];
  
  local_9c = 0;
  uStack_98 = 0;
  uStack_94 = 0;
  auStack_90[0] = 0;
  auStack_90[1] = 0;
  auStack_90[2] = 0;
  auStack_90[3] = 0;
  auStack_90[4] = 0;
  iVar5 = -0x60;
  do {
    *(undefined4 *)((int)local_1c + iVar5) = 0;
    *(undefined4 *)((int)local_1c + iVar5 + 4) = 0;
    *(undefined4 *)((int)local_1c + iVar5 + 8) = 0;
    *(undefined4 *)(&stack0xfffffff0 + iVar5) = 0;
    *(undefined4 *)(&stack0xfffffff4 + iVar5) = 0;
    *(undefined4 *)(&stack0xfffffff8 + iVar5) = 0;
    *(undefined4 *)(&stack0xfffffffc + iVar5) = 0;
    *(undefined4 *)(&stack0x00000000 + iVar5) = 0;
    *(undefined4 *)(&stack0x00000004 + iVar5) = 0;
    *(undefined4 *)(&stack0x00000008 + iVar5) = 0;
    *(undefined4 *)(&stack0x0000000c + iVar5) = 0;
    *(undefined4 *)(&stack0x00000010 + iVar5) = 0;
    iVar5 = iVar5 + 0x30;
  } while (iVar5 != 0);
  iVar2 = *param_1;
  local_1c[0] = 0;
  switch(param_1[3]) {
  case 0:
    local_1c[0] = param_1[8];
    param_1[8] = 0;
    param_1[3] = -1;
    break;
  case 1:
    local_38 = param_1[9];
    param_1[9] = 0;
    param_1[3] = -1;
    goto LAB_007e915a;
  case 2:
    local_3c = param_1[10];
    param_1[10] = 0;
    param_1[3] = -1;
    goto LAB_007e910b;
  case 3:
    local_38 = param_1[9];
    param_1[9] = 0;
    param_1[3] = -1;
    goto LAB_007e906a;
  case 4:
    local_3c = param_1[10];
    param_1[10] = 0;
    param_1[3] = -1;
    goto LAB_007e9002;
  case 5:
    local_3c = param_1[10];
    param_1[10] = 0;
    param_1[3] = -1;
    goto LAB_007e8d05;
  case 6:
    local_5c = param_1[0xb];
    param_1[0xb] = 0;
    param_1[3] = -1;
    goto LAB_007e8c82;
  case 7:
    local_60 = param_1[0xc];
    param_1[0xc] = 0;
    param_1[3] = -1;
    goto LAB_007e8b6b;
  case 8:
    local_5c = param_1[0xb];
    param_1[0xb] = 0;
    param_1[3] = -1;
    goto LAB_007e8a61;
  case 9:
    local_5c = param_1[0xb];
    param_1[0xb] = 0;
    param_1[3] = -1;
    goto LAB_007e89e8;
  case 10:
    local_3c = param_1[10];
    param_1[10] = 0;
    param_1[3] = -1;
    goto LAB_007e89aa;
  case 0xb:
    local_5c = param_1[0xb];
    param_1[0xb] = 0;
    param_1[3] = -1;
    goto LAB_007e896a;
  case 0xc:
    local_5c = param_1[0xb];
    param_1[0xb] = 0;
    param_1[3] = -1;
    goto LAB_007e8934;
  default:
    local_1c[0] = iVar5;
    local_1c[0] = FUN_0077ad40(5000);
    if ((*(uint *)(local_1c[0] + 0x1c) & 0x1600000) == 0) {
      param_1[3] = 0;
      FUN_00eaecdd();
      FUN_00da1440();
      FUN_00dfca00(&PTR_DAT_01568fec);
      return;
    }
  }
  if ((*(uint *)(local_1c[0] + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  if (*(int *)(DAT_01c289ec + 8) == 0) {
    FUN_00eae9a0();
    FUN_00e9a637();
    FUN_00eaebef();
  }
  iVar5 = FUN_00e4e4a0(&PTR_DAT_01545008,&uStack_94);
  if (iVar5 == 0) {
    FUN_007876b0();
  }
  else {
    param_1[4] = *(int *)(*(int *)(*(int *)(iVar2 + 4) + 0x128) + 0x34);
    if (*(int *)(iVar5 + 0x14) < param_1[4]) {
      FUN_0099d430();
      uVar6 = _UNK_018d619c;
      uVar10 = _UNK_018d6198;
      uVar3 = _UNK_018d6194;
      puVar8 = auStack_90;
      puVar9 = local_34;
      for (iVar5 = 6; iVar5 != 0; iVar5 = iVar5 + -1) {
        *puVar9 = *puVar8;
        puVar8 = puVar8 + 1;
        puVar9 = puVar9 + 1;
      }
      if (local_34[2] <= local_20) {
        puVar1 = (undefined4 *)(local_24 + local_34[2] * 2);
        if (local_20 - local_34[2] < 0x13) {
          FUN_0099d6f0();
        }
        else {
          *puVar1 = _DAT_018d6190;
          puVar1[1] = uVar3;
          puVar1[2] = uVar10;
          puVar1[3] = uVar6;
          uVar6 = _UNK_018d61ac;
          uVar10 = _UNK_018d61a8;
          uVar3 = _UNK_018d61a4;
          puVar1[4] = _DAT_018d61a0;
          puVar1[5] = uVar3;
          puVar1[6] = uVar10;
          puVar1[7] = uVar6;
          puVar1[8] = 0x20006e;
          *(undefined2 *)(puVar1 + 9) = 0x28;
          local_34[2] = local_34[2] + 0x13;
        }
        FUN_00de77e0();
        if (local_34[2] <= local_20) {
          if (local_20 - local_34[2] < 0x28) {
            FUN_0099d6f0();
          }
          else {
            FUN_00930280();
            local_34[2] = local_34[2] + 0x28;
          }
          FUN_00de77e0();
          uVar6 = _UNK_018d61bc;
          uVar10 = _UNK_018d61b8;
          uVar3 = _UNK_018d61b4;
          if (local_34[2] <= local_20) {
            puVar1 = (undefined4 *)(local_24 + local_34[2] * 2);
            if (local_20 - local_34[2] < 0xd) {
              FUN_0099d6f0();
            }
            else {
              *puVar1 = _DAT_018d61b0;
              puVar1[1] = uVar3;
              puVar1[2] = uVar10;
              puVar1[3] = uVar6;
              puVar1[4] = 0x680020;
              puVar1[5] = 0x6900e1;
              *(undefined2 *)(puVar1 + 6) = 0x21;
              local_34[2] = local_34[2] + 0xd;
            }
            FUN_0099d560();
            FUN_007876b0();
            goto LAB_007e95ab;
          }
        }
      }
      goto LAB_007e9590;
    }
    local_38 = FUN_0077abc0();
    if ((*(uint *)(local_38 + 0x1c) & 0x1600000) == 0) {
      param_1[3] = 1;
      FUN_00eaecdd();
      FUN_00da1440();
      FUN_00dfca00();
      return;
    }
LAB_007e915a:
    if ((*(uint *)(local_38 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    iVar5 = *(int *)(local_38 + 0x20);
    if ((iVar5 == 0) || (1 < *(int *)(iVar5 + 0x34))) {
      if (PTR_FUN_01c21b04 != (undefined *)0x0) {
        FUN_00e8e290();
      }
      iVar7 = FUN_00bc9b20();
      if (iVar7 == 0) {
        FUN_0099d430();
        puVar8 = local_78;
        puVar9 = local_54;
        for (iVar5 = 6; iVar5 != 0; iVar5 = iVar5 + -1) {
          *puVar9 = *puVar8;
          puVar8 = puVar8 + 1;
          puVar9 = puVar9 + 1;
        }
        if (local_54[2] <= local_40) {
          if (local_40 - local_54[2] < 0x25) {
            FUN_0099d6f0();
          }
          else {
            FUN_00930280();
            local_54[2] = local_54[2] + 0x25;
          }
          FUN_00de77e0();
          if (local_54[2] <= local_40) {
            if (local_40 == local_54[2]) {
              FUN_0099d6f0();
            }
            else {
              *(undefined2 *)(local_44 + local_54[2] * 2) = 0x2e;
              local_54[2] = local_54[2] + 1;
            }
            FUN_0099d560();
            FUN_007876b0();
            goto LAB_007e95ab;
          }
        }
LAB_007e9590:
                    /* WARNING: Subroutine does not return */
        FUN_009318f0();
      }
      FUN_00bc9a80();
      iVar7 = FUN_00eae9a0();
      *(undefined ***)(iVar7 + 4) = &PTR_DAT_01c0e558;
      uStack_98 = local_1c[1];
      *(int *)(iVar7 + 0xc) = *(int *)(iVar7 + 0xc) + 1;
      uVar4 = *(uint *)(iVar7 + 8);
      if (uVar4 < *(uint *)(*(int *)(iVar7 + 4) + 4)) {
        *(uint *)(iVar7 + 8) = uVar4 + 1;
        *(int *)(*(int *)(iVar7 + 4) + 8 + uVar4 * 4) = local_1c[1];
      }
      else {
        FUN_00bb9060();
      }
      *(int *)(iVar7 + 0xc) = *(int *)(iVar7 + 0xc) + 1;
      uVar4 = *(uint *)(iVar7 + 8);
      if (uVar4 < *(uint *)(*(int *)(iVar7 + 4) + 4)) {
        *(uint *)(iVar7 + 8) = uVar4 + 1;
        *(int *)(*(int *)(iVar7 + 4) + 8 + uVar4 * 4) = local_1c[2];
      }
      else {
        FUN_00bb9060();
      }
      FUN_00eaeca8();
      if ((iVar5 == 0) || (*(int *)(iVar5 + 0x28) != extraout_ECX)) {
        iVar5 = 0;
      }
      else {
        iVar5 = 1;
      }
      param_1[5] = iVar5;
      while( true ) {
        local_58 = *(int *)(iVar2 + 0x1c);
        if ((local_58 != 0) && (*(int *)(local_58 + 0x10) != 0)) {
                    /* WARNING: Subroutine does not return */
          FUN_00968fa0();
        }
        local_38 = FUN_0077abc0();
        if ((*(uint *)(local_38 + 0x1c) & 0x1600000) == 0) {
          param_1[3] = 3;
          FUN_00eaecdd();
          FUN_00da1440();
          FUN_00dfca00();
          return;
        }
LAB_007e906a:
        if ((*(uint *)(local_38 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        if ((*(int *)(local_38 + 0x20) != 0) && (*(int *)(*(int *)(local_38 + 0x20) + 0x34) < 2))
        break;
        local_3c = FUN_0077ac80();
        if ((*(uint *)(local_3c + 0x1c) & 0x1600000) == 0) {
          param_1[3] = 5;
          FUN_00eaecdd();
          FUN_00da1440();
          FUN_00dfc9c0();
          return;
        }
LAB_007e8d05:
        if ((*(uint *)(local_3c + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        if (*(char *)(local_3c + 0x20) == '\0') {
          if (*(uint *)(param_1[1] + 8) <= (uint)param_1[5]) {
                    /* WARNING: Subroutine does not return */
            FUN_009319a0();
          }
          if (*(uint *)(*(int *)(param_1[1] + 4) + 4) <= (uint)param_1[5]) {
                    /* WARNING: Subroutine does not return */
            FUN_009c2bf0();
          }
          local_5c = FUN_00787840(0,0,0,0);
          if ((*(uint *)(local_5c + 0x1c) & 0x1600000) == 0) {
            param_1[3] = 6;
            FUN_00eaecdd();
            FUN_00da1440();
            FUN_00dfc9c0();
            return;
          }
LAB_007e8c82:
          if ((*(uint *)(local_5c + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          local_60 = FUN_0077acc0();
          if ((*(uint *)(local_60 + 0x1c) & 0x1600000) == 0) {
            param_1[3] = 7;
            FUN_00eaecdd();
            FUN_00da1440();
            FUN_00dfca00();
            return;
          }
LAB_007e8b6b:
          if ((*(uint *)(local_60 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          if (*(int *)(DAT_01c289ec + 0xc) == 0) {
            FUN_00eae9a0();
            FUN_00e9a648(in_stack_ffffff38);
            in_stack_ffffff38 = 0x7e8bcb;
            FUN_00eaebef();
          }
          FUN_00e4e4a0(&PTR_DAT_01544440,&local_9c);
          FUN_00eaeca8();
          iVar5 = param_1[2];
          if (iVar5 == 0) {
            local_5c = FUN_00975000();
            if ((*(uint *)(local_5c + 0x1c) & 0x1600000) == 0) {
              param_1[3] = 0xb;
              FUN_00eaecdd();
              FUN_00da1440();
              FUN_00dfc9c0();
              return;
            }
LAB_007e896a:
            if ((*(uint *)(local_5c + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            param_1[5] = 1 - param_1[5];
          }
          else {
            local_5c = FUN_007877c0(0,0,0,*(double *)(iVar5 + 0xc) / _DAT_018d6188,
                                    *(double *)(iVar5 + 4) / _DAT_018d6188);
            if ((*(uint *)(local_5c + 0x1c) & 0x1600000) == 0) {
              param_1[3] = 8;
              FUN_00eaecdd();
              FUN_00da1440();
              FUN_00dfc9c0();
              return;
            }
LAB_007e8a61:
            if ((*(uint *)(local_5c + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            param_1[6] = 0;
            while (param_1[6] < 5) {
              uVar3 = *(undefined4 *)(param_1[2] + 0x28);
              uVar10 = *(undefined4 *)(*(int *)(iVar2 + 0x14) + 4);
              uVar6 = FUN_00eaeae1();
              iVar5 = FUN_00eae9a0(uVar6,uVar10);
              *(undefined4 *)(iVar5 + 4) = uVar3;
              in_stack_ffffff38 = uVar6;
              FUN_00eaebca();
              iVar5 = FUN_00eae9a0();
              *(undefined4 *)(iVar5 + 4) = 0;
              FUN_00eaebca();
              FUN_0077a610(uVar6,&PTR_DAT_01be3a98);
              local_5c = FUN_00975000();
              if ((*(uint *)(local_5c + 0x1c) & 0x1600000) == 0) {
                param_1[3] = 9;
                FUN_00eaecdd();
                FUN_00da1440();
                FUN_00dfc9c0();
                return;
              }
LAB_007e89e8:
              if ((*(uint *)(local_5c + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
              local_3c = FUN_0077ac80();
              if ((*(uint *)(local_3c + 0x1c) & 0x1600000) == 0) {
                param_1[3] = 10;
                FUN_00eaecdd();
                FUN_00da1440();
                FUN_00dfc9c0();
                return;
              }
LAB_007e89aa:
              if ((*(uint *)(local_3c + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
              if (*(char *)(local_3c + 0x20) != '\0') break;
              param_1[6] = param_1[6] + 1;
            }
          }
          param_1[2] = 0;
        }
        else {
          local_5c = FUN_00975000();
          if ((*(uint *)(local_5c + 0x1c) & 0x1600000) == 0) {
            param_1[3] = 0xc;
            FUN_00eaecdd();
            FUN_00da1440();
            FUN_00dfc9c0();
            return;
          }
LAB_007e8934:
          if ((*(uint *)(local_5c + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
        }
      }
      FUN_007876b0();
      local_3c = FUN_0077ac80();
      if ((*(uint *)(local_3c + 0x1c) & 0x1600000) == 0) {
        param_1[3] = 4;
        FUN_00eaecdd();
        FUN_00da1440();
        FUN_00dfc9c0();
        return;
      }
LAB_007e9002:
      if ((*(uint *)(local_3c + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      if (*(char *)(local_3c + 0x20) != '\0') {
        FUN_00906a20();
        FUN_00782420();
      }
    }
    else {
      FUN_007876b0();
      local_3c = FUN_0077ac80();
      if ((*(uint *)(local_3c + 0x1c) & 0x1600000) == 0) {
        param_1[3] = 2;
        FUN_00eaecdd();
        FUN_00da1440();
        FUN_00dfc9c0();
        return;
      }
LAB_007e910b:
      if ((*(uint *)(local_3c + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      if (*(char *)(local_3c + 0x20) != '\0') {
        FUN_0077add0();
      }
    }
  }
LAB_007e95ab:
  param_1[3] = -2;
  param_1[1] = 0;
  if (param_1[7] == 0) {
    if (PTR_FUN_01c22110 != (undefined *)0x0) {
      FUN_00e8eaee();
    }
    FUN_00eaecdd();
  }
  else {
    iVar5 = FUN_00c0a790();
    if (iVar5 == 0) {
                    /* WARNING: Subroutine does not return */
      FUN_00931e50();
    }
  }
  return;
}

