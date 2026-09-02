/* Address: 007a1500 | Ghidra name: FUN_007a1500 */

/* WARNING: Removing unreachable block (ram,0x007a1854) */
/* WARNING: Removing unreachable block (ram,0x007a18b3) */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_007a1500(int *param_1)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  int iVar4;
  undefined4 in_stack_ffffffd8;
  undefined4 uVar5;
  int local_18;
  int local_14;
  
  iVar4 = *param_1;
  switch(param_1[3]) {
  case 0:
    local_14 = param_1[5];
    param_1[5] = 0;
    param_1[3] = -1;
    goto LAB_007a17b1;
  case 1:
    iVar1 = param_1[6];
    param_1[6] = 0;
    param_1[3] = -1;
    if ((*(uint *)(iVar1 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    uVar2 = *(undefined4 *)(param_1[2] + 0x28);
    uVar5 = *(undefined4 *)(*(int *)(iVar4 + 0x14) + 8);
    uVar3 = FUN_00eaeae1();
    iVar4 = FUN_00eae9a0(uVar3,param_1,uVar5);
    *(undefined4 *)(iVar4 + 4) = uVar2;
    in_stack_ffffffd8 = uVar3;
    FUN_00eaebca();
    iVar4 = FUN_00eae9a0();
    *(undefined4 *)(iVar4 + 4) = 0;
    FUN_00eaebca();
    FUN_0077a610(uVar3,&PTR_DAT_01be3a98);
    local_18 = FUN_00975000();
    if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
      param_1[3] = 2;
      FUN_00eaeca8();
      FUN_00d982e0();
      FUN_00dfc9c0();
      return;
    }
    break;
  case 2:
    local_18 = param_1[6];
    param_1[6] = 0;
    param_1[3] = -1;
    break;
  case 3:
    local_18 = param_1[6];
    param_1[6] = 0;
    param_1[3] = -1;
    goto LAB_007a15d2;
  case 4:
    local_18 = param_1[6];
    param_1[6] = 0;
    param_1[3] = -1;
    goto LAB_007a1546;
  default:
    goto switchD_007a1532_default;
  }
  if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  local_18 = FUN_0079bcd0();
  if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
    param_1[3] = 3;
    FUN_00eaeca8();
    FUN_00d982e0();
    FUN_00dfc9c0();
  }
  else {
LAB_007a15d2:
    if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    local_18 = FUN_0079bc30();
    if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
      param_1[3] = 4;
      FUN_00eaeca8();
      FUN_00d982e0();
      FUN_00dfc9c0();
    }
    else {
LAB_007a1546:
      if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      param_1[2] = 0;
switchD_007a1532_default:
      local_14 = FUN_0077acc0();
      if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
        param_1[3] = 0;
        FUN_00eaecdd();
        FUN_00d982e0();
        FUN_00dfca00();
      }
      else {
LAB_007a17b1:
        if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        if (*(int *)(local_14 + 0x20) == 0) {
          iVar4 = 0;
        }
        else {
          if (*(int *)(DAT_01c289ac + 0x30) == 0) {
            FUN_00eae9a0();
            FUN_00e9923a(in_stack_ffffffd8);
            FUN_00eaec14();
          }
          FUN_00e4ee90();
          iVar4 = FUN_00e4ee50();
        }
        if ((iVar4 != 0) && (*(int *)(iVar4 + 8) != 0)) {
          FUN_00e4e3a0();
                    /* WARNING: Subroutine does not return */
          FUN_00860240();
        }
        param_1[3] = -2;
        if (param_1[4] == 0) {
          if (PTR_FUN_01c22110 != (undefined *)0x0) {
            FUN_00e8eaee();
          }
          FUN_00eaecdd();
        }
        else {
          iVar4 = FUN_00c0a790();
          if (iVar4 == 0) {
                    /* WARNING: Subroutine does not return */
            FUN_00931e50();
          }
        }
      }
    }
  }
  return;
}

