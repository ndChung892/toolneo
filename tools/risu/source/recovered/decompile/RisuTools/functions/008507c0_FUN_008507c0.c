/* Address: 008507c0 | Ghidra name: FUN_008507c0 */

void __fastcall FUN_008507c0(int param_1,uint param_2)

{
  undefined4 uVar1;
  int iVar2;
  
  if ((((param_2 & 0x20) != 0) && (*(char *)(param_1 + 0x7c) == '\0')) &&
     (*(char *)(param_1 + 0x7d) == '\0')) {
    FUN_00eae9a0();
    FUN_00928850();
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  if (((param_2 & 1) != 0) && (*(char *)(param_1 + 0x7c) == '\0')) {
    if (*(char *)(param_1 + 0x7d) == '\0') {
      FUN_008507c0();
      FUN_00eae9a0();
      FUN_00928850();
                    /* WARNING: Subroutine does not return */
      FUN_00eaeefb();
    }
    if (PTR_FUN_01c21cf8 != (undefined *)0x0) {
      FUN_00e8cad4();
    }
    uVar1 = FUN_0084d610();
    *(undefined4 *)(param_1 + 0x58) = uVar1;
    *(undefined1 *)(param_1 + 0x7c) = 1;
  }
  if (((param_2 & 2) != 0) && (*(char *)(param_1 + 0x7e) != '\0')) {
    FUN_00eae9a0();
    FUN_0092a0e0();
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  if (((param_2 & 8) != 0) && (*(int *)(param_1 + 0x14) == 0)) {
    if ((~param_2 & 5) != 0) {
      FUN_008507c0();
    }
    FUN_00852ca0();
    FUN_00eaebca();
    if (*(int *)(param_1 + 0x14) == 0) {
      FUN_00eae9a0();
      FUN_00928850();
                    /* WARNING: Subroutine does not return */
      FUN_00eaeefb();
    }
  }
  if ((param_2 & 0x10) != 0) {
    iVar2 = FUN_00850410();
    if (iVar2 == 0) {
      FUN_00eae9a0();
      FUN_00928850();
                    /* WARNING: Subroutine does not return */
      FUN_00eaeefb();
    }
    if (*(char *)(param_1 + 0x7d) == '\0') {
      FUN_00eae9a0();
      FUN_00928850();
                    /* WARNING: Subroutine does not return */
      FUN_00eaeefb();
    }
  }
  return;
}

