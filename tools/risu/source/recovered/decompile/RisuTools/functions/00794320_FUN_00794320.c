/* Address: 00794320 | Ghidra name: FUN_00794320 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_00794320(int *param_1)

{
  undefined4 *puVar1;
  int iVar2;
  undefined4 uVar3;
  int iVar4;
  undefined4 uVar5;
  int extraout_ECX;
  int extraout_ECX_00;
  int *extraout_ECX_01;
  int extraout_ECX_02;
  int extraout_ECX_03;
  int extraout_ECX_04;
  int extraout_ECX_05;
  int *piVar6;
  undefined4 extraout_ECX_06;
  float10 fVar7;
  float10 fVar8;
  double dVar9;
  double in_stack_fffffee0;
  undefined4 uVar10;
  uint uVar11;
  undefined4 local_c4;
  undefined4 uStack_c0;
  undefined4 uStack_bc;
  double dStack_b8;
  double dStack_b0;
  undefined4 uStack_a8;
  double local_a4;
  double local_9c;
  undefined4 local_94;
  int local_90;
  uint local_8c;
  undefined1 local_88;
  undefined4 *local_84;
  uint local_80;
  undefined4 local_7c;
  int local_78;
  uint local_74;
  char local_70;
  undefined4 *local_6c;
  uint local_68;
  undefined4 local_64;
  int local_60;
  uint local_5c;
  undefined1 local_58;
  undefined4 *local_54;
  uint local_50;
  undefined4 local_4c;
  int local_48;
  uint local_44;
  undefined1 local_40;
  undefined4 *local_3c;
  uint local_38;
  int local_34;
  undefined4 local_30;
  int local_2c;
  uint local_28;
  undefined1 local_24;
  undefined4 *local_20;
  uint local_1c;
  int local_18;
  int local_14;
  
  local_c4 = 0;
  uStack_c0 = 0;
  uStack_bc = 0;
  dStack_b8 = 0.0;
  dStack_b0 = 0.0;
  uStack_a8 = 0;
  iVar4 = -0x90;
  do {
    *(undefined4 *)((int)&local_14 + iVar4) = 0;
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
    *(undefined4 *)(&stack0x00000018 + iVar4) = 0;
    iVar4 = iVar4 + 0x30;
  } while (iVar4 != 0);
  iVar2 = *param_1;
  local_14 = iVar4;
  switch(param_1[3]) {
  case 0:
    local_14 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[3] = -1;
    break;
  case 1:
    local_18 = param_1[0xc];
    param_1[0xc] = 0;
    param_1[3] = -1;
    goto LAB_00794def;
  case 2:
    local_18 = param_1[0xc];
    param_1[0xc] = 0;
    param_1[3] = -1;
    goto LAB_00794db9;
  case 3:
    local_18 = param_1[0xc];
    param_1[0xc] = 0;
    param_1[3] = -1;
    goto LAB_00794d3a;
  case 4:
    local_18 = param_1[0xc];
    param_1[0xc] = 0;
    param_1[3] = -1;
    goto LAB_00794d04;
  case 5:
    local_14 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[3] = -1;
    goto LAB_00794c4a;
  case 6:
    local_18 = param_1[0xc];
    param_1[0xc] = 0;
    param_1[3] = -1;
    goto LAB_00794b93;
  case 7:
    local_14 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[3] = -1;
    goto LAB_00794ade;
  case 8:
    local_18 = param_1[0xc];
    param_1[0xc] = 0;
    param_1[3] = -1;
    goto LAB_00794aa1;
  case 9:
    local_34 = param_1[0xd];
    param_1[0xd] = 0;
    param_1[3] = -1;
    goto LAB_00794a5f;
  case 10:
    local_18 = param_1[0xc];
    param_1[0xc] = 0;
    param_1[3] = -1;
    goto LAB_00794a30;
  case 0xb:
    local_14 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[3] = -1;
    goto LAB_0079497a;
  case 0xc:
    local_18 = param_1[0xc];
    param_1[0xc] = 0;
    param_1[3] = -1;
    goto LAB_00794940;
  case 0xd:
    local_18 = param_1[0xc];
    param_1[0xc] = 0;
    param_1[3] = -1;
    goto LAB_00794906;
  case 0xe:
    local_34 = param_1[0xd];
    param_1[0xd] = 0;
    param_1[3] = -1;
    goto LAB_007948c4;
  case 0xf:
    local_18 = param_1[0xc];
    param_1[0xc] = 0;
    param_1[3] = -1;
    local_14 = 0;
    goto LAB_0079483d;
  case 0x10:
    local_14 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[3] = -1;
    goto LAB_007947d8;
  case 0x11:
    local_34 = param_1[0xd];
    param_1[0xd] = 0;
    param_1[3] = -1;
    goto LAB_00794796;
  case 0x12:
    local_18 = param_1[0xc];
    param_1[0xc] = 0;
    param_1[3] = -1;
    goto LAB_00794646;
  case 0x13:
    local_18 = param_1[0xc];
    param_1[0xc] = 0;
    param_1[3] = -1;
    local_14 = 0;
    goto LAB_007945bf;
  case 0x14:
    local_14 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[3] = -1;
    goto LAB_00794504;
  case 0x15:
    local_34 = param_1[0xd];
    param_1[0xd] = 0;
    param_1[3] = -1;
    goto LAB_007944c2;
  case 0x16:
    local_18 = param_1[0xc];
    param_1[0xc] = 0;
    param_1[3] = -1;
    local_14 = 0;
    goto LAB_0079443b;
  case 0x17:
    local_14 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[3] = -1;
    goto LAB_007943ce;
  case 0x18:
    local_18 = param_1[0xc];
    param_1[0xc] = 0;
    param_1[3] = -1;
    goto LAB_00794391;
  default:
    FUN_007876b0();
    param_1[4] = -1;
    FUN_00787780();
    goto LAB_00794ee9;
  }
  do {
    if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    FUN_00eaebca();
    iVar4 = *(int *)(*(int *)(extraout_ECX_05 + 4) + 4);
    if (iVar4 == 0) {
      local_18 = FUN_00975000();
      if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
        param_1[3] = 1;
        FUN_00eaecdd();
        FUN_00d96960();
        FUN_00dfc9c0();
        return;
      }
LAB_00794def:
      if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
    }
    else if (*(char *)(iVar4 + 0x69) == '\0') {
      if (*(int *)(extraout_ECX_05 + 0x10) < 0) {
        iVar4 = FUN_00d55cd0(*(undefined4 *)(*(int *)(iVar2 + 0x20) + 8),0);
        if (iVar4 < 0) {
          iVar4 = 0;
        }
        param_1[4] = iVar4;
      }
      uVar11 = param_1[4];
      if (*(uint *)(*(int *)(iVar2 + 0x20) + 8) <= uVar11) {
                    /* WARNING: Subroutine does not return */
        FUN_009319a0();
      }
      iVar4 = *(int *)(*(int *)(iVar2 + 0x20) + 4);
      if (*(uint *)(iVar4 + 4) <= uVar11) {
                    /* WARNING: Subroutine does not return */
        FUN_009c2bf0();
      }
      param_1[5] = *(int *)(iVar4 + 8 + uVar11 * 4);
      if (*(int *)(*(int *)(param_1[1] + 4) + 0x28) == param_1[5]) {
        while ((*(int *)(iVar2 + 0x1c) == 0 || (*(int *)(*(int *)(iVar2 + 0x1c) + 0x10) == 0))) {
          local_14 = FUN_0077abc0();
          if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
            param_1[3] = 5;
            FUN_00eaeca8();
            FUN_00d96960();
            FUN_00dfca00();
            return;
          }
LAB_00794c4a:
          if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          FUN_00eaebca();
          iVar4 = *(int *)(*(int *)(extraout_ECX_04 + 4) + 4);
          if ((iVar4 != 0) && (*(char *)(iVar4 + 0x69) == '\0')) break;
          local_18 = FUN_00975000();
          if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
            param_1[3] = 6;
            FUN_00eaeca8();
            FUN_00d96960();
            FUN_00dfc9c0();
            return;
          }
LAB_00794b93:
          if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
        }
        *(undefined1 *)(param_1 + 9) = 0;
        param_1[6] = 0;
        while ((param_1[6] < 7 &&
               ((*(int *)(iVar2 + 0x1c) == 0 || (*(int *)(*(int *)(iVar2 + 0x1c) + 0x10) == 0))))) {
          local_14 = FUN_0077abc0();
          if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
            param_1[3] = 7;
            FUN_00eaeca8();
            FUN_00d96960();
            FUN_00dfca00();
            return;
          }
LAB_00794ade:
          if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          FUN_00eaebca();
          if (*(int *)(*(int *)(extraout_ECX_03 + 4) + 4) == 0) {
            local_18 = FUN_00975000();
            if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
              param_1[3] = 8;
              FUN_00eaecdd();
              FUN_00d96960();
              FUN_00dfc9c0();
              return;
            }
LAB_00794aa1:
            if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
          }
          else {
            local_34 = FUN_0077acc0();
            if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
              param_1[3] = 9;
              FUN_00eaecdd();
              FUN_00d96960();
              FUN_00dfca00();
              return;
            }
LAB_00794a5f:
            if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            uVar10 = (undefined4)((ulonglong)in_stack_fffffee0 >> 0x20);
            if (*(int *)(local_34 + 0x20) == 0) {
              iVar4 = 0;
            }
            else {
              FUN_00eae9a0();
              FUN_00e98fe7();
              in_stack_fffffee0 = (double)CONCAT44(uVar10,&PTR_DAT_01544498);
              FUN_00e4ee90(&PTR_DAT_01544498);
              if (*(int *)(param_1[1] + 8) == 0) {
                uVar10 = (undefined4)((ulonglong)in_stack_fffffee0 >> 0x20);
                FUN_00eae9a0();
                FUN_00e9904d();
                in_stack_fffffee0 = (double)CONCAT44(uVar10,0x79518e);
                FUN_00eaec14();
              }
              FUN_00e44450();
              iVar4 = *(int *)(DAT_01c28984 + 8);
              if (iVar4 == 0) {
                iVar4 = FUN_00eae9a0(in_stack_fffffee0);
                uVar10 = (undefined4)((ulonglong)in_stack_fffffee0 >> 0x20);
                FUN_00e9902b();
                in_stack_fffffee0 = (double)CONCAT44(uVar10,0x7951d2);
                FUN_00eaec14();
              }
              FUN_00eae9a0(in_stack_fffffee0);
              FUN_00cf24b0(0,0,0,iVar4);
              iVar4 = FUN_00e4ee50();
            }
            if ((iVar4 == 0) || (iVar4 = FUN_00e4d690(), iVar4 == 0)) {
              if (PTR_LAB_01c23e7c != (undefined *)0x0) {
                FUN_00e8f54a();
              }
              local_48 = FUN_00b848a0();
              if (local_48 == 0) {
                local_3c = (undefined4 *)0x0;
                local_38 = 0;
              }
              else {
                local_3c = (undefined4 *)(local_48 + 8);
                local_38 = *(uint *)(local_48 + 4);
              }
              local_4c = 0;
              local_44 = 0;
              local_40 = 0;
              if (local_38 < 4) {
                FUN_0099d6f0();
              }
              else {
                *local_3c = 0x61004d;
                local_3c[1] = 0x200070;
                local_44 = 4;
              }
              FUN_00de77e0();
              uVar3 = _UNK_018d3bfc;
              uVar5 = _UNK_018d3bf8;
              uVar10 = _UNK_018d3bf4;
              if (local_38 < local_44) goto LAB_007961a0;
              puVar1 = (undefined4 *)((int)local_3c + local_44 * 2);
              if (local_38 - local_44 < 0x1b) {
                FUN_0099d6f0();
              }
              else {
                *puVar1 = _DAT_018d3bf0;
                puVar1[1] = uVar10;
                puVar1[2] = uVar5;
                puVar1[3] = uVar3;
                uVar3 = _UNK_018d3c0c;
                uVar5 = _UNK_018d3c08;
                uVar10 = _UNK_018d3c04;
                puVar1[4] = _DAT_018d3c00;
                puVar1[5] = uVar10;
                puVar1[6] = uVar5;
                puVar1[7] = uVar3;
                uVar3 = _UNK_018d3c1c;
                uVar5 = _UNK_018d3c18;
                uVar10 = _UNK_018d3c14;
                puVar1[8] = _DAT_018d3c10;
                puVar1[9] = uVar10;
                puVar1[10] = uVar5;
                puVar1[0xb] = uVar3;
                puVar1[0xc] = 0x6e1ea7;
                *(undefined2 *)(puVar1 + 0xd) = 0x20;
                local_44 = local_44 + 0x1b;
              }
              FUN_00de77e0();
              uVar3 = _UNK_018d3c2c;
              uVar5 = _UNK_018d3c28;
              uVar10 = _UNK_018d3c24;
              if (local_38 < local_44) goto LAB_007961a0;
              puVar1 = (undefined4 *)((int)local_3c + local_44 * 2);
              if (local_38 - local_44 < 0x16) {
                FUN_0099d6f0();
              }
              else {
                *puVar1 = _DAT_018d3c20;
                puVar1[1] = uVar10;
                puVar1[2] = uVar5;
                puVar1[3] = uVar3;
                uVar3 = _UNK_018d3c3c;
                uVar5 = _UNK_018d3c38;
                uVar10 = _UNK_018d3c34;
                puVar1[4] = _DAT_018d3c30;
                puVar1[5] = uVar10;
                puVar1[6] = uVar5;
                puVar1[7] = uVar3;
                puVar1[8] = 0x320020;
                puVar1[9] = 0x2e0073;
                puVar1[10] = 0x2e002e;
                local_44 = local_44 + 0x16;
              }
              FUN_0099d560();
              FUN_007876b0();
              local_18 = FUN_00975000();
              if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
                param_1[3] = 10;
                FUN_00eaeca8();
                FUN_00d96960();
                FUN_00dfc9c0();
                return;
              }
LAB_00794a30:
              if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
            }
            else {
              *(undefined1 *)(param_1 + 9) = 1;
              while( true ) {
                while( true ) {
                  while( true ) {
                    if ((*(int *)(iVar2 + 0x1c) != 0) &&
                       (*(int *)(*(int *)(iVar2 + 0x1c) + 0x10) != 0)) goto LAB_00795ba6;
                    FUN_00eae9a0();
                    FUN_00eaeca8();
                    local_14 = FUN_0077abc0();
                    if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
                      param_1[3] = 0xb;
                      FUN_00eaeca8();
                      FUN_00d96960();
                      FUN_00dfca00();
                      return;
                    }
LAB_0079497a:
                    if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
                      FUN_0099dbc0();
                    }
                    FUN_00eaebca();
                    iVar4 = *(int *)(*(int *)(extraout_ECX_02 + 4) + 4);
                    if (iVar4 != 0) break;
                    local_18 = FUN_00975000();
                    if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
                      param_1[3] = 0xc;
                      FUN_00eaecdd();
                      FUN_00d96960();
                      FUN_00dfc9c0();
                      return;
                    }
LAB_00794940:
                    if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
                      FUN_0099dbc0();
                    }
                  }
                  if (*(char *)(iVar4 + 0x69) == '\0') break;
                  local_18 = FUN_00975000();
                  if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
                    param_1[3] = 0xd;
                    FUN_00eaecdd();
                    FUN_00d96960();
                    FUN_00dfc9c0();
                    return;
                  }
LAB_00794906:
                  if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
                    FUN_0099dbc0();
                  }
                }
                local_34 = FUN_0077acc0();
                if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
                  param_1[3] = 0xe;
                  FUN_00eaecdd();
                  FUN_00d96960();
                  FUN_00dfca00();
                  return;
                }
LAB_007948c4:
                if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
                uVar10 = (undefined4)((ulonglong)in_stack_fffffee0 >> 0x20);
                if (*(int *)(local_34 + 0x20) == 0) {
                  iVar4 = 0;
                }
                else {
                  FUN_00eae9a0();
                  FUN_00e98ff8();
                  in_stack_fffffee0 = (double)CONCAT44(uVar10,&PTR_DAT_01544498);
                  FUN_00e4ee90(&PTR_DAT_01544498);
                  if (*(int *)(param_1[1] + 0xc) == 0) {
                    uVar10 = (undefined4)((ulonglong)in_stack_fffffee0 >> 0x20);
                    FUN_00eae9a0();
                    FUN_00e9905e();
                    in_stack_fffffee0 = (double)CONCAT44(uVar10,0x79537e);
                    FUN_00eaec14();
                  }
                  FUN_00e44450();
                  iVar4 = *(int *)(DAT_01c28984 + 0xc);
                  if (iVar4 == 0) {
                    iVar4 = FUN_00eae9a0(in_stack_fffffee0);
                    uVar10 = (undefined4)((ulonglong)in_stack_fffffee0 >> 0x20);
                    FUN_00e9903c();
                    in_stack_fffffee0 = (double)CONCAT44(uVar10,0x7953c2);
                    FUN_00eaec14();
                  }
                  FUN_00eae9a0(in_stack_fffffee0);
                  FUN_00cf24b0(0,0,0,iVar4);
                  iVar4 = FUN_00e4ee50();
                }
                if ((iVar4 == 0) || (iVar4 = FUN_00e4d690(), iVar4 == 0)) break;
                FUN_00e4e3a0();
                if ((char)uStack_a8 == '\0') {
                    /* WARNING: Subroutine does not return */
                  FUN_00860240();
                }
                FUN_00eaebca();
                if (PTR_LAB_01c23e7c != (undefined *)0x0) {
                  FUN_00e8f54a();
                }
                local_78 = FUN_00b848a0();
                uVar3 = _UNK_018d3bac;
                uVar5 = _UNK_018d3ba8;
                uVar10 = _UNK_018d3ba4;
                if (local_78 == 0) {
                  local_6c = (undefined4 *)0x0;
                  local_68 = 0;
                }
                else {
                  local_6c = (undefined4 *)(local_78 + 8);
                  local_68 = *(uint *)(local_78 + 4);
                }
                local_7c = 0;
                local_74 = 0;
                local_70 = '\0';
                if (local_68 < 10) {
                  FUN_0099d6f0();
                }
                else {
                  *local_6c = _DAT_018d3ba0;
                  local_6c[1] = uVar10;
                  local_6c[2] = uVar5;
                  local_6c[3] = uVar3;
                  local_6c[4] = 0x20003a;
                  local_74 = 10;
                }
                iVar4 = *(int *)(*(int *)(param_1[2] + 4) + 0x20);
                if ((local_70 == '\0') && (iVar4 != 0)) {
                  if (local_68 < local_74) goto LAB_007961a0;
                  if (local_68 - local_74 < *(uint *)(iVar4 + 4)) goto LAB_00795504;
                  FUN_00930280();
                  local_74 = local_74 + *(int *)(iVar4 + 4);
                }
                else {
LAB_00795504:
                  FUN_0099d670();
                }
                if (local_68 < local_74) goto LAB_007961a0;
                puVar1 = (undefined4 *)((int)local_6c + local_74 * 2);
                if (local_68 - local_74 < 7) {
                  FUN_0099d6f0();
                }
                else {
                  *puVar1 = 0x280020;
                  puVar1[1] = 0xe10063;
                  puVar1[2] = 0x680063;
                  *(undefined2 *)(puVar1 + 3) = 0x20;
                  local_74 = local_74 + 7;
                }
                FUN_00dde2a0(*(undefined8 *)(*(int *)(param_1[2] + 4) + 0x14));
                if (local_68 < local_74) goto LAB_007961a0;
                if (local_68 == local_74) {
                  FUN_0099d6f0();
                }
                else {
                  *(undefined2 *)((int)local_6c + local_74 * 2) = 0x29;
                  local_74 = local_74 + 1;
                }
                FUN_0099d560();
                FUN_007876b0();
                param_1[7] = 0;
                piVar6 = param_1;
                while( true ) {
                  local_9c = *(double *)(*(int *)(piVar6[2] + 4) + 0xc);
                  dStack_b8 = *(double *)(*(int *)(piVar6[1] + 4) + 0xc);
                  fVar7 = (float10)FUN_00eb6460(DAT_018d3bb0,
                                                *(double *)(*(int *)(piVar6[2] + 4) + 4) -
                                                *(double *)(*(int *)(piVar6[1] + 4) + 4));
                  fVar8 = (float10)FUN_00eb6460(DAT_018d3bb0,local_9c - dStack_b8);
                  in_stack_fffffee0 = (double)fVar8;
                  if (((SQRT(in_stack_fffffee0 + (double)fVar7) <= _DAT_018d3bb8) ||
                      (0x13 < param_1[7])) ||
                     ((*(int *)(iVar2 + 0x1c) != 0 && (*(int *)(*(int *)(iVar2 + 0x1c) + 0x10) != 0)
                      ))) break;
                  dVar9 = *(double *)(*(int *)(param_1[2] + 4) + 4) / _DAT_018d3bc0;
                  iVar4 = 0x7fffffff;
                  if (dVar9 < _DAT_018d3bc8) {
                    iVar4 = (int)(double)(-(ulonglong)(!NAN(dVar9) && !NAN(dVar9)) &
                                         (ulonglong)dVar9);
                  }
                  local_a4 = (double)iVar4;
                  dVar9 = *(double *)(*(int *)(param_1[2] + 4) + 0xc) / _DAT_018d3bc0;
                  iVar4 = 0x7fffffff;
                  if (dVar9 < _DAT_018d3bc8) {
                    iVar4 = (int)(double)(-(ulonglong)(!NAN(dVar9) && !NAN(dVar9)) &
                                         (ulonglong)dVar9);
                  }
                  dStack_b0 = (double)iVar4;
                  FUN_00eaeae1();
                  iVar4 = FUN_00eae9a0();
                  *(double *)(iVar4 + 4) = local_a4 * _DAT_018d3bc0;
                  FUN_00eaebca();
                  iVar4 = FUN_00eae9a0();
                  *(double *)(iVar4 + 4) = dStack_b0 * _DAT_018d3bc0;
                  FUN_00eaebca();
                  iVar4 = FUN_00eae9a0();
                  *(undefined4 *)(iVar4 + 4) = 0;
                  FUN_00eaebca();
                  FUN_0077a610(extraout_ECX_06,&PTR_DAT_01bf1f80);
                  local_18 = FUN_00975000();
                  if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
                    param_1[3] = 0xf;
                    FUN_00eaeca8();
                    FUN_00d96960();
                    FUN_00dfc9c0();
                    return;
                  }
LAB_0079483d:
                  if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
                    FUN_0099dbc0();
                  }
                  local_14 = FUN_0077abc0();
                  if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
                    param_1[3] = 0x10;
                    FUN_00eaeca8();
                    FUN_00d96960();
                    FUN_00dfca00();
                    return;
                  }
LAB_007947d8:
                  if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
                    FUN_0099dbc0();
                  }
                  FUN_00eaebca();
                  if (*(int *)(extraout_ECX_01[1] + 4) == 0) break;
                  extraout_ECX_01[7] = extraout_ECX_01[7] + 1;
                  piVar6 = extraout_ECX_01;
                }
                local_34 = FUN_0077acc0();
                if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
                  param_1[3] = 0x11;
                  FUN_00eaecdd();
                  FUN_00d96960();
                  FUN_00dfca00();
                  return;
                }
LAB_00794796:
                if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
                uVar11 = (uint)((ulonglong)in_stack_fffffee0 >> 0x20);
                if (*(int *)(local_34 + 0x20) == 0) {
                  iVar4 = 0;
                }
                else {
                  FUN_00eae9a0();
                  FUN_00e99080();
                  in_stack_fffffee0 = (double)((ulonglong)uVar11 << 0x20);
                  iVar4 = FUN_00e4e4a0();
                }
                if ((iVar4 == 0) || (*(char *)(iVar4 + 0x2c) != '\0')) {
                  FUN_00906a20();
                  FUN_007876b0();
                }
                else {
                  local_18 = FUN_00793bb0();
                  if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
                    param_1[3] = 0x12;
                    FUN_00eaeca8();
                    FUN_00d96960();
                    FUN_00dfc9c0();
                    return;
                  }
LAB_00794646:
                  if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
                    FUN_0099dbc0();
                  }
                  FUN_00906a20();
                  FUN_007876b0();
                  param_1[8] = 0;
                  *(undefined1 *)((int)param_1 + 0x25) = 0;
                  while( true ) {
                    if ((4 < param_1[8]) ||
                       ((*(int *)(iVar2 + 0x1c) != 0 &&
                        (*(int *)(*(int *)(iVar2 + 0x1c) + 0x10) != 0)))) goto LAB_00794564;
                    uVar10 = *(undefined4 *)(*(int *)(param_1[2] + 4) + 0x28);
                    uStack_c0 = *(undefined4 *)(*(int *)(iVar2 + 0x14) + 8);
                    uVar5 = FUN_00eaeae1();
                    iVar4 = FUN_00eae9a0();
                    *(undefined4 *)(iVar4 + 4) = uVar10;
                    FUN_00eaebca();
                    iVar4 = FUN_00eae9a0();
                    *(undefined4 *)(iVar4 + 4) = 1;
                    FUN_00eaebca();
                    FUN_0077a610(uVar5,&PTR_DAT_01be3a98);
                    local_18 = FUN_00975000();
                    if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
                      param_1[3] = 0x13;
                      FUN_00eaeca8();
                      FUN_00d96960();
                      FUN_00dfc9c0();
                      return;
                    }
LAB_007945bf:
                    if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
                      FUN_0099dbc0();
                    }
                    local_14 = FUN_0077abc0();
                    if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
                      param_1[3] = 0x14;
                      FUN_00eaeca8();
                      FUN_00d96960();
                      FUN_00dfca00();
                      return;
                    }
LAB_00794504:
                    if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
                      FUN_0099dbc0();
                    }
                    FUN_00eaebca();
                    iVar4 = *(int *)(*(int *)(extraout_ECX_00 + 4) + 4);
                    if ((iVar4 != 0) && (*(char *)(iVar4 + 0x69) != '\0')) break;
                    local_34 = FUN_0077acc0();
                    if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
                      param_1[3] = 0x15;
                      FUN_00eaecdd();
                      FUN_00d96960();
                      FUN_00dfca00();
                      return;
                    }
LAB_007944c2:
                    if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
                      FUN_0099dbc0();
                    }
                    uVar10 = (undefined4)((ulonglong)in_stack_fffffee0 >> 0x20);
                    if (*(int *)(local_34 + 0x20) == 0) {
                      iVar4 = 0;
                    }
                    else {
                      if (*(int *)(param_1[2] + 8) == 0) {
                        FUN_00eae9a0();
                        FUN_00e99091();
                        in_stack_fffffee0 = (double)CONCAT44(uVar10,0x7959c3);
                        FUN_00eaec14();
                      }
                      iVar4 = FUN_00e4e4a0(&PTR_DAT_01544440,&local_c4);
                    }
                    if ((iVar4 == 0) || (*(char *)(iVar4 + 0x2c) != '\0')) {
                      FUN_00906a20();
                      FUN_007876b0();
                      goto LAB_00794564;
                    }
                    param_1[8] = param_1[8] + 1;
                  }
                  *(undefined1 *)((int)param_1 + 0x25) = 1;
LAB_00794564:
                  if (*(char *)((int)param_1 + 0x25) != '\0') {
                    FUN_007876b0();
                    do {
                      if ((*(int *)(iVar2 + 0x1c) != 0) &&
                         (*(int *)(*(int *)(iVar2 + 0x1c) + 0x10) != 0)) break;
                      local_18 = FUN_00975000();
                      if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
                        param_1[3] = 0x16;
                        FUN_00eaeca8();
                        FUN_00d96960();
                        FUN_00dfc9c0();
                        return;
                      }
LAB_0079443b:
                      if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
                        FUN_0099dbc0();
                      }
                      local_14 = FUN_0077abc0();
                      if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
                        param_1[3] = 0x17;
                        FUN_00eaeca8();
                        FUN_00d96960();
                        FUN_00dfca00();
                        return;
                      }
LAB_007943ce:
                      if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
                        FUN_0099dbc0();
                      }
                      FUN_00eaebca();
                      iVar4 = *(int *)(*(int *)(extraout_ECX + 4) + 4);
                    } while ((iVar4 == 0) || (*(char *)(iVar4 + 0x69) != '\0'));
                    FUN_007876b0();
                  }
                  param_1[2] = 0;
                }
              }
              if (PTR_LAB_01c23e7c != (undefined *)0x0) {
                FUN_00e8f54a();
              }
              local_60 = FUN_00b848a0();
              if (local_60 == 0) {
                local_54 = (undefined4 *)0x0;
                local_50 = 0;
              }
              else {
                local_54 = (undefined4 *)(local_60 + 8);
                local_50 = *(uint *)(local_60 + 4);
              }
              local_64 = 0;
              local_5c = 0;
              local_58 = 0;
              if (local_50 < 4) {
                FUN_0099d6f0();
              }
              else {
                *local_54 = 0x61004d;
                local_54[1] = 0x200070;
                local_5c = 4;
              }
              FUN_00de77e0();
              uVar3 = _UNK_018d3bdc;
              uVar5 = _UNK_018d3bd8;
              uVar10 = _UNK_018d3bd4;
              if (local_50 < local_5c) goto LAB_007961a0;
              puVar1 = (undefined4 *)((int)local_54 + local_5c * 2);
              if (local_50 - local_5c < 0x17) {
                FUN_0099d6f0();
              }
              else {
                *puVar1 = _DAT_018d3bd0;
                puVar1[1] = uVar10;
                puVar1[2] = uVar5;
                puVar1[3] = uVar3;
                uVar3 = _UNK_018d3bec;
                uVar5 = _UNK_018d3be8;
                uVar10 = _UNK_018d3be4;
                puVar1[4] = _DAT_018d3be0;
                puVar1[5] = uVar10;
                puVar1[6] = uVar5;
                puVar1[7] = uVar3;
                puVar1[8] = 0x6c0020;
                puVar1[9] = &DAT_00691ea1;
                puVar1[10] = 0x2e002e;
                *(undefined2 *)(puVar1 + 0xb) = 0x2e;
                local_5c = local_5c + 0x17;
              }
              FUN_0099d560();
              FUN_007876b0();
LAB_00795ba6:
              param_1[6] = -1;
            }
          }
          param_1[6] = param_1[6] + 1;
        }
        if ((char)param_1[9] == '\0') {
          if (PTR_LAB_01c23e7c != (undefined *)0x0) {
            FUN_00e8f54a();
          }
          local_90 = FUN_00b848a0();
          if (local_90 == 0) {
            local_84 = (undefined4 *)0x0;
            local_80 = 0;
          }
          else {
            local_84 = (undefined4 *)(local_90 + 8);
            local_80 = *(uint *)(local_90 + 4);
          }
          local_94 = 0;
          local_8c = 0;
          local_88 = 0;
          if (local_80 < 4) {
            FUN_0099d6f0();
          }
          else {
            *local_84 = 0x61004d;
            local_84[1] = 0x200070;
            local_8c = 4;
          }
          FUN_00de77e0();
          uVar3 = _UNK_018d3bfc;
          uVar5 = _UNK_018d3bf8;
          uVar10 = _UNK_018d3bf4;
          if (local_80 < local_8c) {
LAB_007961a0:
                    /* WARNING: Subroutine does not return */
            FUN_009318f0();
          }
          puVar1 = (undefined4 *)((int)local_84 + local_8c * 2);
          if (local_80 - local_8c < 0x14) {
            FUN_0099d6f0();
          }
          else {
            *puVar1 = _DAT_018d3bf0;
            puVar1[1] = uVar10;
            puVar1[2] = uVar5;
            puVar1[3] = uVar3;
            uVar3 = _UNK_018d3c4c;
            uVar5 = _UNK_018d3c48;
            uVar10 = _UNK_018d3c44;
            puVar1[4] = _DAT_018d3c40;
            puVar1[5] = uVar10;
            puVar1[6] = uVar5;
            puVar1[7] = uVar3;
            puVar1[8] = 0x610073;
            puVar1[9] = 0x200075;
            local_8c = local_8c + 0x14;
          }
          FUN_0099d620();
          uVar3 = _UNK_018d3c5c;
          uVar5 = _UNK_018d3c58;
          uVar10 = _UNK_018d3c54;
          if (local_80 < local_8c) goto LAB_007961a0;
          puVar1 = (undefined4 *)((int)local_84 + local_8c * 2);
          if (local_80 - local_8c < 0x14) {
            FUN_0099d6f0();
          }
          else {
            *puVar1 = _DAT_018d3c50;
            puVar1[1] = uVar10;
            puVar1[2] = uVar5;
            puVar1[3] = uVar3;
            uVar3 = _UNK_018d3c6c;
            uVar5 = _UNK_018d3c68;
            uVar10 = _UNK_018d3c64;
            puVar1[4] = _DAT_018d3c60;
            puVar1[5] = uVar10;
            puVar1[6] = uVar5;
            puVar1[7] = uVar3;
            puVar1[8] = 0x2e0070;
            puVar1[9] = 0x2e002e;
            local_8c = local_8c + 0x14;
          }
          FUN_0099d560();
          FUN_007876b0();
        }
        param_1[4] = (param_1[4] + 1) % *(int *)(*(int *)(iVar2 + 0x20) + 8);
        if (param_1[4] == 0) {
          FUN_007876b0();
          local_18 = FUN_00975000();
          if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
            param_1[3] = 0x18;
            FUN_00eaeca8();
            FUN_00d96960();
            FUN_00dfc9c0();
            return;
          }
LAB_00794391:
          if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
        }
        param_1[1] = 0;
      }
      else {
        if (PTR_LAB_01c23e7c != (undefined *)0x0) {
          FUN_00e8f54a();
        }
        local_2c = FUN_00b848a0();
        uVar3 = _UNK_018d3c7c;
        uVar5 = _UNK_018d3c78;
        uVar10 = _UNK_018d3c74;
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
        if (local_1c < 0xc) {
          FUN_0099d6f0();
        }
        else {
          *local_20 = _DAT_018d3c70;
          local_20[1] = uVar10;
          local_20[2] = uVar5;
          local_20[3] = uVar3;
          local_20[4] = 0x61006d;
          local_20[5] = 0x200070;
          local_28 = 0xc;
        }
        FUN_00de77e0();
        if (local_1c < local_28) goto LAB_007961a0;
        puVar1 = (undefined4 *)((int)local_20 + local_28 * 2);
        if (local_1c - local_28 < 3) {
          FUN_0099d6f0();
        }
        else {
          *puVar1 = 0x2e002e;
          *(undefined2 *)(puVar1 + 1) = 0x2e;
          local_28 = local_28 + 3;
        }
        FUN_0099d560();
        FUN_007876b0();
        local_18 = FUN_00787840(0,0,0,0);
        if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
          param_1[3] = 3;
          FUN_00eaeca8();
          FUN_00d96960();
          FUN_00dfc9c0();
          return;
        }
LAB_00794d3a:
        if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        local_18 = FUN_00975000();
        if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
          param_1[3] = 4;
          FUN_00eaeca8();
          FUN_00d96960();
          FUN_00dfc9c0();
          return;
        }
LAB_00794d04:
        if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
      }
    }
    else {
      local_18 = FUN_00975000();
      if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
        param_1[3] = 2;
        FUN_00eaecdd();
        FUN_00d96960();
        FUN_00dfc9c0();
        return;
      }
LAB_00794db9:
      if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
    }
LAB_00794ee9:
    if ((*(int *)(iVar2 + 0x1c) != 0) && (*(int *)(*(int *)(iVar2 + 0x1c) + 0x10) != 0)) {
      FUN_007876b0();
      param_1[3] = -2;
      if (param_1[10] == 0) {
        if (PTR_FUN_01c22110 != (undefined *)0x0) {
          FUN_00e8eaee();
        }
        FUN_00eaeca8();
        return;
      }
      iVar4 = FUN_00c0a790();
      if (iVar4 != 0) {
        return;
      }
                    /* WARNING: Subroutine does not return */
      FUN_00931e50();
    }
    FUN_00eae9a0();
    FUN_00eaeca8();
    local_14 = FUN_0077abc0();
    if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
      param_1[3] = 0;
      FUN_00eaeca8();
      FUN_00d96960();
      FUN_00dfca00();
      return;
    }
  } while( true );
}

