/* Address: 008e7cf0 | Ghidra name: FUN_008e7cf0 */

undefined4 __fastcall FUN_008e7cf0(int param_1,int *param_2,undefined4 param_3,undefined4 param_4)

{
  int *piVar1;
  undefined4 uVar2;
  int iVar3;
  
  if (*(char *)(param_1 + 0x1e) != '\0') {
    FUN_00eae9a0();
    FUN_00928850();
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  piVar1 = *(int **)(param_1 + 4);
  if ((undefined *)*piVar1 == &DAT_0160eabc) {
    *param_2 = piVar1[3];
    uVar2 = 0;
  }
  else {
    uVar2 = (**(code **)(*piVar1 + 0x3c))(param_3,param_4);
  }
  if (*param_2 == 0) {
    if (((*(char *)(param_1 + 0x1c) != '\0') && (*(int *)(param_1 + 0xc) != 0)) &&
       (iVar3 = FUN_008e7e20(), iVar3 == 0)) {
      *param_2 = 0xe;
      return uVar2;
    }
    if (*(int *)(param_1 + 0x14) != 0) {
      if ((undefined *)**(undefined4 **)(param_1 + 4) == &DAT_0160eb14) {
        iVar3 = FUN_008e5640();
      }
      else {
        iVar3 = 3;
      }
      if (iVar3 < *(int *)(param_1 + 0x14)) {
        *param_2 = 0xf;
        return uVar2;
      }
    }
    if ((*(int *)(param_1 + 0x18) != 0) &&
       (iVar3 = FUN_008e7c80(), iVar3 < *(int *)(param_1 + 0x18))) {
      *param_2 = 0xd;
    }
  }
  return uVar2;
}

