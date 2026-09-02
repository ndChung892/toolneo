/* Address: 0085dd10 | Ghidra name: FUN_0085dd10 */

void __fastcall
FUN_0085dd10(int param_1,int param_2,uint param_3,int param_4,int param_5,uint param_6,uint param_7,
            int param_8,int param_9)

{
  if ((param_2 == 0) || (*(int *)(param_2 + 4) == 0)) {
                    /* WARNING: Subroutine does not return */
    FUN_00911670();
  }
  if (2 < param_9 - 1U) {
    FUN_00eae9a0();
    FUN_009117c0(&PTR_DAT_01b73f88);
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  if (1 < param_7) {
    FUN_00eae9a0();
    FUN_009117c0(&PTR_DAT_01b74110);
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  if ((param_6 & 0x1ff7ffff) != 0) {
    FUN_00eae9a0();
    FUN_009117c0(&PTR_DAT_01bedf8c);
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  if (param_5 < 0) {
                    /* WARNING: Subroutine does not return */
    FUN_00de6f20();
  }
  if (param_4 < 0) {
                    /* WARNING: Subroutine does not return */
    FUN_00de6f20();
  }
  if ((0xfd < param_8 - 1U) && (param_8 != -1)) {
    FUN_00eae9a0();
    FUN_009117c0(&PTR_DAT_01bec60c);
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  if (param_3 < 2) {
    if ((param_6 & 0x20000000) != 0) {
      *(undefined1 *)(param_1 + 0x2f) = 1;
    }
    return;
  }
  FUN_00eae9a0();
  FUN_009117c0(&PTR_DAT_01b7967c);
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

