/* Address: 008d2230 | Ghidra name: FUN_008d2230 */

void __fastcall FUN_008d2230(int param_1)

{
  int iVar1;
  
  if (param_1 != 0) {
    iVar1 = FUN_00de1fa0(*(undefined4 *)(param_1 + 4),0,10);
    if (-1 < iVar1) {
      FUN_00eae9a0();
      FUN_0091d220();
                    /* WARNING: Subroutine does not return */
      FUN_00eaeefb();
    }
  }
  return;
}

