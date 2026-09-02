/* Address: 00a36430 | Ghidra name: FUN_00a36430 */

void __thiscall FUN_00a36430(int param_1,undefined4 param_2,int param_3)

{
  int iVar1;
  int iVar2;
  int local_18 [2];
  
  iVar2 = -0x60;
  do {
    *(undefined4 *)((int)local_18 + iVar2) = 0;
    *(undefined4 *)((int)local_18 + iVar2 + 4) = 0;
    *(undefined4 *)(&stack0xfffffff0 + iVar2) = 0;
    *(undefined4 *)(&stack0xfffffff4 + iVar2) = 0;
    *(undefined4 *)(&stack0xfffffff8 + iVar2) = 0;
    *(undefined4 *)(&stack0xfffffffc + iVar2) = 0;
    *(undefined4 *)(&stack0x00000000 + iVar2) = 0;
    *(undefined4 *)((int)&param_2 + iVar2) = 0;
    *(undefined4 *)((int)&param_3 + iVar2) = 0;
    iVar1 = param_3;
    *(undefined4 *)(&stack0x0000000c + iVar2) = 0;
    *(undefined4 *)(&stack0x00000010 + iVar2) = 0;
    *(undefined4 *)(&stack0x00000014 + iVar2) = 0;
    iVar2 = iVar2 + 0x30;
  } while (iVar2 != 0);
  local_18[0] = iVar2;
  local_18[1] = iVar2;
  if (*(int *)(*(int *)(param_1 + 0x30) + 0x88) == 3) {
    FUN_008ff1e0(0x88);
    FUN_00a41950();
    FUN_00eaeca8();
  }
  else {
    if (param_3 != 0) {
      FUN_00eaea6e();
      FUN_00930280(iVar1);
    }
    FUN_00eaed12();
  }
                    /* WARNING: Subroutine does not return */
  FUN_00a34e20();
}

