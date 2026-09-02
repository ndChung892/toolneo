/* Address: 00a235c0 | Ghidra name: FUN_00a235c0 */

undefined4 __fastcall FUN_00a235c0(undefined4 param_1,undefined4 param_2)

{
  int iVar1;
  int iVar2;
  undefined4 uVar3;
  int local_14;
  
  local_14 = 0;
  iVar1 = FUN_00eae9a0();
  FUN_00a1d6c0();
  FUN_00a1d680();
  *(undefined4 *)(iVar1 + 8) = 0;
  iVar2 = FUN_00a21a10(&local_14);
  iVar1 = local_14;
  if (iVar2 == 0) {
    uVar3 = FUN_00a21d00(param_2);
    if (iVar1 != 0) {
      if (iVar1 != *(int *)(DAT_01c2d024 + 4)) {
        FUN_009a2b60();
      }
      FUN_009024f0();
    }
    return uVar3;
  }
  FUN_00eae9a0();
  FUN_0093bd90();
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

