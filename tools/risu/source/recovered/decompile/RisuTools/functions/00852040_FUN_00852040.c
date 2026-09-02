/* Address: 00852040 | Ghidra name: FUN_00852040 */

int __fastcall FUN_00852040(int param_1,uint param_2,char param_3)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  
  if (*(char *)(param_1 + 0x7d) != '\0') {
    if (param_3 != '\0') {
      iVar2 = FUN_00eae9a0();
      FUN_0084dbc0();
      iVar3 = FUN_009706e0();
      if (iVar3 != 0) {
        if (*(char *)(param_1 + 0x7c) != '\0') {
          FUN_0092af10();
          FUN_0084e7f0();
        }
        FUN_00eae9a0();
        FUN_00928850();
                    /* WARNING: Subroutine does not return */
        FUN_00eaeefb();
      }
      if (*(int **)(iVar2 + 4) != (int *)0x0) {
        (**(code **)(**(int **)(iVar2 + 4) + 0x24))();
        FUN_009024f0();
      }
      FUN_009024f0();
    }
    uVar1 = *(undefined4 *)(*(int *)(param_1 + 0xc) + 4);
    iVar2 = FUN_00eae9ce();
    *(undefined4 *)(iVar2 + 4) = 0;
    *(undefined4 *)(iVar2 + 8) = 4;
    *(undefined1 *)(iVar2 + 0xc) = 0;
    FUN_009024f0();
    *(undefined1 *)(iVar2 + 0xd) = 1;
    *(undefined4 *)(iVar2 + 4) = uVar1;
    return iVar2;
  }
  FUN_008507c0();
  iVar2 = FUN_00852ec0(param_3);
  if ((((param_3 != '\0') && ((param_2 & 0x400) != 0)) && (iVar3 = FUN_0084d330(), iVar3 != 0)) &&
     (*(int *)(param_1 + 0x6c) != 0x103)) {
    FUN_00eae9a0();
    FUN_0092af10();
    FUN_0084e7f0();
    FUN_00928850();
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  return iVar2;
}

