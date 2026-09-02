/* Address: 00a234f0 | Ghidra name: FUN_00a234f0 */

undefined4 __fastcall FUN_00a234f0(undefined4 param_1,undefined4 param_2,char param_3)

{
  int iVar1;
  int iVar2;
  undefined4 uVar3;
  int local_10;
  
  local_10 = 0;
  iVar2 = FUN_00a21a10(&local_10);
  iVar1 = local_10;
  if (iVar2 == 0) {
    uVar3 = FUN_00a21d00(param_2);
  }
  else {
    if (param_3 != '\0') {
      FUN_00eae9a0();
      FUN_0093bd90();
                    /* WARNING: Subroutine does not return */
      FUN_00eaeefb();
    }
    uVar3 = 0;
  }
  if (iVar1 != 0) {
    if (iVar1 != *(int *)(DAT_01c2d024 + 4)) {
      FUN_009a2b60();
    }
    FUN_009024f0();
  }
  return uVar3;
}

