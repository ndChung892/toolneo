/* Address: 007e3fa0 | Ghidra name: FUN_007e3fa0 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_007e3fa0(int *param_1)

{
  undefined4 *puVar1;
  int iVar2;
  undefined4 uVar3;
  uint uVar4;
  char *pcVar5;
  undefined4 uVar6;
  int iVar7;
  int iVar8;
  uint *puVar9;
  uint *puVar10;
  undefined4 uVar11;
  undefined4 in_stack_ffffff38;
  undefined4 local_a0;
  undefined4 uStack_9c;
  uint auStack_98 [12];
  int local_68;
  int local_64;
  int local_60;
  uint local_5c [4];
  int local_4c;
  uint local_48;
  int local_44;
  int local_40;
  int local_3c;
  uint local_38 [4];
  int local_28;
  uint local_24;
  int local_20;
  undefined4 local_1c;
  char local_18 [4];
  int local_14;
  
  local_a0 = 0;
  uStack_9c = 0;
  auStack_98[0] = 0;
  auStack_98[1] = 0;
  auStack_98[2] = 0;
  auStack_98[3] = 0;
  auStack_98[4] = 0;
  auStack_98[5] = 0;
  iVar7 = -0x60;
  do {
    *(undefined4 *)((int)&local_20 + iVar7) = 0;
    pcVar5 = local_18 + iVar7 + -4;
    pcVar5[0] = '\0';
    pcVar5[1] = '\0';
    pcVar5[2] = '\0';
    pcVar5[3] = '\0';
    pcVar5 = local_18 + iVar7;
    pcVar5[0] = '\0';
    pcVar5[1] = '\0';
    pcVar5[2] = '\0';
    pcVar5[3] = '\0';
    *(undefined4 *)((int)&local_14 + iVar7) = 0;
    *(undefined4 *)(&stack0xfffffff0 + iVar7) = 0;
    *(undefined4 *)(&stack0xfffffff4 + iVar7) = 0;
    *(undefined4 *)(&stack0xfffffff8 + iVar7) = 0;
    *(undefined4 *)(&stack0xfffffffc + iVar7) = 0;
    puVar1 = (undefined4 *)(&stack0x00000000 + iVar7);
    *puVar1 = 0;
    puVar1[1] = 0;
    puVar1[2] = 0;
    puVar1[3] = 0;
    iVar7 = iVar7 + 0x30;
  } while (iVar7 != 0);
  iVar2 = *param_1;
  local_20 = 0;
  switch(param_1[4]) {
  case 0:
    local_20 = param_1[9];
    param_1[9] = 0;
    param_1[4] = -1;
    break;
  case 1:
    local_3c = param_1[10];
    param_1[10] = 0;
    param_1[4] = -1;
    goto LAB_007e4bd2;
  case 2:
    local_40 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[4] = -1;
    goto LAB_007e4b83;
  case 3:
    local_44 = param_1[0xc];
    param_1[0xc] = 0;
    param_1[4] = -1;
    goto LAB_007e4adf;
  case 4:
    local_40 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[4] = -1;
    goto LAB_007e4a90;
  case 5:
    local_40 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[4] = -1;
    goto LAB_007e4a41;
  case 6:
    local_3c = param_1[10];
    param_1[10] = 0;
    param_1[4] = -1;
    goto LAB_007e4995;
  case 7:
    local_40 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[4] = -1;
    goto LAB_007e492d;
  case 8:
    local_44 = param_1[0xc];
    param_1[0xc] = 0;
    param_1[4] = -1;
    goto LAB_007e4889;
  case 9:
    local_40 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[4] = -1;
LAB_007e4821:
    if ((*(uint *)(local_40 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if (*(char *)(local_40 + 0x20) != '\0') {
      FUN_00906a20();
      FUN_00782420();
    }
    goto LAB_007e50f5;
  case 10:
    local_40 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[4] = -1;
LAB_007e47b9:
    if ((*(uint *)(local_40 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if (*(char *)(local_40 + 0x20) != '\0') {
      FUN_00906a20();
      FUN_00782420();
    }
    goto LAB_007e50f5;
  case 0xb:
    local_40 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[4] = -1;
    goto LAB_007e43f1;
  case 0xc:
    local_64 = param_1[0xd];
    param_1[0xd] = 0;
    param_1[4] = -1;
    goto LAB_007e436e;
  case 0xd:
    local_68 = param_1[0xe];
    param_1[0xe] = 0;
    param_1[4] = -1;
    goto LAB_007e4257;
  case 0xe:
    local_64 = param_1[0xd];
    param_1[0xd] = 0;
    param_1[4] = -1;
    goto LAB_007e414d;
  case 0xf:
    local_64 = param_1[0xd];
    param_1[0xd] = 0;
    param_1[4] = -1;
    goto LAB_007e40d4;
  case 0x10:
    local_40 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[4] = -1;
    goto LAB_007e4096;
  case 0x11:
    local_64 = param_1[0xd];
    param_1[0xd] = 0;
    param_1[4] = -1;
    goto LAB_007e404a;
  case 0x12:
    local_64 = param_1[0xd];
    param_1[0xd] = 0;
    param_1[4] = -1;
    goto LAB_007e4014;
  default:
    local_20 = iVar7;
    local_20 = FUN_0077ad40(5000);
    if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
      param_1[4] = 0;
      FUN_00eaecdd();
      FUN_00da0fc0();
      FUN_00dfca00(&PTR_DAT_01568fec);
      return;
    }
  }
  if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  if (*(int *)(DAT_01c289dc + 8) == 0) {
    FUN_00eae9a0();
    FUN_00e9a5d1();
    FUN_00eaebef();
  }
  iVar7 = FUN_00e4e4a0(&PTR_DAT_01545008,&uStack_9c);
  if (iVar7 == 0) {
    FUN_007876b0();
  }
  else {
    FUN_00787780();
    param_1[5] = *(int *)(*(int *)(*(int *)(iVar2 + 4) + 300) + 0x34);
    if (*(int *)(iVar7 + 0x14) < param_1[5]) {
      FUN_0099d430();
      uVar6 = _UNK_018d5f2c;
      uVar11 = _UNK_018d5f28;
      uVar3 = _UNK_018d5f24;
      puVar9 = auStack_98;
      puVar10 = local_38;
      for (iVar7 = 6; iVar7 != 0; iVar7 = iVar7 + -1) {
        *puVar10 = *puVar9;
        puVar9 = puVar9 + 1;
        puVar10 = puVar10 + 1;
      }
      if (local_38[2] <= local_24) {
        puVar1 = (undefined4 *)(local_28 + local_38[2] * 2);
        if (local_24 - local_38[2] < 0x10) {
          FUN_0099d6f0();
        }
        else {
          *puVar1 = _DAT_018d5f20;
          puVar1[1] = uVar3;
          puVar1[2] = uVar11;
          puVar1[3] = uVar6;
          uVar6 = _UNK_018d5f3c;
          uVar11 = _UNK_018d5f38;
          uVar3 = _UNK_018d5f34;
          puVar1[4] = _DAT_018d5f30;
          puVar1[5] = uVar3;
          puVar1[6] = uVar11;
          puVar1[7] = uVar6;
          local_38[2] = local_38[2] + 0x10;
        }
        FUN_00de77e0();
        if (local_38[2] <= local_24) {
          if (local_24 - local_38[2] < 0x25) {
            FUN_0099d6f0();
          }
          else {
            FUN_00930280();
            local_38[2] = local_38[2] + 0x25;
          }
          FUN_00de77e0();
          uVar6 = _UNK_018d5f4c;
          uVar11 = _UNK_018d5f48;
          uVar3 = _UNK_018d5f44;
          if (local_38[2] <= local_24) {
            puVar1 = (undefined4 *)(local_28 + local_38[2] * 2);
            if (local_24 - local_38[2] < 0xd) {
              FUN_0099d6f0();
            }
            else {
              *puVar1 = _DAT_018d5f40;
              puVar1[1] = uVar3;
              puVar1[2] = uVar11;
              puVar1[3] = uVar6;
              puVar1[4] = 0x630020;
              puVar1[5] = 0x7500e2;
              *(undefined2 *)(puVar1 + 6) = 0x21;
              local_38[2] = local_38[2] + 0xd;
            }
            FUN_0099d560();
            FUN_007876b0();
            goto LAB_007e50f5;
          }
        }
      }
      goto LAB_007e50da;
    }
    local_3c = FUN_0077abc0();
    if ((*(uint *)(local_3c + 0x1c) & 0x1600000) == 0) {
      param_1[4] = 1;
      FUN_00eaecdd();
      FUN_00da0fc0();
      FUN_00dfca00();
      return;
    }
LAB_007e4bd2:
    if ((*(uint *)(local_3c + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    FUN_00eaecdd();
    if ((param_1[1] == 0) || (1 < *(int *)(param_1[1] + 0x34))) {
      local_44 = FUN_0077ae00();
      if ((*(uint *)(local_44 + 0x1c) & 0x1600000) == 0) {
        param_1[4] = 3;
        FUN_00eaecdd();
        FUN_00da0fc0();
        FUN_00dfca00();
        return;
      }
LAB_007e4adf:
      if ((*(uint *)(local_44 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      iVar7 = *(int *)(local_44 + 0x20);
      if ((*(char *)(iVar7 + 0x1c) == '\0') || (iVar8 = FUN_00777890(), iVar8 == 0)) {
        FUN_007876b0();
        local_40 = FUN_0077ac80();
        if ((*(uint *)(local_40 + 0x1c) & 0x1600000) == 0) {
          param_1[4] = 4;
          FUN_00eaecdd();
          FUN_00da0fc0();
          FUN_00dfc9c0();
          return;
        }
LAB_007e4a90:
        if ((*(uint *)(local_40 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        if (*(char *)(local_40 + 0x20) != '\0') {
          FUN_0077add0();
        }
      }
      else if (*(double *)(iVar7 + 4) <= 0.0) {
        FUN_00906aa0();
        FUN_007876b0();
        local_40 = FUN_0077ac80();
        if ((*(uint *)(local_40 + 0x1c) & 0x1600000) == 0) {
          param_1[4] = 5;
          FUN_00eaecdd();
          FUN_00da0fc0();
          FUN_00dfc9c0();
          return;
        }
LAB_007e4a41:
        if ((*(uint *)(local_40 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        if (*(char *)(local_40 + 0x20) != '\0') {
          FUN_0077add0();
        }
      }
      else {
        if (PTR_FUN_01c21b04 != (undefined *)0x0) {
          FUN_00e8e290();
        }
        iVar7 = FUN_00bca920();
        if (iVar7 == 0) {
          FUN_0099d430();
          puVar9 = auStack_98 + 6;
          puVar10 = local_5c;
          for (iVar7 = 6; iVar7 != 0; iVar7 = iVar7 + -1) {
            *puVar10 = *puVar9;
            puVar9 = puVar9 + 1;
            puVar10 = puVar10 + 1;
          }
          if (local_5c[2] <= local_48) {
            if (local_48 - local_5c[2] < 0x23) {
              FUN_0099d6f0();
            }
            else {
              FUN_00930280();
              local_5c[2] = local_5c[2] + 0x23;
            }
            FUN_00de77e0();
            if (local_5c[2] <= local_48) {
              if (local_48 == local_5c[2]) {
                FUN_0099d6f0();
              }
              else {
                *(undefined2 *)(local_4c + local_5c[2] * 2) = 0x2e;
                local_5c[2] = local_5c[2] + 1;
              }
              FUN_0099d560();
              FUN_007876b0();
              goto LAB_007e50f5;
            }
          }
LAB_007e50da:
                    /* WARNING: Subroutine does not return */
          FUN_009318f0();
        }
        FUN_00bcb730();
        iVar7 = FUN_00eae9a0();
        *(undefined ***)(iVar7 + 4) = &PTR_DAT_01c0e558;
        *(int *)(iVar7 + 0xc) = *(int *)(iVar7 + 0xc) + 1;
        uVar4 = *(uint *)(iVar7 + 8);
        if (uVar4 < *(uint *)(*(int *)(iVar7 + 4) + 4)) {
          *(uint *)(iVar7 + 8) = uVar4 + 1;
          *(undefined4 *)(*(int *)(iVar7 + 4) + 8 + uVar4 * 4) = local_1c;
        }
        else {
          FUN_00bb9060();
        }
        FUN_00eaeca8();
        if (local_18[0] != '\0') {
          iVar7 = param_1[2];
          *(int *)(iVar7 + 0xc) = *(int *)(iVar7 + 0xc) + 1;
          iVar8 = *(int *)(iVar7 + 4);
          uVar4 = *(uint *)(iVar7 + 8);
          if (uVar4 < *(uint *)(iVar8 + 4)) {
            *(uint *)(iVar7 + 8) = uVar4 + 1;
            if (*(uint *)(iVar8 + 4) <= uVar4) {
LAB_007e50ef:
                    /* WARNING: Subroutine does not return */
              FUN_009c2bf0();
            }
            *(int *)(iVar8 + 8 + uVar4 * 4) = local_14;
          }
          else {
            FUN_00bb9060();
          }
        }
        if (((param_1[1] == 0) || (local_18[0] == '\0')) ||
           (*(int *)(param_1[1] + 0x28) != local_14)) {
          iVar7 = 0;
        }
        else {
          iVar7 = 1;
        }
        param_1[6] = iVar7;
        while( true ) {
          local_60 = *(int *)(iVar2 + 0x1c);
          if ((local_60 != 0) && (*(int *)(local_60 + 0x10) != 0)) {
                    /* WARNING: Subroutine does not return */
            FUN_00968fa0();
          }
          local_3c = FUN_0077abc0();
          if ((*(uint *)(local_3c + 0x1c) & 0x1600000) == 0) {
            param_1[4] = 6;
            FUN_00eaecdd();
            FUN_00da0fc0();
            FUN_00dfca00();
            return;
          }
LAB_007e4995:
          if ((*(uint *)(local_3c + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          FUN_00eaecdd();
          if ((param_1[1] != 0) && (*(int *)(param_1[1] + 0x34) < 2)) break;
          local_44 = FUN_0077ae00();
          if ((*(uint *)(local_44 + 0x1c) & 0x1600000) == 0) {
            param_1[4] = 8;
            FUN_00eaecdd();
            FUN_00da0fc0();
            FUN_00dfca00();
            return;
          }
LAB_007e4889:
          if ((*(uint *)(local_44 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          iVar7 = *(int *)(local_44 + 0x20);
          if ((*(char *)(iVar7 + 0x1c) == '\0') || (iVar8 = FUN_00777890(), iVar8 == 0)) {
            FUN_007876b0();
            local_40 = FUN_0077ac80();
            if ((*(uint *)(local_40 + 0x1c) & 0x1600000) == 0) {
              param_1[4] = 9;
              FUN_00eaecdd();
              FUN_00da0fc0();
              FUN_00dfc9c0();
              return;
            }
            goto LAB_007e4821;
          }
          if (*(double *)(iVar7 + 4) <= 0.0) {
            FUN_00906aa0();
            FUN_007876b0();
            local_40 = FUN_0077ac80();
            if ((*(uint *)(local_40 + 0x1c) & 0x1600000) == 0) {
              param_1[4] = 10;
              FUN_00eaecdd();
              FUN_00da0fc0();
              FUN_00dfc9c0();
              return;
            }
            goto LAB_007e47b9;
          }
          local_40 = FUN_0077ac80();
          if ((*(uint *)(local_40 + 0x1c) & 0x1600000) == 0) {
            param_1[4] = 0xb;
            FUN_00eaecdd();
            FUN_00da0fc0();
            FUN_00dfc9c0();
            return;
          }
LAB_007e43f1:
          if ((*(uint *)(local_40 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          if (*(char *)(local_40 + 0x20) == '\0') {
            if (*(uint *)(param_1[2] + 8) <= (uint)param_1[6]) {
                    /* WARNING: Subroutine does not return */
              FUN_009319a0();
            }
            if (*(uint *)(*(int *)(param_1[2] + 4) + 4) <= (uint)param_1[6]) goto LAB_007e50ef;
            local_64 = FUN_00787840(0,0,0,0);
            if ((*(uint *)(local_64 + 0x1c) & 0x1600000) == 0) {
              param_1[4] = 0xc;
              FUN_00eaecdd();
              FUN_00da0fc0();
              FUN_00dfc9c0();
              return;
            }
LAB_007e436e:
            if ((*(uint *)(local_64 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            local_68 = FUN_0077acc0();
            if ((*(uint *)(local_68 + 0x1c) & 0x1600000) == 0) {
              param_1[4] = 0xd;
              FUN_00eaecdd();
              FUN_00da0fc0();
              FUN_00dfca00();
              return;
            }
LAB_007e4257:
            if ((*(uint *)(local_68 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            if (*(int *)(DAT_01c289dc + 0xc) == 0) {
              FUN_00eae9a0();
              FUN_00e9a5e2(in_stack_ffffff38);
              in_stack_ffffff38 = 0x7e42b7;
              FUN_00eaebef();
            }
            FUN_00e4e4a0(&PTR_DAT_01544440,&local_a0);
            FUN_00eaeca8();
            iVar7 = param_1[3];
            if (iVar7 == 0) {
              local_64 = FUN_00975000();
              if ((*(uint *)(local_64 + 0x1c) & 0x1600000) == 0) {
                param_1[4] = 0x11;
                FUN_00eaecdd();
                FUN_00da0fc0();
                FUN_00dfc9c0();
                return;
              }
LAB_007e404a:
              if ((*(uint *)(local_64 + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
              if (1 < *(int *)(param_1[2] + 8)) {
                param_1[6] = (param_1[6] + 1) % *(int *)(param_1[2] + 8);
              }
            }
            else {
              local_64 = FUN_007877c0(0,0,0,*(double *)(iVar7 + 0xc) / _DAT_018d5f10,
                                      *(double *)(iVar7 + 4) / _DAT_018d5f10);
              if ((*(uint *)(local_64 + 0x1c) & 0x1600000) == 0) {
                param_1[4] = 0xe;
                FUN_00eaecdd();
                FUN_00da0fc0();
                FUN_00dfc9c0();
                return;
              }
LAB_007e414d:
              if ((*(uint *)(local_64 + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
              param_1[7] = 0;
              while (param_1[7] < 5) {
                uVar3 = *(undefined4 *)(param_1[3] + 0x28);
                in_stack_ffffff38 = *(undefined4 *)(*(int *)(iVar2 + 0x14) + 4);
                FUN_00eaeae1();
                uVar11 = 0x7e41b3;
                iVar7 = FUN_00eae9a0();
                *(undefined4 *)(iVar7 + 4) = uVar3;
                FUN_00eaebca();
                iVar7 = FUN_00eae9a0();
                *(undefined4 *)(iVar7 + 4) = 0;
                FUN_00eaebca();
                FUN_0077a610(uVar11,&PTR_DAT_01be3a98);
                local_64 = FUN_00975000();
                if ((*(uint *)(local_64 + 0x1c) & 0x1600000) == 0) {
                  param_1[4] = 0xf;
                  FUN_00eaecdd();
                  FUN_00da0fc0();
                  FUN_00dfc9c0();
                  return;
                }
LAB_007e40d4:
                if ((*(uint *)(local_64 + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
                local_40 = FUN_0077ac80();
                if ((*(uint *)(local_40 + 0x1c) & 0x1600000) == 0) {
                  param_1[4] = 0x10;
                  FUN_00eaecdd();
                  FUN_00da0fc0();
                  FUN_00dfc9c0();
                  return;
                }
LAB_007e4096:
                if ((*(uint *)(local_40 + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
                if (*(char *)(local_40 + 0x20) != '\0') break;
                param_1[7] = param_1[7] + 1;
              }
            }
            param_1[3] = 0;
          }
          else {
            local_64 = FUN_00975000();
            if ((*(uint *)(local_64 + 0x1c) & 0x1600000) == 0) {
              param_1[4] = 0x12;
              FUN_00eaecdd();
              FUN_00da0fc0();
              FUN_00dfc9c0();
              return;
            }
LAB_007e4014:
            if ((*(uint *)(local_64 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
          }
        }
        FUN_007876b0();
        local_40 = FUN_0077ac80();
        if ((*(uint *)(local_40 + 0x1c) & 0x1600000) == 0) {
          param_1[4] = 7;
          FUN_00eaecdd();
          FUN_00da0fc0();
          FUN_00dfc9c0();
          return;
        }
LAB_007e492d:
        if ((*(uint *)(local_40 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        if (*(char *)(local_40 + 0x20) != '\0') {
          FUN_00906a20();
          FUN_00782420();
        }
      }
    }
    else {
      FUN_007876b0();
      local_40 = FUN_0077ac80();
      if ((*(uint *)(local_40 + 0x1c) & 0x1600000) == 0) {
        param_1[4] = 2;
        FUN_00eaecdd();
        FUN_00da0fc0();
        FUN_00dfc9c0();
        return;
      }
LAB_007e4b83:
      if ((*(uint *)(local_40 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      if (*(char *)(local_40 + 0x20) != '\0') {
        FUN_0077add0();
      }
    }
  }
LAB_007e50f5:
  param_1[4] = -2;
  param_1[1] = 0;
  param_1[2] = 0;
  if (param_1[8] == 0) {
    if (PTR_FUN_01c22110 != (undefined *)0x0) {
      FUN_00e8eaee();
    }
    FUN_00eaecdd();
  }
  else {
    iVar7 = FUN_00c0a790();
    if (iVar7 == 0) {
                    /* WARNING: Subroutine does not return */
      FUN_00931e50();
    }
  }
  return;
}

