/* Address: 00895aa0 | Ghidra name: FUN_00895aa0 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall
FUN_00895aa0(int param_1,int *param_2,int param_3,int param_4,int param_5,int param_6)

{
  int iVar1;
  float10 fVar2;
  int local_14;
  
  if (param_6 != 0) {
    FUN_00899800();
    FUN_009024f0();
  }
  local_14 = 0;
  iVar1 = FUN_0099aa80();
  if (iVar1 == 0) {
    if (((param_2 != (int *)0x0) && ((undefined *)*param_2 == &DAT_0160ae9c)) &&
       (*(int *)(param_5 + 0x10) != 0)) {
      if (((param_4 == 0) || (*(int *)(param_4 + 0x10) == 0)) && (*(char *)(param_5 + 0x14) != '\0')
         ) {
                    /* WARNING: Subroutine does not return */
        FUN_009320a0();
      }
      local_14 = FUN_00eae9a0();
      if (PTR_FUN_01c21d40 != (undefined *)0x0) {
        FUN_00e8e527();
      }
      *(undefined4 *)(local_14 + 0x24) = 0x80131500;
      FUN_00eaebef();
      FUN_00eaec39();
      *(undefined4 *)(local_14 + 0x24) = 0x8013153b;
      FUN_00eaec5e();
    }
  }
  else if ((param_4 == 0) || (*(int *)(param_4 + 0x10) == 0)) {
    if (((*(int *)(param_5 + 0x10) != 0) && (*(int *)(param_3 + 0x10) == 0)) &&
       ((param_4 == 0 || (*(int *)(param_4 + 0x10) == 0)))) {
      iVar1 = FUN_00eae9a0();
      fVar2 = (float10)FUN_00eb6270(*(undefined4 *)(param_1 + 0x24),*(undefined4 *)(param_1 + 0x28))
      ;
      *(double *)(iVar1 + 4) = (double)fVar2 / _DAT_018d9188;
      FUN_00890ca0();
      iVar1 = FUN_00eae9a0();
      (**(code **)(*param_2 + 0x20))();
      *(undefined4 *)(iVar1 + 0x24) = 0x80131500;
      FUN_00eaebca();
      FUN_00eaec39();
      *(undefined4 *)(iVar1 + 0x24) = 0x80131505;
      iVar1 = FUN_00eae9a0();
      *(undefined4 *)(iVar1 + 0x24) = 0x80131500;
      FUN_00eaec39();
      iVar1 = FUN_00eaec14();
      *(undefined4 *)(iVar1 + 0x24) = 0x8013153b;
      local_14 = FUN_00eaebef();
    }
  }
  else if (*(int *)(iVar1 + 0x2c) != param_4) {
    FUN_0090da80();
    iVar1 = FUN_00eae9a0();
    *(undefined4 *)(iVar1 + 0x24) = 0x80131500;
    FUN_00eaebef();
    iVar1 = FUN_00eaec39();
    *(undefined4 *)(iVar1 + 0x24) = 0x8013153b;
    local_14 = FUN_00eaec5e();
  }
  FUN_008984c0();
  if (local_14 == 0) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

