/* Address: 00bcef20 | Ghidra name: FUN_00bcef20 */

void __fastcall FUN_00bcef20(int param_1,int param_2,undefined4 param_3)

{
  int iVar1;
  
  if (param_2 != 0) {
    iVar1 = FUN_009bfdf0();
    if (iVar1 != 1) {
      FUN_00eae9a0();
      FUN_009115d0(&PTR_DAT_01be18d4);
                    /* WARNING: Subroutine does not return */
      FUN_00eaeefb();
    }
  }
  FUN_0090aa10(*(undefined4 *)(*(int *)(param_1 + 4) + 0x18),param_3,param_2);
  return;
}

