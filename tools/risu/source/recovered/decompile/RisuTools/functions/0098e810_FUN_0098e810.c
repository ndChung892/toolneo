/* Address: 0098e810 | Ghidra name: FUN_0098e810 */

void __fastcall FUN_0098e810(int param_1)

{
  int iVar1;
  
  if (param_1 == 0) {
                    /* WARNING: Subroutine does not return */
    FUN_00911740();
  }
  iVar1 = FUN_00992220(param_1 + 8,*(undefined4 *)(param_1 + 4));
  if (iVar1 == 0) {
    iVar1 = FUN_00909b10();
    if (iVar1 == 0) {
      FUN_0098e8a0();
      return;
    }
    FUN_00eae9a0();
    FUN_009115d0(&PTR_DAT_01bee354);
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  FUN_00eae9a0();
  FUN_009115d0(&PTR_DAT_01bee354);
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

