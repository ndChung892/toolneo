/* Address: 008b4fc0 | Ghidra name: FUN_008b4fc0 */

void __fastcall FUN_008b4fc0(int param_1,undefined4 param_2)

{
  undefined4 uVar1;
  
  uVar1 = *(undefined4 *)(param_1 + 0x70);
  FUN_00966f60(uVar1,0);
  if (*(int *)(param_1 + 0x84) == 0x7fffffff) {
    FUN_008b3340(uVar1,1);
  }
  if (*(int *)(param_1 + 0x80) != 0) {
    FUN_008b58b0();
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  if (*(char *)(param_1 + 0xa6) != '\0') {
                    /* WARNING: Subroutine does not return */
    FUN_008b5860();
  }
  if (*(uint *)(param_1 + 0x94) <= *(uint *)(param_1 + 0x90)) {
    if (*(int *)(*(int *)(param_1 + 0x70) + 0x18) == *(int *)(*(int *)(param_1 + 0x70) + 0x20)) {
      FUN_008be780();
    }
    FUN_008b5f70(*(undefined4 *)(param_1 + 0x88));
    *(int *)(param_1 + 0x84) = *(int *)(param_1 + 0x84) + 2;
    FUN_00bd2de0(2,param_2);
    FUN_009671c0();
    return;
  }
                    /* WARNING: Subroutine does not return */
  FUN_008b5860();
}

