/* Address: 007a2b40 | Ghidra name: FUN_007a2b40 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_007a2b40(int *param_1)

{
  undefined4 *puVar1;
  int iVar2;
  uint uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  int iVar7;
  int iVar8;
  undefined4 extraout_ECX;
  undefined4 extraout_ECX_00;
  undefined4 extraout_ECX_01;
  int *extraout_ECX_02;
  int *piVar9;
  uint uVar10;
  int in_stack_ffffff34;
  int local_a4;
  uint local_7c;
  undefined1 local_78 [4];
  undefined4 local_74;
  undefined1 local_70 [4];
  undefined4 local_6c;
  undefined1 local_68 [4];
  undefined4 local_64;
  char local_60;
  undefined1 local_5c [4];
  undefined1 local_58 [4];
  undefined4 local_54;
  undefined4 local_50;
  undefined4 local_4c;
  undefined4 local_48;
  undefined4 local_44;
  int local_40;
  uint local_3c;
  char local_38;
  undefined4 *local_34;
  uint local_30;
  int local_2c;
  int local_28;
  int local_24;
  int local_20;
  int local_1c;
  int local_18 [2];
  
  iVar7 = -0x60;
  do {
    *(undefined4 *)((int)local_18 + iVar7) = 0;
    *(undefined4 *)((int)local_18 + iVar7 + 4) = 0;
    *(undefined4 *)(&stack0xfffffff0 + iVar7) = 0;
    *(undefined4 *)(&stack0xfffffff4 + iVar7) = 0;
    *(undefined4 *)(&stack0xfffffff8 + iVar7) = 0;
    *(undefined4 *)(&stack0xfffffffc + iVar7) = 0;
    *(undefined4 *)(&stack0x00000000 + iVar7) = 0;
    *(undefined4 *)(&stack0x00000004 + iVar7) = 0;
    *(undefined4 *)(&stack0x00000008 + iVar7) = 0;
    *(undefined4 *)(&stack0x0000000c + iVar7) = 0;
    *(undefined4 *)(&stack0x00000010 + iVar7) = 0;
    *(undefined4 *)(&stack0x00000014 + iVar7) = 0;
    iVar7 = iVar7 + 0x30;
  } while (iVar7 != 0);
  local_18[1] = param_1[3];
  iVar2 = *param_1;
  local_18[0] = 0;
  piVar9 = param_1;
  switch(local_18[1]) {
  case 0:
    local_18[0] = param_1[7];
    param_1[7] = 0;
    local_18[1] = -1;
    param_1[3] = -1;
    break;
  case 1:
    goto switchD_007a2b94_caseD_1;
  case 2:
    local_20 = param_1[0xd];
    param_1[0xd] = 0;
    local_18[1] = -1;
    param_1[3] = -1;
    goto LAB_007a3e88;
  case 3:
    local_18[0] = param_1[7];
    param_1[7] = 0;
    local_18[1] = -1;
    param_1[3] = -1;
    goto LAB_007a3e4b;
  case 4:
    local_24 = param_1[0xe];
    param_1[0xe] = 0;
    local_18[1] = -1;
    param_1[3] = -1;
    goto LAB_007a3da3;
  case 5:
    local_28 = param_1[0xf];
    param_1[0xf] = 0;
    local_18[1] = -1;
    param_1[3] = -1;
    goto LAB_007a31bc;
  case 6:
    local_18[0] = param_1[7];
    param_1[7] = 0;
    local_18[1] = -1;
    param_1[3] = -1;
    goto LAB_007a313a;
  case 7:
    local_18[0] = param_1[7];
    param_1[7] = 0;
    local_18[1] = -1;
    param_1[3] = -1;
    goto LAB_007a30f2;
  case 8:
    local_18[0] = param_1[7];
    param_1[7] = 0;
    local_18[1] = -1;
    param_1[3] = -1;
    goto LAB_007a30ba;
  case 9:
    local_18[0] = param_1[7];
    param_1[7] = 0;
    param_1[3] = -1;
    goto LAB_007a2fdf;
  case 10:
    local_18[0] = param_1[7];
    param_1[7] = 0;
    param_1[3] = -1;
    goto LAB_007a2f33;
  case 0xb:
    local_24 = param_1[0xe];
    param_1[0xe] = 0;
    param_1[3] = -1;
    goto LAB_007a2ef1;
  case 0xc:
    local_18[0] = param_1[7];
    param_1[7] = 0;
    param_1[3] = -1;
    goto LAB_007a2e5b;
  case 0xd:
    local_2c = param_1[0x10];
    param_1[0x10] = 0;
    param_1[3] = -1;
    goto LAB_007a2d65;
  case 0xe:
    local_18[0] = param_1[7];
    param_1[7] = 0;
    param_1[3] = -1;
    goto LAB_007a2ccf;
  case 0xf:
    local_2c = param_1[0x10];
    param_1[0x10] = 0;
    param_1[3] = -1;
    goto LAB_007a2c5a;
  case 0x10:
    local_18[0] = param_1[7];
    param_1[7] = 0;
    param_1[3] = -1;
    goto LAB_007a2c20;
  case 0x11:
    local_1c = param_1[0xc];
    param_1[0xc] = 0;
    param_1[3] = -1;
    goto LAB_007a2bde;
  case 0x12:
    local_18[0] = param_1[7];
    param_1[7] = 0;
    param_1[3] = -1;
    goto LAB_007a2ba8;
  default:
    local_18[0] = iVar7;
    local_18[0] = FUN_00974fd0();
    if ((*(uint *)(local_18[0] + 0x1c) & 0x1600000) == 0) {
      param_1[3] = 0;
      FUN_00eaecdd();
      FUN_00d98940();
      FUN_00dfc9c0();
      return;
    }
  }
  if ((*(uint *)(local_18[0] + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  while (*(char *)(*(int *)(iVar2 + 8) + 0xc) == '\0') {
    param_1[4] = 0;
    iVar7 = *(int *)(*(int *)(*(int *)(iVar2 + 8) + 8) + 0xc);
    FUN_00eaeca8();
    extraout_ECX_02[9] = 0;
    extraout_ECX_02[10] = iVar7;
    extraout_ECX_02[0xb] = 0;
    piVar9 = extraout_ECX_02;
switchD_007a2b94_caseD_1:
    if (local_18[1] != 1) goto LAB_007a40a4;
    local_1c = piVar9[0xc];
    piVar9[0xc] = 0;
    local_18[1] = -1;
    piVar9[3] = -1;
    while( true ) {
      if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      if (*(int *)(local_1c + 0x20) == 0) {
        iVar7 = 0;
      }
      else {
        if (*(int *)(DAT_01c289b4 + 0x40) == 0) {
          FUN_00eae9a0();
          FUN_00e99427(in_stack_ffffff34);
          in_stack_ffffff34 = 0x7a4080;
          FUN_00eaec14();
        }
        iVar7 = FUN_00e4e4a0(&PTR_DAT_01543f40,local_58);
      }
      if (iVar7 != 0) {
        param_1[4] = param_1[4] + *(int *)(iVar7 + 0x1c);
      }
LAB_007a40a4:
      iVar7 = FUN_00cd0850();
      if (iVar7 == 0) break;
      local_1c = FUN_0077b0f0(&PTR_DAT_01b39360,&PTR_DAT_01b39360);
      if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
        param_1[3] = 1;
        FUN_00eaeca8();
        FUN_00d98940();
        FUN_00dfca00();
        return;
      }
    }
    param_1[8] = 0;
    param_1[9] = 0;
    param_1[10] = 0;
    param_1[0xb] = 0;
    if (0x13 < param_1[4]) {
      *(undefined1 *)(*(int *)(iVar2 + 8) + 0xc) = 1;
      FUN_00906a20();
      FUN_00782420();
      goto LAB_007a3492;
    }
    local_20 = FUN_0077ac80();
    if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
      param_1[3] = 2;
      FUN_00eaecdd();
      FUN_00d98940();
      FUN_00dfc9c0();
      return;
    }
LAB_007a3e88:
    if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if (*(char *)(local_20 + 0x20) == '\0') {
      local_24 = FUN_0077acc0();
      if ((*(uint *)(local_24 + 0x1c) & 0x1600000) == 0) {
        param_1[3] = 4;
        FUN_00eaecdd();
        FUN_00d98940();
        FUN_00dfca00();
        return;
      }
LAB_007a3da3:
      if ((*(uint *)(local_24 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      FUN_00eaecdd();
      local_28 = FUN_0077abc0();
      if ((*(uint *)(local_28 + 0x1c) & 0x1600000) == 0) {
        param_1[3] = 5;
        FUN_00eaeca8();
        FUN_00d98940();
        FUN_00dfca00();
        return;
      }
LAB_007a31bc:
      if ((*(uint *)(local_28 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      iVar7 = DAT_01c289b4;
      if ((param_1[1] != 0) && (*(int *)(local_28 + 0x20) != 0)) {
        if (*(int *)(DAT_01c289b4 + 0x44) == 0) {
          FUN_00eae9a0();
          FUN_00e99438(in_stack_ffffff34);
          in_stack_ffffff34 = 0x7a322c;
          FUN_00eaebef();
        }
        FUN_00e4ee90();
        iVar8 = FUN_00e4ee50();
        if (*(int *)(iVar8 + 8) < 1) {
          local_18[0] = FUN_00975000();
          if ((*(uint *)(local_18[0] + 0x1c) & 0x1600000) == 0) {
            param_1[3] = 8;
            FUN_00eaecdd();
            FUN_00d98940();
            FUN_00dfc9c0();
            return;
          }
LAB_007a30ba:
          if ((*(uint *)(local_18[0] + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
        }
        else {
          local_a4 = *(int *)(iVar7 + 0x48);
          if (local_a4 == 0) {
            local_a4 = FUN_00eae9a0();
            FUN_00e99449(in_stack_ffffff34);
            in_stack_ffffff34 = 0x7a328a;
            FUN_00eaec14();
          }
          FUN_00eae9a0();
          FUN_00cf65d0(0,0,0,local_a4);
          iVar7 = FUN_00e4e120(&PTR_PTR_015443d4,local_5c);
          if ((iVar7 == 0) && (FUN_00e4e3a0(), local_60 == '\0')) {
                    /* WARNING: Subroutine does not return */
            FUN_00860240();
          }
          FUN_00eaeca8();
          local_18[0] = FUN_007877c0(1,1,*(undefined4 *)
                                          (*(int *)(*(int *)(iVar2 + 4) + 0x108) + 0x34),
                                     *(double *)(param_1[2] + 0xc) / _DAT_018d4260,
                                     *(double *)(param_1[2] + 4) / _DAT_018d4260);
          if ((*(uint *)(local_18[0] + 0x1c) & 0x1600000) == 0) {
            param_1[3] = 6;
            FUN_00eaecdd();
            FUN_00d98940();
            FUN_00dfc9c0();
            return;
          }
LAB_007a313a:
          if ((*(uint *)(local_18[0] + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          if (*(char *)(*(int *)(iVar2 + 8) + 0xc) != '\0') {
            FUN_00906a20();
            FUN_00782420();
            goto LAB_007a3492;
          }
          local_54 = *(undefined4 *)(*(int *)(*(int *)(iVar2 + 4) + 0x108) + 0x34);
          local_64 = *(undefined4 *)(param_1[2] + 0x28);
          FUN_00eaeae1();
          iVar7 = FUN_00eae9a0();
          *(undefined4 *)(iVar7 + 4) = local_64;
          FUN_00eaebca();
          iVar7 = FUN_00eae9a0();
          *(undefined4 *)(iVar7 + 4) = 0;
          FUN_00eaebca();
          FUN_0077a610(extraout_ECX,&PTR_DAT_01be3a98);
          local_18[0] = FUN_00975000();
          if ((*(uint *)(local_18[0] + 0x1c) & 0x1600000) == 0) {
            param_1[3] = 7;
            FUN_00eaecdd();
            FUN_00d98940();
            FUN_00dfc9c0();
            return;
          }
LAB_007a30f2:
          if ((*(uint *)(local_18[0] + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          param_1[2] = 0;
        }
      }
      param_1[1] = 0;
    }
    else {
      local_18[0] = FUN_00975000();
      if ((*(uint *)(local_18[0] + 0x1c) & 0x1600000) == 0) {
        param_1[3] = 3;
        FUN_00eaecdd();
        FUN_00d98940();
        FUN_00dfc9c0();
        return;
      }
LAB_007a3e4b:
      if ((*(uint *)(local_18[0] + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
    }
  }
  FUN_00906a20();
  FUN_00782420();
LAB_007a3492:
  FUN_0077add0();
  local_18[0] = FUN_00975000();
  if ((*(uint *)(local_18[0] + 0x1c) & 0x1600000) == 0) {
    param_1[3] = 9;
    FUN_00eaecdd();
    FUN_00d98940();
    FUN_00dfc9c0();
  }
  else {
LAB_007a2fdf:
    if ((*(uint *)(local_18[0] + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    FUN_00906aa0();
    FUN_007876b0();
    while (local_18[0] = FUN_007877c0(1,1,*(undefined4 *)
                                           (*(int *)(*(int *)(iVar2 + 4) + 0x108) + 0x34),
                                      DAT_018d4258,DAT_018d4250),
          (*(uint *)(local_18[0] + 0x1c) & 0x1600000) != 0) {
LAB_007a2f33:
      if ((*(uint *)(local_18[0] + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      param_1[4] = 0;
      *(undefined2 *)(param_1 + 5) = 0;
      while (param_1[4] < 5) {
        local_24 = FUN_0077acc0();
        if ((*(uint *)(local_24 + 0x1c) & 0x1600000) == 0) {
          param_1[3] = 0xb;
          FUN_00eaecdd();
          FUN_00d98940();
          FUN_00dfca00();
          return;
        }
LAB_007a2ef1:
        if ((*(uint *)(local_24 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        if (*(int *)(local_24 + 0x20) == 0) {
          iVar7 = 0;
        }
        else {
          if (*(int *)(DAT_01c289b4 + 0x4c) == 0) {
            FUN_00eae9a0();
            FUN_00e9945a(in_stack_ffffff34);
            in_stack_ffffff34 = 0x7a3542;
            FUN_00eaec14();
          }
          iVar7 = FUN_00e4e4a0(&PTR_DAT_01544440,local_68);
        }
        if (iVar7 != 0) {
          local_6c = *(undefined4 *)(iVar7 + 0x28);
          FUN_00eaeae1();
          iVar7 = FUN_00eae9a0();
          *(undefined4 *)(iVar7 + 4) = local_6c;
          FUN_00eaebca();
          iVar7 = FUN_00eae9a0();
          *(undefined4 *)(iVar7 + 4) = 0;
          FUN_00eaebca();
          FUN_0077a610(extraout_ECX_00,&PTR_DAT_01be3a98);
          local_18[0] = FUN_00975000();
          if ((*(uint *)(local_18[0] + 0x1c) & 0x1600000) == 0) {
            param_1[3] = 0xc;
            FUN_00eaecdd();
            FUN_00d98940();
            FUN_00dfc9c0();
            return;
          }
LAB_007a2e5b:
          if ((*(uint *)(local_18[0] + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          local_2c = FUN_0077b0a0();
          if ((*(uint *)(local_2c + 0x1c) & 0x1600000) == 0) {
            param_1[3] = 0xd;
            FUN_00eaeca8();
            FUN_00d98940();
            FUN_00dfca00();
            return;
          }
LAB_007a2d65:
          if ((*(uint *)(local_2c + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          iVar7 = *(int *)(local_2c + 0x20);
          if (iVar7 != 0) {
            if (*(int *)(*(int *)(iVar7 + 0x10) + 8) == 1) {
              FUN_00906a20();
              FUN_00782420();
              FUN_00906aa0();
              FUN_007876b0();
              *(undefined1 *)((int)param_1 + 0x15) = 1;
              break;
            }
            if (*(int *)(DAT_01c289b4 + 0x50) == 0) {
              FUN_00eae9a0();
              FUN_00e9946b(in_stack_ffffff34);
              in_stack_ffffff34 = 0x7a3673;
              FUN_00eaebef();
            }
            iVar8 = FUN_00e4e4a0(&PTR_DAT_01543d24,local_70);
            if (iVar8 == 0) {
              iVar7 = *(int *)(iVar7 + 0x10);
              uVar3 = *(uint *)(iVar7 + 8);
              if ((int)uVar3 < 2) {
                if (0 < (int)uVar3) {
                  local_4c = *(undefined4 *)(*(int *)(*(int *)(iVar2 + 4) + 0x108) + 0x34);
                  if (uVar3 == 0) goto LAB_007a4266;
                  if (*(int *)(*(int *)(iVar7 + 4) + 4) == 0) goto LAB_007a427c;
                  uVar4 = *(undefined4 *)(*(int *)(*(int *)(iVar7 + 4) + 8) + 8);
                  iVar7 = FUN_00eaeae1();
                  *(undefined ***)(iVar7 + 8) = &PTR_DAT_01b91278;
                  iVar8 = FUN_00eae9a0();
                  *(undefined4 *)(iVar8 + 4) = uVar4;
                  FUN_00eaebca();
                  iVar8 = FUN_00eae9a0();
                  *(undefined4 *)(iVar8 + 4) = 0;
                  FUN_00eaebca();
                  FUN_0077a610(iVar7,&PTR_DAT_01befc64);
                }
              }
              else {
                local_50 = *(undefined4 *)(*(int *)(*(int *)(iVar2 + 4) + 0x108) + 0x34);
                if (uVar3 < 2) goto LAB_007a4266;
                if (*(uint *)(*(int *)(iVar7 + 4) + 4) < 2) goto LAB_007a427c;
                uVar4 = *(undefined4 *)(*(int *)(*(int *)(iVar7 + 4) + 0xc) + 8);
                iVar7 = FUN_00eaeae1();
                *(undefined ***)(iVar7 + 8) = &PTR_DAT_01b91278;
                iVar8 = FUN_00eae9a0();
                *(undefined4 *)(iVar8 + 4) = uVar4;
                FUN_00eaebca();
                iVar8 = FUN_00eae9a0();
                *(undefined4 *)(iVar8 + 4) = 0;
                FUN_00eaebca();
                FUN_0077a610(iVar7,&PTR_DAT_01befc64);
              }
            }
            else {
              local_74 = *(undefined4 *)(iVar8 + 8);
              iVar7 = FUN_00eaeae1();
              *(undefined ***)(iVar7 + 8) = &PTR_DAT_01b91278;
              iVar7 = FUN_00eae9a0();
              *(undefined4 *)(iVar7 + 4) = local_74;
              FUN_00eaebca();
              iVar7 = FUN_00eae9a0();
              *(undefined4 *)(iVar7 + 4) = 0;
              FUN_00eaebca();
              FUN_0077a610(extraout_ECX_01,&PTR_DAT_01befc64);
            }
            local_18[0] = FUN_00975000();
            if ((*(uint *)(local_18[0] + 0x1c) & 0x1600000) == 0) {
              param_1[3] = 0xe;
              FUN_00eaecdd();
              FUN_00d98940();
              FUN_00dfc9c0();
              return;
            }
LAB_007a2ccf:
            if ((*(uint *)(local_18[0] + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            local_2c = FUN_0077b0a0();
            if ((*(uint *)(local_2c + 0x1c) & 0x1600000) == 0) {
              param_1[3] = 0xf;
              FUN_00eaeca8();
              FUN_00d98940();
              FUN_00dfca00();
              return;
            }
LAB_007a2c5a:
            if ((*(uint *)(local_2c + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            iVar7 = *(int *)(local_2c + 0x20);
            if (iVar7 != 0) {
              *(undefined1 *)(param_1 + 5) = 1;
              in_stack_ffffff34 = *(int *)(iVar7 + 0x10);
              if ((in_stack_ffffff34 == 0) ||
                 (uVar3 = *(uint *)(in_stack_ffffff34 + 8), (int)uVar3 < 1)) {
                FUN_00906a20();
                FUN_00782420();
              }
              else {
                if (uVar3 == 1) {
                  uVar10 = 0;
                }
                else {
                  uVar10 = uVar3 - 1;
                }
                local_48 = *(undefined4 *)(*(int *)(*(int *)(iVar2 + 4) + 0x108) + 0x34);
                if (uVar3 <= uVar10) {
LAB_007a4266:
                    /* WARNING: Subroutine does not return */
                  FUN_009319a0();
                }
                if (*(uint *)(*(int *)(in_stack_ffffff34 + 4) + 4) <= uVar10) {
LAB_007a427c:
                    /* WARNING: Subroutine does not return */
                  FUN_009c2bf0();
                }
                uVar4 = *(undefined4 *)
                         (*(int *)(*(int *)(in_stack_ffffff34 + 4) + 8 + uVar10 * 4) + 8);
                iVar7 = FUN_00eaeae1();
                *(undefined ***)(iVar7 + 8) = &PTR_DAT_01bb04a8;
                iVar8 = FUN_00eae9a0();
                *(undefined4 *)(iVar8 + 4) = uVar4;
                FUN_00eaebca();
                iVar8 = FUN_00eae9a0();
                *(undefined4 *)(iVar8 + 4) = 0;
                FUN_00eaebca();
                FUN_0077a610(iVar7,&PTR_DAT_01befc64);
              }
              break;
            }
          }
          FUN_00906a20();
          FUN_00782420();
          local_18[0] = FUN_00975000();
          if ((*(uint *)(local_18[0] + 0x1c) & 0x1600000) == 0) {
            param_1[3] = 0x10;
            FUN_00eaecdd();
            FUN_00d98940();
            FUN_00dfc9c0();
            return;
          }
LAB_007a2c20:
          if ((*(uint *)(local_18[0] + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
        }
        param_1[4] = param_1[4] + 1;
      }
      if ((char)param_1[5] != '\0' || *(char *)((int)param_1 + 0x15) != '\0') {
        FUN_00906aa0();
        FUN_007876b0();
        *(undefined1 *)(*(int *)(iVar2 + 8) + 0xd) = 1;
LAB_007a4282:
        param_1[3] = -2;
        if (param_1[6] == 0) {
          if (PTR_FUN_01c22110 != (undefined *)0x0) {
            FUN_00e8eaee();
          }
          FUN_00eaecdd();
          return;
        }
        iVar7 = FUN_00c0a790();
        if (iVar7 != 0) {
          return;
        }
                    /* WARNING: Subroutine does not return */
        FUN_00931e50();
      }
      if (*(char *)(*(int *)(iVar2 + 8) + 0xd) != '\0') {
        FUN_00906aa0();
        FUN_007876b0();
        goto LAB_007a4282;
      }
      local_1c = FUN_0077b0f0(&PTR_DAT_01b39360,&PTR_DAT_01b39360);
      if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
        param_1[3] = 0x11;
        FUN_00eaecdd();
        FUN_00d98940();
        FUN_00dfca00();
        return;
      }
LAB_007a2bde:
      if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      if (*(int *)(local_1c + 0x20) == 0) {
        iVar7 = 0;
      }
      else {
        if (*(int *)(DAT_01c289b4 + 0x54) == 0) {
          FUN_00eae9a0();
          FUN_00e9947c(in_stack_ffffff34);
          in_stack_ffffff34 = 0x7a3adc;
          FUN_00eaebef();
        }
        iVar7 = FUN_00e4e4a0(&PTR_DAT_01543f40,local_78);
      }
      if ((iVar7 == 0) || (*(int *)(iVar7 + 0x1c) == 0)) {
        FUN_00906aa0();
        FUN_007876b0();
        goto LAB_007a4282;
      }
      if (PTR_LAB_01c23e7c != (undefined *)0x0) {
        FUN_00e8f54a();
      }
      local_40 = FUN_00b848a0();
      uVar6 = _UNK_018d427c;
      uVar5 = _UNK_018d4278;
      uVar4 = _UNK_018d4274;
      if (local_40 == 0) {
        local_34 = (undefined4 *)0x0;
        local_7c = 0;
      }
      else {
        local_34 = (undefined4 *)(local_40 + 8);
        local_7c = *(uint *)(local_40 + 4);
      }
      local_44 = 0;
      local_3c = 0;
      local_38 = '\0';
      local_30 = local_7c;
      if (local_7c < 0xb) {
        FUN_0099d6f0();
      }
      else {
        *local_34 = _DAT_018d4270;
        local_34[1] = uVar4;
        local_34[2] = uVar5;
        local_34[3] = uVar6;
        local_34[4] = 0x2d0020;
        *(undefined2 *)(local_34 + 5) = 0x20;
        local_3c = 0xb;
      }
      iVar7 = *(int *)(*(int *)(*(int *)(iVar2 + 4) + 8) + 8);
      if ((local_38 == '\0') && (iVar7 != 0)) {
        if (local_30 < local_3c) goto LAB_007a4276;
        if (local_30 - local_3c < *(uint *)(iVar7 + 4)) goto LAB_007a3be7;
        FUN_00930280();
        local_3c = local_3c + *(int *)(iVar7 + 4);
      }
      else {
LAB_007a3be7:
        FUN_0099d670();
      }
      uVar6 = _UNK_018d428c;
      uVar5 = _UNK_018d4288;
      uVar4 = _UNK_018d4284;
      if (local_30 < local_3c) {
LAB_007a4276:
                    /* WARNING: Subroutine does not return */
        FUN_009318f0();
      }
      puVar1 = (undefined4 *)((int)local_34 + local_3c * 2);
      if (local_30 - local_3c < 10) {
        FUN_0099d6f0();
      }
      else {
        *puVar1 = _DAT_018d4280;
        puVar1[1] = uVar4;
        puVar1[2] = uVar5;
        puVar1[3] = uVar6;
        puVar1[4] = 0x20006e;
        local_3c = local_3c + 10;
      }
      FUN_00de77e0();
      uVar6 = _UNK_018d429c;
      uVar5 = _UNK_018d4298;
      uVar4 = _UNK_018d4294;
      if (local_30 < local_3c) goto LAB_007a4276;
      puVar1 = (undefined4 *)((int)local_34 + local_3c * 2);
      if (local_30 - local_3c < 0x20) {
        FUN_0099d6f0();
      }
      else {
        *puVar1 = _DAT_018d4290;
        puVar1[1] = uVar4;
        puVar1[2] = uVar5;
        puVar1[3] = uVar6;
        uVar6 = _UNK_018d42ac;
        uVar5 = _UNK_018d42a8;
        uVar4 = _UNK_018d42a4;
        puVar1[4] = _DAT_018d42a0;
        puVar1[5] = uVar4;
        puVar1[6] = uVar5;
        puVar1[7] = uVar6;
        uVar6 = _UNK_018d42bc;
        uVar5 = _UNK_018d42b8;
        uVar4 = _UNK_018d42b4;
        puVar1[8] = _DAT_018d42b0;
        puVar1[9] = uVar4;
        puVar1[10] = uVar5;
        puVar1[0xb] = uVar6;
        uVar6 = _UNK_018d42cc;
        uVar5 = _UNK_018d42c8;
        uVar4 = _UNK_018d42c4;
        puVar1[0xc] = _DAT_018d42c0;
        puVar1[0xd] = uVar4;
        puVar1[0xe] = uVar5;
        puVar1[0xf] = uVar6;
        local_3c = local_3c + 0x20;
      }
      FUN_0099d560();
      FUN_007876b0();
      local_18[0] = FUN_00975000();
      if ((*(uint *)(local_18[0] + 0x1c) & 0x1600000) == 0) {
        param_1[3] = 0x12;
        FUN_00eaeca8();
        FUN_00d98940();
        FUN_00dfc9c0();
        return;
      }
LAB_007a2ba8:
      if ((*(uint *)(local_18[0] + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
    }
    param_1[3] = 10;
    FUN_00eaeca8();
    FUN_00d98940();
    FUN_00dfc9c0();
  }
  return;
}

