/* Address: 00913ae0 | Ghidra name: FUN_00913ae0 */

undefined2 __fastcall FUN_00913ae0(int param_1)

{
  if (param_1 == 0) {
                    /* WARNING: Subroutine does not return */
    FUN_00911740();
  }
  if (*(int *)(param_1 + 4) == 1) {
    return *(undefined2 *)(param_1 + 8);
  }
  FUN_00eae9a0();
  FUN_0091d220();
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

