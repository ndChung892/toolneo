/* Address: 008d1e60 | Ghidra name: FUN_008d1e60 */

void __thiscall FUN_008d1e60(undefined4 *param_1,undefined4 param_2)

{
  int iVar1;
  
  if (((undefined *)*param_1 != &DAT_0160d414) && ((undefined *)*param_1 != &DAT_0160d20c)) {
    iVar1 = FUN_008d3480(param_2);
    if (iVar1 == 0) {
      FUN_00eae9a0();
      FUN_008cf560();
      FUN_00890ca0();
      FUN_00928850();
                    /* WARNING: Subroutine does not return */
      FUN_00eaeefb();
    }
  }
  return;
}

