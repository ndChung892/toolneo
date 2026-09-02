/* Address: 004a32b0 | Ghidra name: FUN_004a32b0 */

void __thiscall FUN_004a32b0(int param_1,undefined8 param_2)

{
  int iVar1;
  
  iVar1 = FUN_004a33d0(param_2);
  if (iVar1 != 0) {
    *(undefined8 *)(param_1 + 0x2c) = param_2;
    *(undefined1 *)(param_1 + 0x75) = 1;
    return;
  }
  FUN_00eae9a0();
  FUN_00911540();
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

