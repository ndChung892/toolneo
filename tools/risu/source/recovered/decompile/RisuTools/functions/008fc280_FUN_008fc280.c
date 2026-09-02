/* Address: 008fc280 | Ghidra name: FUN_008fc280 */

void __fastcall FUN_008fc280(int param_1,int param_2,int param_3)

{
  int iVar1;
  
  if (param_2 == 0) {
                    /* WARNING: Subroutine does not return */
    FUN_00911740();
  }
  iVar1 = FUN_009bfdf0();
  if (iVar1 != 1) {
    FUN_00eae9a0();
    FUN_009115d0(&PTR_DAT_01be18d4);
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  iVar1 = FUN_0090b5a0();
  if (iVar1 != 0) {
    FUN_00eae9a0();
    FUN_009115d0(&PTR_DAT_01be18d4);
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  if (-1 < param_3) {
    iVar1 = *(int *)(param_2 + 4);
    if (iVar1 < 0) {
                    /* WARNING: Subroutine does not return */
      FUN_009c2c10();
    }
    if ((iVar1 <= param_3) && (iVar1 < param_3)) {
                    /* WARNING: Subroutine does not return */
      FUN_00de6fe0(&PTR_DAT_01be9fe4);
    }
    if (param_1 <= iVar1 - param_3) {
      return;
    }
    FUN_00eae9a0();
    FUN_00911540();
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
                    /* WARNING: Subroutine does not return */
  FUN_00de6f20();
}

