/* Address: 008d9e90 | Ghidra name: FUN_008d9e90 */

void __fastcall FUN_008d9e90(int param_1)

{
  undefined4 uVar1;
  
  if ((*(int *)(param_1 + 4) < 0x100) &&
     ((*(int *)(param_1 + 4) != 0xff || (*(short *)(param_1 + 0x204) == 0x2e)))) {
    return;
  }
  FUN_00eae9a0(0xff);
  FUN_00958ea0();
  uVar1 = FUN_00927db0();
  uVar1 = FUN_008d94c0(uVar1);
  FUN_009117c0(uVar1);
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

