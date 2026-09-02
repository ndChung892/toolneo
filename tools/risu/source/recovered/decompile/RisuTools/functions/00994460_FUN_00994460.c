/* Address: 00994460 | Ghidra name: FUN_00994460 */

void __fastcall FUN_00994460(int param_1,uint param_2)

{
  if ((param_2 & 2) == 0) {
    FUN_00eae9a0();
    FUN_009115d0(&PTR_DAT_01be0a00);
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  if ((param_1 != 2) && (param_1 != 1)) {
    FUN_00eae9a0();
    FUN_009115d0(&PTR_DAT_01becb9c);
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  return;
}

