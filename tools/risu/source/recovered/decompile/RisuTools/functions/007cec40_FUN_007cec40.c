/* Address: 007cec40 | Ghidra name: FUN_007cec40 */

/* WARNING: Removing unreachable block (ram,0x007d024c) */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_007cec40(int *param_1)

{
  bool bVar1;
  undefined **ppuVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  int *extraout_ECX;
  int *piVar8;
  undefined4 extraout_ECX_00;
  undefined **in_stack_ffffff90;
  undefined **in_stack_ffffff94;
  undefined4 local_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined4 uStack_40;
  int local_3c;
  int iStack_38;
  int iStack_34;
  undefined4 uStack_30;
  undefined4 local_2c;
  undefined4 uStack_28;
  int iStack_24;
  int iStack_20;
  int local_1c;
  int local_18;
  int local_14;
  
  local_4c = 0;
  uStack_48 = 0;
  uStack_44 = 0;
  uStack_40 = 0;
  local_3c = 0;
  iStack_38 = 0;
  iStack_34 = 0;
  uStack_30 = 0;
  local_2c = 0;
  uStack_28 = 0;
  iStack_24 = 0;
  iStack_20 = 0;
  local_1c = 0;
  local_18 = 0;
  local_14 = param_1[9];
  iVar7 = *param_1;
  piVar8 = param_1;
  switch(local_14) {
  case 0:
    local_18 = param_1[0xe];
    param_1[0xe] = 0;
    local_14 = -1;
    param_1[9] = -1;
    break;
  case 1:
    local_1c = param_1[0xf];
    param_1[0xf] = 0;
    local_14 = -1;
    param_1[9] = -1;
    goto LAB_007d003e;
  case 2:
    local_1c = param_1[0xf];
    param_1[0xf] = 0;
    local_14 = -1;
    param_1[9] = -1;
    goto LAB_007cffab;
  case 3:
    iStack_20 = param_1[0x10];
    param_1[0x10] = 0;
    local_14 = -1;
    param_1[9] = -1;
    goto LAB_007cfc62;
  case 4:
    local_1c = param_1[0xf];
    param_1[0xf] = 0;
    param_1[9] = -1;
    goto LAB_007cfc24;
  case 5:
    local_1c = param_1[0xf];
    param_1[0xf] = 0;
    local_14 = -1;
    param_1[9] = -1;
    goto LAB_007cfba7;
  case 6:
    local_1c = param_1[0xf];
    param_1[0xf] = 0;
    local_14 = -1;
    param_1[9] = -1;
    goto LAB_007cfb1c;
  case 7:
    iStack_24 = param_1[0x11];
    param_1[0x11] = 0;
    local_14 = -1;
    param_1[9] = -1;
    goto LAB_007cfa7a;
  case 8:
    local_1c = param_1[0xf];
    param_1[0xf] = 0;
    local_14 = -1;
    param_1[9] = -1;
    goto LAB_007cf7f8;
  case 9:
    local_18 = param_1[0xe];
    param_1[0xe] = 0;
    local_14 = -1;
    param_1[9] = -1;
    goto LAB_007cf7af;
  case 10:
    iStack_38 = param_1[0x12];
    param_1[0x12] = 0;
    local_14 = -1;
    param_1[9] = -1;
    goto LAB_007cf2f3;
  case 0xb:
    local_1c = param_1[0xf];
    param_1[0xf] = 0;
    local_14 = -1;
    param_1[9] = -1;
    goto LAB_007cf201;
  case 0xc:
    local_1c = param_1[0xf];
    param_1[0xf] = 0;
    local_14 = -1;
    param_1[9] = -1;
    goto LAB_007cf17f;
  case 0xd:
    local_1c = param_1[0xf];
    param_1[0xf] = 0;
    local_14 = -1;
    param_1[9] = -1;
    goto LAB_007cf138;
  case 0xe:
    goto switchD_007cec89_caseD_e;
  case 0xf:
    local_1c = param_1[0xf];
    param_1[0xf] = 0;
    local_14 = -1;
    param_1[9] = -1;
    goto LAB_007cf0f7;
  case 0x10:
    local_1c = param_1[0xf];
    param_1[0xf] = 0;
    local_14 = -1;
    param_1[9] = -1;
    goto LAB_007cf043;
  case 0x11:
    local_1c = param_1[0xf];
    param_1[0xf] = 0;
    local_14 = -1;
    param_1[9] = -1;
    goto LAB_007cef81;
  case 0x12:
    iStack_20 = param_1[0x10];
    param_1[0x10] = 0;
    local_14 = -1;
    param_1[9] = -1;
    goto LAB_007ceedf;
  case 0x13:
    iStack_20 = param_1[0x10];
    param_1[0x10] = 0;
    local_14 = -1;
    param_1[9] = -1;
    goto LAB_007cee2e;
  case 0x14:
    local_1c = param_1[0xf];
    param_1[0xf] = 0;
    param_1[9] = -1;
LAB_007ced90:
    if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    goto LAB_007cedab;
  case 0x15:
  case 0x16:
  case 0x17:
    goto switchD_007cec89_caseD_15;
  case 0x18:
    local_1c = param_1[0xf];
    param_1[0xf] = 0;
    local_14 = -1;
    param_1[9] = -1;
    goto LAB_007ced59;
  case 0x19:
    local_1c = param_1[0xf];
    param_1[0xf] = 0;
    param_1[9] = -1;
    goto LAB_007cecd8;
  case 0x1a:
    local_1c = param_1[0xf];
    param_1[0xf] = 0;
    param_1[9] = -1;
    goto LAB_007cec9d;
  default:
    FUN_00eae9a0();
    FUN_00eaeca8();
    FUN_00eaebca();
    in_stack_ffffff90 = (undefined **)0x7d0142;
    local_18 = FUN_0077acc0();
    if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
      param_1[9] = 0;
      FUN_00eaecdd();
      FUN_00d9e2e0();
      FUN_00dfca00(&PTR_DAT_01568d5c);
      return;
    }
  }
  if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
    in_stack_ffffff90 = (undefined **)0x7d00fb;
    FUN_0099dbc0();
  }
  if (*(int *)(local_18 + 0x20) == 0) {
    iVar6 = 0;
  }
  else {
    if (*(int *)(DAT_01c289cc + 0x54) == 0) {
      FUN_00eae9a0();
      FUN_00e99efa(in_stack_ffffff94);
      FUN_00eaec14();
    }
    in_stack_ffffff90 = &PTR_DAT_01544440;
    iVar6 = FUN_00e4e4a0(&PTR_DAT_01544440,&uStack_40);
  }
  if (iVar6 == 0) {
LAB_007cfb37:
    in_stack_ffffff94 = (undefined **)0x7cfb47;
    iStack_24 = FUN_0077ad90();
    if ((*(uint *)(iStack_24 + 0x1c) & 0x1600000) == 0) {
      param_1[9] = 7;
      FUN_00eaeca8();
      FUN_00d9e2e0();
      FUN_00dfca00(&PTR_DAT_01568f08);
      return;
    }
LAB_007cfa7a:
    if ((*(uint *)(iStack_24 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if (*(int *)(iStack_24 + 0x20) != 0) {
      if (*(int *)(DAT_01c289cc + 0x58) == 0) {
        FUN_00eae9a0();
        FUN_00e99f0b(in_stack_ffffff90);
        FUN_00eaec14();
      }
      in_stack_ffffff94 = &PTR_DAT_01544bc8;
      in_stack_ffffff90 = (undefined **)0x7cfae7;
      iVar6 = FUN_00e4d760(&PTR_DAT_01544bc8);
      if (iVar6 == 0) {
        FUN_007876b0();
        goto LAB_007cfc3f;
      }
    }
    FUN_007876b0();
    iStack_34 = param_1[1];
    local_2c = *(undefined4 *)(iStack_34 + 0xc);
    uStack_30 = 0;
    uStack_28 = 0;
    iVar6 = FUN_00cd0850();
    while (iVar6 != 0) {
      FUN_00eaeae1();
      iVar6 = FUN_00eae9a0();
      *(undefined4 *)(iVar6 + 4) = 0;
      FUN_00eaebca();
      FUN_0077a610(extraout_ECX_00,&PTR_DAT_01beaee0);
      iVar6 = FUN_00cd0850();
    }
    local_1c = FUN_00975000(*(undefined4 *)(iVar7 + 0x1c));
    if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
      param_1[9] = 8;
      FUN_00eaeca8();
      FUN_00d9e2e0();
      FUN_00dfc9c0();
      return;
    }
LAB_007cf7f8:
    if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    *(undefined1 *)(param_1[2] + 0x14) = 0;
    *(undefined1 *)(param_1[2] + 0x15) = 0;
    FUN_00eae9a0();
    FUN_00bb89d0();
    FUN_00eaec5e();
    FUN_00eae9a0();
    FUN_00eaebca();
    FUN_00eae9a0();
    FUN_00e9a0e7(in_stack_ffffff90);
    FUN_00e44450(&PTR_DAT_015437ec);
    FUN_00e4ee50();
    FUN_00eaeca8();
    while (*(char *)(param_1[2] + 0x15) == '\0') {
      if (*(char *)(param_1[2] + 0x14) == '\0') {
        param_1[0xb] = 0;
        iVar6 = *(int *)(param_1[1] + 0xc);
        FUN_00eaeca8();
        extraout_ECX[0x14] = 0;
        extraout_ECX[0x15] = iVar6;
        extraout_ECX[0x16] = 0;
        piVar8 = extraout_ECX;
switchD_007cec89_caseD_e:
        if (local_14 != 0xe) goto LAB_007cf977;
        local_3c = piVar8[0x17];
        piVar8[0x17] = 0;
        local_14 = -1;
        piVar8[9] = -1;
        while( true ) {
          if ((*(uint *)(local_3c + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          if (*(int *)(local_3c + 0x20) == 0) {
            iVar6 = 0;
          }
          else {
            if (*(int *)(DAT_01c289cc + 100) == 0) {
              FUN_00eae9a0();
              FUN_00e99f3e(in_stack_ffffff94);
              in_stack_ffffff94 = (undefined **)0x7cf953;
              FUN_00eaec14();
            }
            iVar6 = FUN_00e4e4a0(&PTR_DAT_01543f40,&local_4c);
          }
          if (iVar6 != 0) {
            param_1[0xb] = param_1[0xb] + *(int *)(iVar6 + 0x1c);
          }
LAB_007cf977:
          iVar6 = FUN_00cd0850();
          if (iVar6 == 0) break;
          local_3c = FUN_0077b0f0(&PTR_DAT_01b39360,&PTR_DAT_01b39360);
          if ((*(uint *)(local_3c + 0x1c) & 0x1600000) == 0) {
            param_1[9] = 0xe;
            FUN_00eaeca8();
            FUN_00d9e2e0();
            FUN_00dfca00(&PTR_DAT_01568c48);
            return;
          }
        }
        param_1[0x13] = 0;
        param_1[0x14] = 0;
        param_1[0x15] = 0;
        param_1[0x16] = 0;
        if (0x1d < param_1[0xb]) {
          *(undefined1 *)(param_1[2] + 0x15) = 1;
          break;
        }
      }
      else {
        FUN_007876b0();
        while( true ) {
          FUN_00eae9a0();
          FUN_00eaeca8();
          local_18 = FUN_0077acc0();
          if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
            param_1[9] = 9;
            FUN_00eaecdd();
            FUN_00d9e2e0();
            FUN_00dfca00(&PTR_DAT_01568d5c);
            return;
          }
LAB_007cf7af:
          if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          if (*(int *)(local_18 + 0x20) != 0) {
            if (*(int *)(DAT_01c289cc + 0x60) == 0) {
              FUN_00eae9a0();
              FUN_00e99f2d(in_stack_ffffff94);
              in_stack_ffffff94 = (undefined **)0x7cff04;
              FUN_00eaebef();
            }
            FUN_00e4ee90(&PTR_DAT_01544498);
            FUN_00e4ee50();
          }
          FUN_00eaeca8();
          if ((param_1[6] == 0) || (*(int *)(param_1[6] + 8) == 0)) break;
          iStack_38 = FUN_0077abc0();
          if ((*(uint *)(iStack_38 + 0x1c) & 0x1600000) == 0) {
            param_1[9] = 10;
            FUN_00eaecdd();
            FUN_00d9e2e0();
            FUN_00dfca00(&PTR_DAT_01553fc4);
            return;
          }
LAB_007cf2f3:
          if ((*(uint *)(iStack_38 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          FUN_00eaebef();
          if (*(int *)(param_1[3] + 4) != 0) {
            uVar3 = FUN_00eae9a0();
            FUN_00e9a13c(in_stack_ffffff94);
            uVar4 = FUN_00eae9a0();
            FUN_00cf24b0(0,0,0,uVar3);
            FUN_00e4ee50(uVar4);
            FUN_00eaeca8();
          }
          FUN_00e4e3a0(&PTR_PTR_01544420);
          if ((char)uStack_44 == '\0') {
                    /* WARNING: Subroutine does not return */
            FUN_00860240();
          }
          FUN_00eaeca8();
          local_1c = FUN_007877c0(1,0,0,*(double *)(param_1[7] + 0xc) / _DAT_018d5648,
                                  *(double *)(param_1[7] + 4) / _DAT_018d5648);
          if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
            param_1[9] = 0xb;
            FUN_00eaeca8();
            FUN_00d9e2e0();
            FUN_00dfc9c0();
            return;
          }
LAB_007cf201:
          if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          uVar3 = *(undefined4 *)(param_1[7] + 0x28);
          uStack_48 = *(undefined4 *)(*(int *)(iVar7 + 0x14) + 8);
          ppuVar2 = (undefined **)FUN_00eaeae1();
          iVar6 = FUN_00eae9a0();
          *(undefined4 *)(iVar6 + 4) = uVar3;
          in_stack_ffffff94 = ppuVar2;
          FUN_00eaebca();
          iVar6 = FUN_00eae9a0();
          *(undefined4 *)(iVar6 + 4) = 0;
          FUN_00eaebca();
          FUN_0077a610(ppuVar2,&PTR_DAT_01be3a98);
          local_1c = FUN_00975000(*(undefined4 *)(iVar7 + 0x1c));
          if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
            param_1[9] = 0xc;
            FUN_00eaeca8();
            FUN_00d9e2e0();
            FUN_00dfc9c0();
            return;
          }
LAB_007cf17f:
          if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          local_1c = FUN_007c67a0();
          if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
            param_1[9] = 0xd;
            FUN_00eaeca8();
            FUN_00d9e2e0();
            FUN_00dfc9c0();
            return;
          }
LAB_007cf138:
          if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          param_1[3] = 0;
          param_1[6] = 0;
          param_1[7] = 0;
        }
        FUN_007876b0();
        *(undefined1 *)(param_1[2] + 0x14) = 0;
      }
      local_1c = FUN_00975000(*(undefined4 *)(iVar7 + 0x1c));
      if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
        param_1[9] = 0xf;
        FUN_00eaecdd();
        FUN_00d9e2e0();
        FUN_00dfc9c0();
        return;
      }
LAB_007cf0f7:
      if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
    }
    local_1c = FUN_00975100();
    if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
      param_1[9] = 0x10;
      FUN_00eaecdd();
      FUN_00d9e2e0();
      FUN_00dfc9c0();
      return;
    }
LAB_007cf043:
    if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    FUN_007876b0();
    FUN_00eae9a0();
    FUN_00e9a109(in_stack_ffffff94);
    FUN_00e44450(&PTR_DAT_015437ec);
    local_1c = FUN_00975100();
    if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
      param_1[9] = 0x11;
      FUN_00eaeca8();
      FUN_00d9e2e0();
      FUN_00dfc9c0();
      return;
    }
LAB_007cef81:
    if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    FUN_007876b0();
    *(undefined1 *)(param_1 + 0xc) = 0;
    param_1[10] = 0;
    while (((char)param_1[0xc] == '\0' && (param_1[10] < 10))) {
      iStack_20 = FUN_0077b0a0(&PTR_DAT_01bb04a8);
      if ((*(uint *)(iStack_20 + 0x1c) & 0x1600000) == 0) {
        param_1[9] = 0x12;
        FUN_00eaecdd();
        FUN_00d9e2e0();
        FUN_00dfca00(&PTR_DAT_01553b84);
        return;
      }
LAB_007ceedf:
      if ((*(uint *)(iStack_20 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      iVar6 = *(int *)(iStack_20 + 0x20);
      if (iVar6 == 0) {
        iStack_20 = FUN_0077b0a0(&PTR_DAT_01bb04a8);
        if ((*(uint *)(iStack_20 + 0x1c) & 0x1600000) == 0) {
          param_1[9] = 0x13;
          FUN_00eaecdd();
          FUN_00d9e2e0();
          FUN_00dfca00(&PTR_DAT_01553b84);
          return;
        }
LAB_007cee2e:
        if ((*(uint *)(iStack_20 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        iVar6 = *(int *)(iStack_20 + 0x20);
      }
      if (((iVar6 != 0) && (*(int *)(iVar6 + 8) != 0)) && (iVar6 = FUN_00909ad0(), iVar6 != 0)) {
        *(undefined1 *)(param_1 + 0xc) = 1;
        local_1c = FUN_007c66b0();
        if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
          param_1[9] = 0x14;
          FUN_00eaecdd();
          FUN_00d9e2e0();
          FUN_00dfc9c0();
          return;
        }
        goto LAB_007ced90;
      }
      iVar6 = FUN_00eaecdd();
      param_1[0x14] = 0;
      param_1[0x15] = iVar6;
      param_1[0x16] = 0;
switchD_007cec89_caseD_15:
      switch(local_14) {
      case 0x15:
        iStack_20 = param_1[0x10];
        param_1[0x10] = 0;
        local_14 = -1;
        param_1[9] = -1;
        while( true ) {
          if ((*(uint *)(iStack_20 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          iVar6 = *(int *)(iStack_20 + 0x20);
          if (iVar6 == 0) {
            iStack_20 = FUN_0077b0a0(&PTR_DAT_01bb04a8);
            if ((*(uint *)(iStack_20 + 0x1c) & 0x1600000) == 0) {
              param_1[9] = 0x16;
              FUN_00eaecdd();
              FUN_00d9e2e0();
              FUN_00dfca00(&PTR_DAT_01553b84);
              return;
            }
LAB_007cf57a:
            if ((*(uint *)(iStack_20 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            iVar6 = *(int *)(iStack_20 + 0x20);
          }
          if (((iVar6 != 0) && (*(int *)(iVar6 + 8) != 0)) && (iVar6 = FUN_00909ad0(), iVar6 != 0))
          {
            *(undefined1 *)(param_1 + 0xc) = 1;
            local_1c = FUN_007c66b0();
            if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
              param_1[9] = 0x17;
              FUN_00eaecdd();
              FUN_00d9e2e0();
              FUN_00dfc9c0();
              return;
            }
            goto LAB_007cf4dc;
          }
          param_1[8] = 0;
switchD_007cf4c1_default:
          iVar6 = FUN_00cd0850();
          if (iVar6 == 0) break;
          FUN_00eaecdd();
          iStack_20 = FUN_0077b0a0(&PTR_DAT_01bb04a8);
          if ((*(uint *)(iStack_20 + 0x1c) & 0x1600000) == 0) {
            param_1[9] = 0x15;
            FUN_00eaecdd();
            FUN_00d9e2e0();
            FUN_00dfca00(&PTR_DAT_01553b84);
            return;
          }
        }
        break;
      case 0x16:
        iStack_20 = param_1[0x10];
        param_1[0x10] = 0;
        local_14 = -1;
        param_1[9] = -1;
        goto LAB_007cf57a;
      case 0x17:
        local_1c = param_1[0xf];
        param_1[0xf] = 0;
        local_14 = -1;
        param_1[9] = -1;
LAB_007cf4dc:
        if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        break;
      default:
        goto switchD_007cf4c1_default;
      }
      param_1[0x13] = 0;
      param_1[0x14] = 0;
      param_1[0x15] = 0;
      param_1[0x16] = 0;
      if ((char)param_1[0xc] != '\0') break;
      local_1c = FUN_00975000(*(undefined4 *)(iVar7 + 0x1c));
      if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
        param_1[9] = 0x18;
        FUN_00eaecdd();
        FUN_00d9e2e0();
        FUN_00dfc9c0();
        return;
      }
LAB_007ced59:
      if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      param_1[10] = param_1[10] + 1;
    }
LAB_007cedab:
    if ((char)param_1[0xc] == '\0') {
      FUN_007876b0();
    }
    FUN_007876b0();
    local_1c = FUN_007c66b0();
    if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
      param_1[9] = 0x19;
      FUN_00eaecdd();
      FUN_00d9e2e0();
      FUN_00dfc9c0();
      return;
    }
LAB_007cecd8:
    if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    local_1c = FUN_00787a10(1,0);
    if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
      param_1[9] = 0x1a;
      FUN_00eaeca8();
      FUN_00d9e2e0();
      FUN_00dfc9c0();
      return;
    }
LAB_007cec9d:
    if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    bVar1 = false;
  }
  else {
    local_1c = FUN_007877c0(1,0,0,*(double *)(iVar6 + 0xc) / _DAT_018d5648,
                            *(double *)(iVar6 + 4) / _DAT_018d5648);
    if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
      param_1[9] = 1;
      FUN_00eaecdd();
      FUN_00d9e2e0();
      FUN_00dfc9c0();
      return;
    }
LAB_007d003e:
    if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    FUN_0077a760(0,0x618);
    local_1c = FUN_00975000(*(undefined4 *)(iVar7 + 0x1c));
    if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
      param_1[9] = 2;
      FUN_00eaeca8();
      FUN_00d9e2e0();
      FUN_00dfc9c0();
      return;
    }
LAB_007cffab:
    if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    in_stack_ffffff90 = (undefined **)0x7cffde;
    iStack_20 = FUN_0077b0a0(&PTR_DAT_01b91278);
    if ((*(uint *)(iStack_20 + 0x1c) & 0x1600000) == 0) {
      param_1[9] = 3;
      FUN_00eaeca8();
      FUN_00d9e2e0();
      FUN_00dfca00(&PTR_DAT_01553b84);
      return;
    }
LAB_007cfc62:
    if ((*(uint *)(iStack_20 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    iVar6 = *(int *)(iStack_20 + 0x20);
    if ((iVar6 == 0) || (iVar5 = *(int *)(iVar6 + 0x10), iVar5 == 0)) {
LAB_007cfbc2:
      local_1c = FUN_007c66b0();
      if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
        param_1[9] = 6;
        FUN_00eaeca8();
        FUN_00d9e2e0();
        FUN_00dfc9c0();
        return;
      }
LAB_007cfb1c:
      if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      goto LAB_007cfb37;
    }
    if (*(int *)(iVar5 + 8) != 1) {
LAB_007cfcd8:
      if (1 < *(int *)(*(int *)(iVar6 + 0x10) + 8)) {
        iVar6 = *(int *)(*(int *)(iVar6 + 0x10) + 4);
        if (*(uint *)(iVar6 + 4) < 2) {
LAB_007d0258:
                    /* WARNING: Subroutine does not return */
          FUN_009c2bf0();
        }
        FUN_0077ab40(0,*(undefined4 *)(*(int *)(iVar6 + 0xc) + 8),&PTR_DAT_01b91278);
        in_stack_ffffff90 = (undefined **)0x7cfd2c;
        local_1c = FUN_00975000(*(undefined4 *)(iVar7 + 0x1c));
        if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
          param_1[9] = 5;
          FUN_00eaecdd();
          FUN_00d9e2e0();
          FUN_00dfc9c0();
          return;
        }
LAB_007cfba7:
        if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
      }
      goto LAB_007cfbc2;
    }
    if (*(int *)(*(int *)(iVar5 + 4) + 4) == 0) goto LAB_007d0258;
    if ((*(int *)(*(int *)(*(int *)(iVar5 + 4) + 8) + 4) == 0) ||
       (iVar5 = FUN_00909ad0(), iVar5 == 0)) goto LAB_007cfcd8;
    FUN_007876b0();
    local_1c = FUN_007c66b0();
    if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
      param_1[9] = 4;
      FUN_00eaecdd();
      FUN_00d9e2e0();
      FUN_00dfc9c0();
      return;
    }
LAB_007cfc24:
    if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
LAB_007cfc3f:
    bVar1 = true;
  }
  param_1[9] = -2;
  param_1[2] = 0;
  param_1[5] = 0;
  if (param_1[0xd] == 0) {
    if (bVar1) {
      if (PTR_FUN_01c2211c != (undefined *)0x0) {
        FUN_00e8eaff();
      }
    }
    else if (PTR_FUN_01c2211c != (undefined *)0x0) {
      FUN_00e8eaff();
    }
    FUN_00eaed47();
  }
  else {
    iVar7 = FUN_00b6e080();
    if (iVar7 == 0) {
                    /* WARNING: Subroutine does not return */
      FUN_00931e50();
    }
  }
  return;
}

