/* Address: 0082aa50 | Ghidra name: FUN_0082aa50 */

void __fastcall FUN_0082aa50(int param_1,int param_2)

{
  if (PTR_FUN_01c21c20 != (undefined *)0x0) {
    FUN_00e8ca02();
  }
  FUN_00eae9a0();
  FUN_00eaebca();
  FUN_00831710();
  *(undefined1 *)(param_1 + 0xd) = 1;
  if (param_2 != 0) {
    FUN_0082cb50();
    FUN_00831710();
    return;
  }
  FUN_00eae9a0();
  FUN_009116c0();
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

