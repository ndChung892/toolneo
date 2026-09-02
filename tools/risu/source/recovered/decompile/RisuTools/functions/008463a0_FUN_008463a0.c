/* Address: 008463a0 | Ghidra name: FUN_008463a0 */

int __fastcall FUN_008463a0(int param_1,int param_2,int param_3)

{
  int iVar1;
  undefined4 uVar2;
  
  if (0x50 < param_1) {
    if (param_1 < 0xb8) {
      if ((((param_1 != 0x57) && (param_1 == 0xb7)) && (param_2 != 0)) &&
         (*(int *)(param_2 + 4) != 0)) {
        FUN_008446e0();
        iVar1 = FUN_00eae9a0();
        FUN_008466d0();
        *(undefined4 *)(iVar1 + 0x24) = 0x80131500;
        uVar2 = FUN_00eaec5e();
        *(undefined4 *)(iVar1 + 0x24) = uVar2;
        return iVar1;
      }
    }
    else {
      if (param_1 == 0xce) {
        if ((param_2 != 0) && (*(int *)(param_2 + 4) != 0)) {
          FUN_008446e0();
        }
        iVar1 = FUN_00eae9a0();
        *(undefined4 *)(iVar1 + 0x24) = 0x80131500;
        iVar1 = FUN_00eaec5e();
        *(undefined4 *)(iVar1 + 0x24) = 0x800700ce;
        return iVar1;
      }
      if (param_1 == 0x3e3) {
        iVar1 = FUN_00eae9a0();
        *(undefined4 *)(iVar1 + 0x24) = 0x80131500;
        *(undefined ***)(iVar1 + 4) = &PTR_DAT_01bbff44;
        *(undefined4 *)(iVar1 + 0x24) = 0x8013153b;
        return iVar1;
      }
    }
    goto switchD_008464ca_caseD_4;
  }
  switch(param_1) {
  case 2:
    if ((param_2 != 0) && (*(int *)(param_2 + 4) != 0)) {
      FUN_008446e0();
    }
    iVar1 = FUN_00eae9a0();
    *(undefined4 *)(iVar1 + 0x24) = 0x80131500;
    iVar1 = FUN_00eaec5e();
    *(undefined4 *)(iVar1 + 0x24) = 0x80070002;
    iVar1 = FUN_00eaec39();
    break;
  case 3:
    if ((param_2 != 0) && (*(int *)(param_2 + 4) != 0)) {
      FUN_008446e0();
    }
    iVar1 = FUN_00eae9a0();
    *(undefined4 *)(iVar1 + 0x24) = 0x80131500;
    iVar1 = FUN_00eaec14();
    *(undefined4 *)(iVar1 + 0x24) = 0x80070003;
    break;
  case 5:
    if ((param_2 != 0) && (*(int *)(param_2 + 4) != 0)) {
      FUN_008446e0();
    }
    iVar1 = FUN_00eae9a0();
    *(undefined4 *)(iVar1 + 0x24) = 0x80131500;
    iVar1 = FUN_00eaec5e();
    *(undefined4 *)(iVar1 + 0x24) = 0x80070005;
    break;
  default:
    if (param_1 == 0x20) {
      if ((param_2 != 0) && (*(int *)(param_2 + 4) != 0)) {
        FUN_008446e0();
      }
      iVar1 = FUN_00eae9a0();
      FUN_008466d0();
      *(undefined4 *)(iVar1 + 0x24) = 0x80131500;
      uVar2 = FUN_00eaec5e();
      *(undefined4 *)(iVar1 + 0x24) = uVar2;
      return iVar1;
    }
    if (((param_1 == 0x50) && (param_2 != 0)) && (*(int *)(param_2 + 4) != 0)) {
      FUN_008446e0();
      iVar1 = FUN_00eae9a0();
      FUN_008466d0();
      *(undefined4 *)(iVar1 + 0x24) = 0x80131500;
      uVar2 = FUN_00eaec39();
      *(undefined4 *)(iVar1 + 0x24) = uVar2;
      return iVar1;
    }
  case 4:
switchD_008464ca_caseD_4:
    FUN_009c47d0();
    if ((param_2 != 0) && (*(int *)(param_2 + 4) != 0)) {
      FUN_00906b80(&PTR_DAT_01b3e1b0,param_2);
    }
    if ((param_3 != 0) && (*(int *)(param_3 + 4) != 0)) {
      FUN_00906aa0(param_3);
    }
    iVar1 = FUN_00eae9a0();
    FUN_008466d0();
    *(undefined4 *)(iVar1 + 0x24) = 0x80131500;
    uVar2 = FUN_00eaec39();
    *(undefined4 *)(iVar1 + 0x24) = uVar2;
  }
  return iVar1;
}

