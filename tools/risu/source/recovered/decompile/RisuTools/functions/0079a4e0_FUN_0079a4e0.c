/* Address: 0079a4e0 | Ghidra name: FUN_0079a4e0 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_0079a4e0(int *param_1)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  int iVar4;
  undefined4 uVar5;
  int iVar6;
  int iVar7;
  undefined4 extraout_ECX;
  undefined4 extraout_ECX_00;
  undefined4 extraout_ECX_01;
  uint *puVar8;
  uint *puVar9;
  float10 fVar10;
  double dVar11;
  undefined4 in_stack_fffffefc;
  undefined4 in_stack_ffffff00;
  undefined4 in_stack_ffffff04;
  undefined **ppuVar12;
  undefined4 in_stack_ffffff08;
  undefined4 local_90;
  undefined4 uStack_8c;
  uint uStack_88;
  uint uStack_84;
  int local_80;
  int iStack_7c;
  int iStack_78;
  int iStack_74;
  int local_70;
  uint local_6c [6];
  undefined4 local_54;
  int local_50;
  uint local_4c;
  undefined1 local_48;
  int local_44;
  uint local_40;
  int local_3c;
  int local_38;
  int local_34;
  int local_30;
  int local_2c;
  uint local_28 [3];
  char local_1c;
  int local_18;
  uint local_14;
  
  local_90 = 0;
  uStack_8c = 0;
  uStack_88 = 0;
  uStack_84 = 0;
  local_80 = 0;
  iStack_7c = 0;
  iStack_78 = 0;
  iStack_74 = 0;
  iVar4 = -0x60;
  do {
    *(undefined4 *)(&stack0xfffffff0 + iVar4) = 0;
    *(undefined4 *)(&stack0xfffffff4 + iVar4) = 0;
    *(undefined4 *)(&stack0xfffffff8 + iVar4) = 0;
    *(undefined4 *)(&stack0xfffffffc + iVar4) = 0;
    puVar1 = (undefined4 *)(&stack0x00000000 + iVar4);
    *puVar1 = 0;
    puVar1[1] = 0;
    puVar1[2] = 0;
    puVar1[3] = 0;
    *(undefined4 *)(&stack0x00000010 + iVar4) = 0;
    *(undefined4 *)(&stack0x00000014 + iVar4) = 0;
    *(undefined4 *)(&stack0x00000018 + iVar4) = 0;
    *(undefined4 *)(&stack0x0000001c + iVar4) = 0;
    iVar4 = iVar4 + 0x30;
  } while (iVar4 != 0);
  iVar4 = *param_1;
  switch(param_1[3]) {
  case 0:
    local_2c = param_1[9];
    param_1[9] = 0;
    param_1[3] = -1;
    break;
  case 1:
    local_30 = param_1[10];
    param_1[10] = 0;
    param_1[3] = -1;
    goto LAB_0079b1f0;
  case 2:
    local_2c = param_1[9];
    param_1[9] = 0;
    param_1[3] = -1;
    goto LAB_0079b16f;
  case 3:
    local_2c = param_1[9];
    param_1[9] = 0;
    param_1[3] = -1;
    goto LAB_0079b0d3;
  case 4:
    local_2c = param_1[9];
    param_1[9] = 0;
    param_1[3] = -1;
    goto LAB_0079b054;
  case 5:
    local_2c = param_1[9];
    param_1[9] = 0;
    param_1[3] = -1;
    goto LAB_0079afda;
  case 6:
    local_2c = param_1[9];
    param_1[9] = 0;
    param_1[3] = -1;
    goto LAB_0079af5b;
  case 7:
    local_2c = param_1[9];
    param_1[9] = 0;
    param_1[3] = -1;
    goto LAB_0079aa40;
  case 8:
    local_34 = param_1[0xb];
    param_1[0xb] = 0;
    param_1[3] = -1;
    goto LAB_0079a9fe;
  case 9:
    local_2c = param_1[9];
    param_1[9] = 0;
    param_1[3] = -1;
    goto LAB_0079a932;
  case 10:
    local_2c = param_1[9];
    param_1[9] = 0;
    param_1[3] = -1;
    goto LAB_0079a8fc;
  case 0xb:
    local_2c = param_1[9];
    param_1[9] = 0;
    param_1[3] = -1;
    goto LAB_0079a85a;
  case 0xc:
    local_2c = param_1[9];
    param_1[9] = 0;
    param_1[3] = -1;
    goto LAB_0079a75f;
  case 0xd:
    local_2c = param_1[9];
    param_1[9] = 0;
    param_1[3] = -1;
    goto LAB_0079a6dc;
  case 0xe:
    local_30 = param_1[10];
    param_1[10] = 0;
    param_1[3] = -1;
    goto LAB_0079a692;
  case 0xf:
    local_2c = param_1[9];
    param_1[9] = 0;
    param_1[3] = -1;
    goto LAB_0079a60f;
  case 0x10:
    local_30 = param_1[10];
    param_1[10] = 0;
    param_1[3] = -1;
    goto LAB_0079a585;
  case 0x11:
    local_2c = param_1[9];
    param_1[9] = 0;
    param_1[3] = -1;
    goto LAB_0079a54e;
  default:
    iVar6 = FUN_00eae9a0();
    FUN_00eaebef();
    FUN_00eaebef();
    FUN_00eae9a0();
    FUN_00e9915d(in_stack_fffffefc);
    FUN_00e4ee90(&PTR_DAT_01543690);
    FUN_00e4ee50();
    FUN_00eaeca8();
    FUN_00eae9a0();
    FUN_00e9916e(in_stack_ffffff00);
    iVar7 = FUN_00e4d760(&PTR_DAT_0154358c);
    if (iVar7 == 0) {
      iVar7 = param_1[1];
      *(int *)(iVar7 + 0xc) = *(int *)(iVar7 + 0xc) + 1;
      if (*(uint *)(iVar7 + 8) < *(uint *)(*(int *)(iVar7 + 4) + 4)) {
        *(uint *)(iVar7 + 8) = *(uint *)(iVar7 + 8) + 1;
        FUN_00eaebca();
      }
      else {
        FUN_00ccd380();
      }
    }
    FUN_0099d430(2);
    puVar8 = local_6c;
    puVar9 = local_28;
    for (iVar7 = 6; iVar7 != 0; iVar7 = iVar7 + -1) {
      *puVar9 = *puVar8;
      puVar8 = puVar8 + 1;
      puVar9 = puVar9 + 1;
    }
    if (local_14 < local_28[2]) goto LAB_0079b667;
    if (local_14 - local_28[2] < 0x21) {
      FUN_0099d6f0();
    }
    else {
      FUN_00930280(0x42);
      local_28[2] = local_28[2] + 0x21;
    }
    iVar6 = *(int *)(iVar6 + 4);
    if ((local_1c == '\0') && (iVar6 != 0)) {
      if (local_14 < local_28[2]) goto LAB_0079b667;
      if (local_14 - local_28[2] < *(uint *)(iVar6 + 4)) goto LAB_0079b4e8;
      FUN_00930280(*(int *)(iVar6 + 4) * 2);
      local_28[2] = local_28[2] + *(int *)(iVar6 + 4);
    }
    else {
LAB_0079b4e8:
      FUN_0099d670();
    }
    if (local_14 < local_28[2]) {
LAB_0079b667:
                    /* WARNING: Subroutine does not return */
      FUN_009318f0();
    }
    puVar1 = (undefined4 *)(local_18 + local_28[2] * 2);
    if (local_14 - local_28[2] < 5) {
      FUN_0099d6f0();
    }
    else {
      *puVar1 = 0x670020;
      puVar1[1] = 0x6d1ed3;
      *(undefined2 *)(puVar1 + 2) = 0x20;
      local_28[2] = local_28[2] + 5;
    }
    FUN_00de77e0();
    uVar3 = _UNK_018d3ecc;
    uVar2 = _UNK_018d3ec8;
    uVar5 = _UNK_018d3ec4;
    if (local_14 < local_28[2]) goto LAB_0079b667;
    puVar1 = (undefined4 *)(local_18 + local_28[2] * 2);
    if (local_14 - local_28[2] < 0xe) {
      FUN_0099d6f0();
    }
    else {
      *puVar1 = _DAT_018d3ec0;
      puVar1[1] = uVar5;
      puVar1[2] = uVar2;
      puVar1[3] = uVar3;
      puVar1[4] = 0xea0069;
      puVar1[5] = 0x2e006e;
      puVar1[6] = 0x2e002e;
      local_28[2] = local_28[2] + 0xe;
    }
    FUN_0099d560();
    FUN_007876b0();
    FUN_00eae9a0();
    FUN_00e9917f(in_stack_ffffff04);
    FUN_00e44450(&PTR_DAT_015437ec);
    local_2c = FUN_00975100();
    if ((*(uint *)(local_2c + 0x1c) & 0x1600000) == 0) {
      param_1[3] = 0;
      FUN_00eaecdd();
      FUN_00d97600();
      FUN_00dfc9c0();
      return;
    }
  }
  if ((*(uint *)(local_2c + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  local_30 = FUN_0077abc0();
  if ((*(uint *)(local_30 + 0x1c) & 0x1600000) == 0) {
    param_1[3] = 1;
    FUN_00eaecdd();
    FUN_00d97600();
    FUN_00dfca00(&PTR_DAT_01553fd0);
  }
  else {
LAB_0079b1f0:
    if ((*(uint *)(local_30 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if ((*(int *)(local_30 + 0x20) != 0) && (*(char *)(*(int *)(local_30 + 0x20) + 0x6b) != '\0')) {
      uStack_8c = *(undefined4 *)(*(int *)(iVar4 + 0x14) + 8);
      FUN_00eaeae1();
      iVar6 = FUN_00eae9a0();
      *(undefined4 *)(iVar6 + 4) = 0;
      FUN_00eaebca();
      FUN_0077a610(extraout_ECX_01,&PTR_DAT_01beaee0);
      local_2c = FUN_00975000(*(undefined4 *)(iVar4 + 0x1c));
      if ((*(uint *)(local_2c + 0x1c) & 0x1600000) == 0) {
        param_1[3] = 2;
        FUN_00eaecdd();
        FUN_00d97600();
        FUN_00dfc9c0();
        return;
      }
LAB_0079b16f:
      if ((*(uint *)(local_2c + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
    }
    local_2c = FUN_00787840(0,0,0,0);
    if ((*(uint *)(local_2c + 0x1c) & 0x1600000) == 0) {
      param_1[3] = 3;
      FUN_00eaecdd();
      FUN_00d97600();
      FUN_00dfc9c0();
    }
    else {
LAB_0079b0d3:
      if ((*(uint *)(local_2c + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      local_2c = FUN_007877c0(1,0,0,(int)DAT_018d3eb0,(int)((ulonglong)DAT_018d3eb0 >> 0x20),
                              (int)DAT_018d3ea8,(int)((ulonglong)DAT_018d3ea8 >> 0x20));
      if ((*(uint *)(local_2c + 0x1c) & 0x1600000) == 0) {
        param_1[3] = 4;
        FUN_00eaecdd();
        FUN_00d97600();
        FUN_00dfc9c0();
      }
      else {
LAB_0079b054:
        if ((*(uint *)(local_2c + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        local_2c = FUN_00975000(*(undefined4 *)(iVar4 + 0x1c));
        if ((*(uint *)(local_2c + 0x1c) & 0x1600000) == 0) {
          param_1[3] = 5;
          FUN_00eaecdd();
          FUN_00d97600();
          FUN_00dfc9c0();
        }
        else {
LAB_0079afda:
          if ((*(uint *)(local_2c + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          local_2c = FUN_00787a10(0,1);
          if ((*(uint *)(local_2c + 0x1c) & 0x1600000) == 0) {
            param_1[3] = 6;
            FUN_00eaecdd();
            FUN_00d97600();
            FUN_00dfc9c0();
          }
          else {
LAB_0079af5b:
            if ((*(uint *)(local_2c + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            local_2c = FUN_00975000(*(undefined4 *)(iVar4 + 0x1c));
            if ((*(uint *)(local_2c + 0x1c) & 0x1600000) == 0) {
              param_1[3] = 7;
              FUN_00eaecdd();
              FUN_00d97600();
              FUN_00dfc9c0();
            }
            else {
LAB_0079aa40:
              if ((*(uint *)(local_2c + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
              param_1[6] = 0;
              param_1[7] = 0;
              param_1[8] = 0;
              param_1[4] = 0;
              while( true ) {
                while( true ) {
                  if ((*(int *)(iVar4 + 0x1c) != 0) &&
                     (*(int *)(*(int *)(iVar4 + 0x1c) + 0x10) != 0)) {
                    param_1[3] = -2;
                    param_1[1] = 0;
                    if (param_1[5] == 0) {
                      if (PTR_FUN_01c22110 != (undefined *)0x0) {
                        FUN_00e8eaee();
                      }
                      FUN_00eaecdd();
                      return;
                    }
                    iVar4 = FUN_00c0a790(0);
                    if (iVar4 != 0) {
                      return;
                    }
                    /* WARNING: Subroutine does not return */
                    FUN_00931e50();
                  }
                  local_34 = FUN_0077ad90();
                  if ((*(uint *)(local_34 + 0x1c) & 0x1600000) == 0) {
                    param_1[3] = 8;
                    FUN_00eaecdd();
                    FUN_00d97600();
                    FUN_00dfca00(&PTR_DAT_01568f14);
                    return;
                  }
LAB_0079a9fe:
                  if ((*(uint *)(local_34 + 0x1c) & 0x11000000) != 0x1000000) {
                    FUN_0099dbc0();
                  }
                  if (*(int *)(local_34 + 0x20) != 0) {
                    if (*(int *)(DAT_01c289a4 + 8) == 0) {
                      FUN_00eae9a0();
                      FUN_00e9914c(in_stack_ffffff08);
                      in_stack_ffffff08 = 0x79ab0f;
                      FUN_00eaebef();
                    }
                    FUN_00e4e4a0(&PTR_DAT_01544bfc,&local_90);
                  }
                  FUN_00eaeca8();
                  if (param_1[2] != 0) break;
                  in_stack_ffffff08 = FUN_00eaeae1();
                  iVar6 = FUN_00eae9a0();
                  *(undefined4 *)(iVar6 + 4) = 0x11da;
                  FUN_00eaebca();
                  iVar6 = FUN_00eae9a0();
                  *(undefined4 *)(iVar6 + 4) = 0x467;
                  FUN_00eaebca();
                  iVar6 = FUN_00eae9a0();
                  *(undefined4 *)(iVar6 + 4) = 1;
                  FUN_00eaebca();
                  FUN_0077a610(extraout_ECX_00,&PTR_DAT_01bf0f44);
                  local_2c = FUN_00975000(*(undefined4 *)(iVar4 + 0x1c));
                  if ((*(uint *)(local_2c + 0x1c) & 0x1600000) == 0) {
                    param_1[3] = 0xb;
                    FUN_00eaecdd();
                    FUN_00d97600();
                    FUN_00dfc9c0();
                    return;
                  }
LAB_0079a85a:
                  if ((*(uint *)(local_2c + 0x1c) & 0x11000000) != 0x1000000) {
                    FUN_0099dbc0();
                  }
                  FUN_00916ec0();
                  iStack_74 = local_80;
                  local_70 = iStack_7c;
                  param_1[6] = iStack_78;
                  param_1[7] = local_80;
                  param_1[8] = iStack_7c;
                  *(undefined1 *)(param_1 + 6) = 1;
                  local_2c = FUN_00799de0();
                  if ((*(uint *)(local_2c + 0x1c) & 0x1600000) == 0) {
                    param_1[3] = 0xc;
                    FUN_00eaecdd();
                    FUN_00d97600();
                    FUN_00dfc9c0();
                    return;
                  }
LAB_0079a75f:
                  if ((*(uint *)(local_2c + 0x1c) & 0x11000000) != 0x1000000) {
                    FUN_0099dbc0();
                  }
                  FUN_00eaeae1();
                  iVar6 = FUN_00eae9a0();
                  *(undefined4 *)(iVar6 + 4) = 0x467;
                  FUN_00eaebca();
                  iVar6 = FUN_00eae9a0();
                  *(undefined4 *)(iVar6 + 4) = 1;
                  FUN_00eaebca();
                  FUN_0077a610(extraout_ECX,&PTR_DAT_01be3a98);
                  local_2c = FUN_00975000(*(undefined4 *)(iVar4 + 0x1c));
                  if ((*(uint *)(local_2c + 0x1c) & 0x1600000) == 0) {
                    param_1[3] = 0xd;
                    FUN_00eaecdd();
                    FUN_00d97600();
                    FUN_00dfc9c0();
                    return;
                  }
LAB_0079a6dc:
                  if ((*(uint *)(local_2c + 0x1c) & 0x11000000) != 0x1000000) {
                    FUN_0099dbc0();
                  }
                  local_30 = FUN_0077abc0();
                  if ((*(uint *)(local_30 + 0x1c) & 0x1600000) == 0) {
                    param_1[3] = 0xe;
                    FUN_00eaecdd();
                    FUN_00d97600();
                    FUN_00dfca00(&PTR_DAT_01553fd0);
                    return;
                  }
LAB_0079a692:
                  if ((*(uint *)(local_30 + 0x1c) & 0x11000000) != 0x1000000) {
                    FUN_0099dbc0();
                  }
                  iVar6 = *(int *)(local_30 + 0x20);
                  if ((iVar6 != 0) && (*(char *)(iVar6 + 0x69) != '\0')) {
                    while (((iVar6 != 0 && (*(char *)(iVar6 + 0x69) != '\0')) &&
                           ((*(int *)(iVar4 + 0x1c) == 0 ||
                            (*(int *)(*(int *)(iVar4 + 0x1c) + 0x10) == 0))))) {
                      local_2c = FUN_00975000(*(undefined4 *)(iVar4 + 0x1c));
                      if ((*(uint *)(local_2c + 0x1c) & 0x1600000) == 0) {
                        param_1[3] = 0xf;
                        FUN_00eaecdd();
                        FUN_00d97600();
                        FUN_00dfc9c0();
                        return;
                      }
LAB_0079a60f:
                      if ((*(uint *)(local_2c + 0x1c) & 0x11000000) != 0x1000000) {
                        FUN_0099dbc0();
                      }
                      local_30 = FUN_0077abc0();
                      if ((*(uint *)(local_30 + 0x1c) & 0x1600000) == 0) {
                        param_1[3] = 0x10;
                        FUN_00eaecdd();
                        FUN_00d97600();
                        FUN_00dfca00(&PTR_DAT_01553fd0);
                        return;
                      }
LAB_0079a585:
                      if ((*(uint *)(local_30 + 0x1c) & 0x11000000) != 0x1000000) {
                        FUN_0099dbc0();
                      }
                      iVar6 = *(int *)(local_30 + 0x20);
                    }
                    param_1[4] = param_1[4] + 1;
                    if (PTR_LAB_01c23e7c != (undefined *)0x0) {
                      FUN_00e8f54a();
                    }
                    local_50 = FUN_00b848a0();
                    if (local_50 == 0) {
                      local_44 = 0;
                      local_40 = 0;
                    }
                    else {
                      local_44 = local_50 + 8;
                      local_40 = *(uint *)(local_50 + 4);
                    }
                    local_54 = 0;
                    local_4c = 0;
                    local_48 = 0;
                    if (local_40 < 0x22) {
                      FUN_0099d6f0();
                    }
                    else {
                      FUN_00930280(0x44);
                      local_4c = local_4c + 0x22;
                    }
                    FUN_00de77e0();
                    if (local_40 < local_4c) goto LAB_0079b667;
                    if (local_40 == local_4c) {
                      FUN_0099d6f0();
                    }
                    else {
                      *(undefined2 *)(local_44 + local_4c * 2) = 0x21;
                      local_4c = local_4c + 1;
                    }
                    FUN_0099d560();
                    FUN_007876b0();
                  }
                  local_2c = FUN_00975000(*(undefined4 *)(iVar4 + 0x1c));
                  if ((*(uint *)(local_2c + 0x1c) & 0x1600000) == 0) {
                    param_1[3] = 0x11;
                    FUN_00eaecdd();
                    FUN_00d97600();
                    FUN_00dfc9c0();
                    return;
                  }
LAB_0079a54e:
                  if ((*(uint *)(local_2c + 0x1c) & 0x11000000) != 0x1000000) {
                    FUN_0099dbc0();
                  }
                  param_1[2] = 0;
                }
                if ((char)param_1[6] != '\0') {
                  FUN_00916ec0();
                  if ((char)param_1[6] == '\0') {
                    /* WARNING: Subroutine does not return */
                    FUN_009322f0();
                  }
                  local_3c = uStack_88 - param_1[7];
                  local_38 = ((uStack_84 & 0x3fffffff) - (param_1[8] & 0x3fffffffU)) -
                             (uint)(uStack_88 < (uint)param_1[7]);
                  fVar10 = (float10)FUN_009338f0();
                  if ((double)fVar10 < DAT_018d3e98) {
                    dVar11 = DAT_018d3e98 - (double)fVar10;
                    iVar6 = 0x7fffffff;
                    if (dVar11 < _DAT_018d3ea0) {
                      iVar6 = (int)(double)(-(ulonglong)(!NAN(dVar11) && !NAN(dVar11)) &
                                           (ulonglong)dVar11);
                    }
                    if (iVar6 < -1) {
                    /* WARNING: Subroutine does not return */
                      FUN_00931dc0();
                    }
                    local_2c = FUN_00975000(*(undefined4 *)(iVar4 + 0x1c));
                    if ((*(uint *)(local_2c + 0x1c) & 0x1600000) == 0) {
                      param_1[3] = 9;
                      FUN_00eaecdd();
                      FUN_00d97600();
                      FUN_00dfc9c0();
                      return;
                    }
LAB_0079a932:
                    if ((*(uint *)(local_2c + 0x1c) & 0x11000000) != 0x1000000) {
                      FUN_0099dbc0();
                    }
                  }
                }
                FUN_00eaeae1();
                iVar6 = param_1[2];
                iVar7 = FUN_00eae9a0();
                *(undefined4 *)(iVar7 + 4) = *(undefined4 *)(iVar6 + 0x20);
                FUN_00eaebca();
                iVar6 = FUN_00eae9a0();
                *(undefined ***)(iVar6 + 4) = &PTR_DAT_01c0f494;
                *(int *)(iVar6 + 0xc) = *(int *)(iVar6 + 0xc) + 1;
                if (*(uint *)(iVar6 + 8) < *(uint *)(*(int *)(iVar6 + 4) + 4)) {
                  *(uint *)(iVar6 + 8) = *(uint *)(iVar6 + 8) + 1;
                  FUN_0099b2e0(&PTR_DAT_01be32cc);
                }
                else {
                  FUN_00ccd380();
                }
                FUN_00ccd480();
                ppuVar12 = &PTR_DAT_01bef14c;
                uVar5 = FUN_00ccde10(&PTR_DAT_01bef14c);
                FUN_0077a610(uVar5,ppuVar12);
                param_1[6] = 0;
                param_1[7] = 0;
                param_1[8] = 0;
                local_2c = FUN_00975000(*(undefined4 *)(iVar4 + 0x1c));
                if ((*(uint *)(local_2c + 0x1c) & 0x1600000) == 0) break;
LAB_0079a8fc:
                if ((*(uint *)(local_2c + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
              }
              param_1[3] = 10;
              FUN_00eaecdd();
              FUN_00d97600();
              FUN_00dfc9c0();
            }
          }
        }
      }
    }
  }
  return;
}

