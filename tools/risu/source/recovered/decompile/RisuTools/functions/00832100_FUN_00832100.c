/* Address: 00832100 | Ghidra name: FUN_00832100 */

void __thiscall FUN_00832100(int param_1,undefined4 param_2)

{
  if (PTR_FUN_01c21c20 != (undefined *)0x0) {
    FUN_00e8ca02(0,0,0,0,0);
  }
  FUN_00eae9a0();
  FUN_00eaebca();
  FUN_00831710();
  *(undefined1 *)(param_1 + 0xd) = 1;
  FUN_0082fd60();
  FUN_0082dff0(param_2);
  FUN_00831710();
  if (*(int *)(param_1 + 8) != 0) {
    return;
  }
  FUN_00eae9a0();
  FUN_00928850();
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

