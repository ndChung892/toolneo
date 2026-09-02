/* Address: 00997820 | Ghidra name: FUN_00997820 */

void __fastcall FUN_00997820(undefined4 *param_1,int param_2,int param_3)

{
  undefined *puVar1;
  int iVar2;
  int iVar3;
  
  if (param_2 == 0) {
                    /* WARNING: Subroutine does not return */
    FUN_00911740();
  }
  iVar2 = FUN_009bfdf0();
  if (iVar2 != 1) {
    FUN_00eae9a0();
    FUN_009115d0(&PTR_DAT_01be18d4);
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  if (param_3 < 0) {
                    /* WARNING: Subroutine does not return */
    FUN_00de6f20();
  }
  iVar2 = *(int *)(param_2 + 4);
  if (iVar2 < 0) {
                    /* WARNING: Subroutine does not return */
    FUN_009c2c10();
  }
  if (((undefined *)*param_1 == &DAT_01616ecc) || ((undefined *)*param_1 != &DAT_0161e4e0)) {
    iVar3 = param_1[5];
  }
  else {
    puVar1 = *(undefined **)param_1[0xb];
    if ((puVar1 == &DAT_01616ecc) || (puVar1 != &DAT_0161e4e0)) {
      iVar3 = ((undefined4 *)param_1[0xb])[5];
    }
    else {
      iVar3 = FUN_009db150();
    }
  }
  if (iVar2 - param_3 < iVar3) {
    FUN_00eae9a0();
    FUN_00911540();
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  FUN_00997760(param_3);
  return;
}

