/* Address: 009daa40 | Ghidra name: FUN_009daa40 */

void __fastcall
FUN_009daa40(undefined4 param_1,int param_2,int param_3,int param_4,undefined4 *param_5)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  
  if (param_5 == (undefined4 *)0x0) {
                    /* WARNING: Subroutine does not return */
    FUN_00911740();
  }
  if (param_2 < 0) {
                    /* WARNING: Subroutine does not return */
    FUN_00de6f20();
  }
  if (param_4 < 0) {
                    /* WARNING: Subroutine does not return */
    FUN_00de6f20();
  }
  if (param_3 < 0) {
                    /* WARNING: Subroutine does not return */
    FUN_00de6f20();
  }
  if ((int)param_5[1] < 0) {
                    /* WARNING: Subroutine does not return */
    FUN_009c2c10();
  }
  if (param_5[1] - param_4 < param_3) {
    FUN_00eae9a0();
    FUN_00911540();
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  uVar3 = *param_5;
  iVar1 = FUN_009bfdf0();
  if (iVar1 != 1) {
    FUN_00eae9a0();
    FUN_009115d0(&PTR_DAT_01be18d4);
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  iVar1 = (*(code *)PTR_FUN_01c3c730)();
  if (iVar1 - param_2 < param_3) {
    FUN_00eae9a0();
    FUN_00911540();
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  param_3 = param_3 + param_2;
  if (param_2 < param_3) {
    do {
      uVar2 = (*(code *)PTR_FUN_01c3b570)();
      iVar1 = FUN_009bfdf0(uVar2,param_3,uVar3);
      if (iVar1 != 1) {
                    /* WARNING: Subroutine does not return */
        FUN_00931ca0();
      }
      uVar2 = FUN_0090b500();
      FUN_0090a5b0(uVar2);
      param_2 = param_2 + 1;
    } while (param_2 < param_3);
  }
  return;
}

