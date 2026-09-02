/* Address: 007aa560 | Ghidra name: FUN_007aa560 */

void __fastcall FUN_007aa560(int *param_1)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  int extraout_ECX;
  undefined4 in_stack_ffffffd4;
  undefined4 uVar4;
  int *piVar5;
  int iVar6;
  int iVar7;
  int local_14;
  
  iVar7 = 0;
  iVar6 = 0;
  local_14 = param_1[2];
  iVar3 = *param_1;
  piVar5 = param_1;
  switch(local_14) {
  case 0:
    iVar7 = param_1[4];
    param_1[4] = 0;
    local_14 = -1;
    param_1[2] = -1;
    break;
  case 1:
    goto switchD_007aa59a_caseD_1;
  case 2:
    iVar3 = param_1[9];
    param_1[9] = 0;
    param_1[2] = -1;
LAB_007aa5ae:
    if ((*(uint *)(iVar3 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    goto LAB_007aa845;
  default:
    iVar7 = FUN_0077acc0();
    piVar5 = param_1;
    if ((*(uint *)(iVar7 + 0x1c) & 0x1600000) == 0) {
      param_1[2] = 0;
      FUN_00eaecdd();
      FUN_00d995a0();
      FUN_00dfca00(&PTR_DAT_01568d68);
      return;
    }
  }
  if ((*(uint *)(iVar7 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  if (*(int *)(iVar7 + 0x20) == 0) {
    iVar2 = 0;
  }
  else {
    if (*(int *)(DAT_01c289b4 + 100) == 0) {
      FUN_00eae9a0();
      FUN_00e994c0(in_stack_ffffffd4);
      FUN_00eaec14();
    }
    FUN_00e4ee90(&PTR_DAT_01544498);
    iVar2 = FUN_00e4ee50();
  }
  if ((iVar2 == 0) || (*(int *)(iVar2 + 8) < 1)) {
LAB_007aa845:
    piVar5[2] = -2;
    if (piVar5[3] == 0) {
      if (PTR_FUN_01c22110 != (undefined *)0x0) {
        FUN_00e8eaee();
      }
      FUN_00eaecdd();
    }
    else {
      iVar3 = FUN_00c0a790(0);
      if (iVar3 == 0) {
                    /* WARNING: Subroutine does not return */
        FUN_00931e50();
      }
    }
  }
  else {
    param_1 = piVar5;
    FUN_00eaeca8();
    piVar5[6] = 0;
    piVar5[7] = extraout_ECX;
    piVar5[8] = 0;
switchD_007aa59a_caseD_1:
    piVar5 = param_1;
    if (local_14 != 1) goto LAB_007aa719;
    iVar6 = param_1[9];
    param_1[9] = 0;
    param_1[2] = -1;
    do {
      if ((*(uint *)(iVar6 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
LAB_007aa719:
      iVar2 = FUN_00cd0850();
      if (iVar2 == 0) {
        param_1[5] = 0;
        param_1[6] = 0;
        param_1[7] = 0;
        param_1[8] = 0;
        iVar3 = FUN_007a22e0();
        if ((*(uint *)(iVar3 + 0x1c) & 0x1600000) == 0) {
          piVar5[2] = 2;
          FUN_00eaeca8();
          FUN_00d995a0();
          FUN_00dfc9c0();
          return;
        }
        goto LAB_007aa5ae;
      }
      iVar2 = *(int *)(iVar3 + 0x14);
      uVar1 = *(undefined4 *)(param_1[6] + 0x28);
      FUN_00eaeae1(*(undefined4 *)(iVar2 + 4),piVar5,*(undefined4 *)(iVar2 + 8),iVar6,iVar7);
      uVar4 = 0x7aa761;
      iVar6 = FUN_00eae9a0();
      *(undefined4 *)(iVar6 + 4) = uVar1;
      FUN_00eaebca();
      iVar6 = FUN_00eae9a0();
      *(undefined4 *)(iVar6 + 4) = 0;
      FUN_00eaebca();
      FUN_0077a610(uVar4,&PTR_DAT_01be3a98);
      iVar6 = FUN_00975000(*(undefined4 *)(iVar3 + 0x1c));
    } while ((*(uint *)(iVar6 + 0x1c) & 0x1600000) != 0);
    param_1[2] = 1;
    FUN_00eaecdd();
    FUN_00d995a0();
    FUN_00dfc9c0();
    FUN_007aa89e();
  }
  return;
}

