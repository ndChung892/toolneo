/* Address: 00901a50 | Ghidra name: FUN_00901a50 */

void __fastcall FUN_00901a50(int param_1)

{
  int iVar1;
  
  if ((param_1 == 0) || (*(int *)(param_1 + 4) == 0)) {
                    /* WARNING: Subroutine does not return */
    FUN_00911670();
  }
  if (*(short *)(param_1 + 8) == 0) {
    FUN_00eae9a0();
    FUN_009115d0(&PTR_DAT_01bf25b4);
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  iVar1 = FUN_00909b10();
  if (iVar1 == 0) {
    return;
  }
  FUN_00eae9a0();
  FUN_009115d0(&PTR_DAT_01bf25b4);
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

