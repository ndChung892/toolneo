/* Address: 008a2360 | Ghidra name: FUN_008a2360 */

void __fastcall FUN_008a2360(int *param_1)

{
  undefined1 uVar1;
  char cVar2;
  int iVar3;
  int iVar4;
  code *pcVar5;
  int iVar6;
  int iVar7;
  uint uVar8;
  int local_5c;
  int local_50;
  int local_44;
  int local_3c;
  int local_34;
  int local_2c;
  int local_20;
  int local_14;
  
  iVar6 = -0x60;
  do {
    *(undefined4 *)((int)&local_14 + iVar6) = 0;
    *(undefined4 *)(&stack0xfffffff0 + iVar6) = 0;
    *(undefined4 *)(&stack0xfffffff4 + iVar6) = 0;
    *(undefined4 *)(&stack0xfffffff8 + iVar6) = 0;
    *(undefined4 *)(&stack0xfffffffc + iVar6) = 0;
    *(undefined4 *)(&stack0x00000000 + iVar6) = 0;
    *(undefined4 *)(&stack0x00000004 + iVar6) = 0;
    *(undefined4 *)(&stack0x00000008 + iVar6) = 0;
    *(undefined4 *)(&stack0x0000000c + iVar6) = 0;
    *(undefined4 *)(&stack0x00000010 + iVar6) = 0;
    *(undefined4 *)(&stack0x00000014 + iVar6) = 0;
    *(undefined4 *)(&stack0x00000018 + iVar6) = 0;
    iVar6 = iVar6 + 0x30;
  } while (iVar6 != 0);
  local_14 = param_1[7];
  iVar6 = *param_1;
  switch(local_14) {
  case 0:
    iVar7 = param_1[0xd];
    param_1[0xd] = 0;
    param_1[0xe] = 0;
    param_1[0xf] = 0;
    local_14 = -1;
    param_1[7] = -1;
    if (iVar7 != 0) {
      iVar7 = FUN_0099aa80();
      if (iVar7 == 0) {
        (*(code *)PTR_FUN_01c52198)();
      }
      else if ((*(uint *)(iVar7 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
    }
    FUN_00eaeca8();
    break;
  case 1:
    local_20 = param_1[0x10];
    param_1[0x10] = 0;
    param_1[0x11] = 0;
    param_1[0x12] = 0;
    local_14 = -1;
    param_1[7] = -1;
    goto LAB_008a27d0;
  case 2:
    local_34 = param_1[0x13];
    param_1[0x13] = 0;
    param_1[0x14] = 0;
    local_14 = -1;
    param_1[7] = -1;
    goto LAB_008a2766;
  case 3:
    local_44 = param_1[0x15];
    param_1[0x15] = 0;
    param_1[0x16] = 0;
    local_14 = -1;
    param_1[7] = -1;
    goto LAB_008a242d;
  case 4:
    local_50 = param_1[0x17];
    param_1[0x17] = 0;
    param_1[0x18] = 0;
    param_1[0x19] = 0;
    local_14 = -1;
    param_1[7] = -1;
    goto LAB_008a23f6;
  case 5:
    goto switchD_008a23cf_caseD_5;
  default:
    *(undefined1 *)(iVar6 + 0x79) = 1;
    param_1[8] = 0;
    param_1[2] = 0;
    param_1[3] = 0;
    param_1[4] = 0;
  }
  if (param_1[4] != 0) goto LAB_008a2723;
  iVar7 = param_1[1];
  iVar4 = *(int *)(*(int *)(iVar7 + 0x10) + 4);
  if ((2 < iVar4) && (*(int *)(iVar7 + 0x20) != 0)) {
    FUN_0089c070(0);
    pcVar5 = (code *)swi(3);
    (*pcVar5)();
    return;
  }
  if ((*(char *)(iVar6 + 0x7d) != '\0') &&
     (((1 < iVar4 ||
       ((*(int *)(iVar7 + 0x20) == 1 &&
        (((cVar2 = *(char *)(iVar6 + 0x78), cVar2 == '\x01' || (cVar2 == '\x04')) || (cVar2 == '\a')
         ))))) &&
      ((((*(int *)(iVar7 + 0x20) != 0 || (cVar2 = *(char *)(iVar6 + 0x78), cVar2 == '\x01')) ||
        (cVar2 == '\x04')) || (cVar2 == '\a')))))) {
    iVar7 = FUN_0089d500(param_1 + 3,param_1 + 5);
    if ((iVar7 == 0) && (param_1[3] != 0)) {
      FUN_00cc4990(param_1[0xc],(char)param_1[9],iVar6,param_1[1]);
      local_20 = local_2c;
      if (local_2c != 0) {
        iVar7 = FUN_0099aa80();
        if (iVar7 == 0) {
          uVar8 = (*(code *)PTR_FUN_01c44eb0)();
        }
        else {
          uVar8 = *(uint *)(iVar7 + 0x1c) & 0x1600000;
        }
        if (uVar8 == 0) {
          local_14 = 1;
          param_1[7] = 1;
          FUN_00eaee5e();
          FUN_00eaee5e();
          param_1[0x10] = local_2c;
          FUN_00da88c0(&PTR_DAT_01546fb4);
          FUN_00e3a2a0(&PTR_DAT_01554efc);
          FUN_008a2df9();
          return;
        }
      }
LAB_008a27d0:
      if (local_20 != 0) {
        iVar7 = FUN_0099aa80();
        if (iVar7 == 0) {
          (*(code *)PTR_FUN_01c52218)();
        }
        else if ((*(uint *)(iVar7 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
      }
      FUN_00eaeca8();
    }
    if (param_1[5] != 0) {
      iVar7 = FUN_008992b0();
      if (iVar7 != 0) {
        FUN_008b3280();
        FUN_00b6ceb0(param_1[0xc]);
        local_34 = local_3c;
        if (local_3c != 0) {
          iVar7 = FUN_0099aa80();
          if (iVar7 == 0) {
            uVar8 = FUN_00cde210();
          }
          else {
            uVar8 = *(uint *)(iVar7 + 0x1c) & 0x1600000;
          }
          if (uVar8 == 0) {
            local_14 = 2;
            param_1[7] = 2;
            FUN_00eaee5e();
            param_1[0x13] = local_3c;
            FUN_00da88c0(&PTR_DAT_01546fb4);
            FUN_00e17b40(&DAT_01559e1c);
            FUN_008a2df9();
            return;
          }
        }
LAB_008a2766:
        if (local_34 != 0) {
          iVar7 = FUN_0099aa80();
          if (iVar7 == 0) {
            FUN_00cf1820();
          }
          else if ((*(uint *)(iVar7 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
        }
        if (*(char *)(param_1[5] + 0xa7) == '\0') {
          FUN_00eae9a0();
          FUN_00898ed0(0,0,0,&PTR_DAT_01b7250c);
          iVar6 = FUN_00eae9a0();
          FUN_0090dac0();
          *(undefined1 *)(iVar6 + 4) = 0;
          (*(code *)PTR_FUN_01c3c8a0)(iVar6);
                    /* WARNING: Subroutine does not return */
          FUN_00eaeefb();
        }
      }
      local_44 = FUN_008b54c0(param_1[0xc],(char)param_1[9]);
      if ((*(uint *)(local_44 + 0x1c) & 0x1600000) == 0) {
        local_14 = 3;
        param_1[7] = 3;
        FUN_00eaecdd();
        param_1[0x16] = 0;
        FUN_00da88c0(&PTR_DAT_01546fb4);
        FUN_00e05320(&PTR_DAT_01554d2c);
        FUN_008a2df9();
        return;
      }
LAB_008a242d:
      if ((*(uint *)(local_44 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      FUN_00eaecdd();
    }
    param_1[5] = 0;
  }
  if (param_1[4] != 0) goto LAB_008a2723;
  if ((1 < *(int *)(*(int *)(param_1[1] + 0x10) + 4)) && (*(int *)(param_1[1] + 0x20) != 0)) {
    FUN_0089c070(0);
    pcVar5 = (code *)swi(3);
    (*pcVar5)();
    return;
  }
  iVar7 = FUN_0089cb20(param_1 + 2,param_1 + 6,(char)param_1[9]);
  if (iVar7 == 0) {
    FUN_00cc4990(param_1[0xc],(char)param_1[9],iVar6,param_1[1]);
    local_50 = local_5c;
    if (local_5c != 0) {
      iVar7 = FUN_0099aa80();
      if (iVar7 == 0) {
        uVar8 = (*(code *)PTR_FUN_01c44e60)();
      }
      else {
        uVar8 = *(uint *)(iVar7 + 0x1c) & 0x1600000;
      }
      if (uVar8 == 0) {
        local_14 = 4;
        param_1[7] = 4;
        FUN_00eaee5e();
        FUN_00eaee5e();
        param_1[0x17] = local_5c;
        FUN_00da88c0(&PTR_DAT_01546fb4);
        FUN_00e3a2a0(&PTR_DAT_01554df4);
        FUN_008a2df9();
        return;
      }
    }
LAB_008a23f6:
    if (local_50 != 0) {
      iVar7 = FUN_0099aa80();
      if (iVar7 == 0) {
        (*(code *)PTR_FUN_01c521f0)();
      }
      else if ((*(uint *)(iVar7 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
    }
    FUN_00eaeca8();
  }
  *(undefined1 *)(param_1[6] + 0x54) = 1;
switchD_008a23cf_caseD_5:
  if (local_14 == 5) {
    local_44 = param_1[0x15];
    param_1[0x15] = 0;
    param_1[0x16] = 0;
    local_14 = -1;
    param_1[7] = -1;
  }
  else {
    uVar1 = (undefined1)param_1[9];
    iVar7 = param_1[0xc];
    if (*(char *)((int)param_1 + 0x25) == '\0') {
LAB_008a263d:
      if (((*(char *)(iVar6 + 0x78) == '\x02') || (*(char *)(iVar6 + 0x78) == '\x05')) &&
         (iVar4 = *(int *)(*(int *)(iVar6 + 4) + 0x18), iVar4 != 0)) {
        local_44 = FUN_008a3760(iVar7,iVar6,param_1[6],1,0,iVar4,uVar1);
      }
      else {
        local_44 = FUN_008a6e30(iVar7,uVar1);
      }
    }
    else {
      iVar4 = *(int *)(*(int *)(iVar6 + 4) + 0x10);
      iVar3 = *(int *)(iVar4 + 0x10);
      if (iVar3 == 0) goto LAB_008a263d;
      local_44 = FUN_008a3760(iVar7,iVar6,param_1[6],0,*(undefined4 *)(iVar4 + 0x44),iVar3,uVar1);
    }
    if ((*(uint *)(local_44 + 0x1c) & 0x1600000) == 0) {
      local_14 = 5;
      param_1[7] = 5;
      FUN_00eaecdd();
      param_1[0x16] = 0;
      FUN_00da88c0(&PTR_DAT_01546fb4);
      FUN_00e05320(&PTR_DAT_01554d2c);
      FUN_008a2c78();
      FUN_008a2df9();
      return;
    }
  }
  if ((*(uint *)(local_44 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  FUN_00eaecdd();
  if ((local_14 < 0) &&
     (iVar6 = param_1[6], *(undefined1 *)(iVar6 + 0x54) = 0, *(int *)(iVar6 + 0x44) == 0)) {
    FUN_008a8bd0();
  }
  param_1[6] = 0;
LAB_008a2723:
  FUN_0089df00();
  FUN_008a2df9();
  param_1[7] = -2;
  if (param_1[10] == 0) {
    FUN_00eaeca8();
    if (PTR_DAT_01c239a4 != (undefined *)0x0) {
      FUN_00e8f3e5();
    }
    FUN_00eaeca8();
  }
  else {
    iVar6 = FUN_00cc8af0();
    if (iVar6 == 0) {
                    /* WARNING: Subroutine does not return */
      FUN_00931e50();
    }
  }
  return;
}

