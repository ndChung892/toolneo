/* Address: 00852ec0 | Ghidra name: FUN_00852ec0 */

undefined4 __thiscall FUN_00852ec0(int param_1,char param_2)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  
  if (PTR_FUN_01c21cf8 != (undefined *)0x0) {
    FUN_00e8cad4();
  }
  uVar1 = FUN_0084d560(param_1);
  iVar2 = FUN_00e8fd55();
  iVar2 = *(int *)(iVar2 + 4);
  iVar3 = FUN_008fce00();
  if (iVar3 != 0) {
    FUN_009a2b60();
    FUN_009024f0();
    if (param_1 == 0) {
      FUN_00eae9a0();
      FUN_0095f390();
                    /* WARNING: Subroutine does not return */
      FUN_00eaeefb();
    }
    if (iVar2 != 5) {
      iVar2 = FUN_00852b90();
      if (iVar2 == 0) {
        if (param_2 == '\0') {
          if (PTR_FUN_01c21d04 != (undefined *)0x0) {
            FUN_00e8e45b();
          }
          return *(undefined4 *)(DAT_01c28b9c + 4);
        }
        FUN_00eae9a0();
        FUN_0092af10();
        FUN_0084e7f0();
        FUN_00928850();
                    /* WARNING: Subroutine does not return */
        FUN_00eaeefb();
      }
    }
    FUN_00eae9a0();
    FUN_0095f390();
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  return uVar1;
}

