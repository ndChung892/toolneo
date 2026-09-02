/* Address: 00853d20 | Ghidra name: FUN_00853d20 */

void FUN_00853d20(void)

{
  int iVar1;
  int iVar2;
  undefined4 uVar3;
  int iVar4;
  
  iVar4 = 5;
  while( true ) {
    iVar1 = FUN_00853560();
    if (iVar1 == 0) {
      iVar2 = 0;
      uVar3 = 0;
    }
    else {
      iVar2 = iVar1 + 8;
      uVar3 = *(undefined4 *)(iVar1 + 4);
    }
    iVar1 = FUN_00853dc0(iVar2,uVar3,0xe8);
    iVar4 = iVar4 + -1;
    if (*(int *)(iVar1 + 4) != 0) break;
    if (iVar4 == 0) {
      FUN_00eae9a0();
      FUN_00928850();
                    /* WARNING: Subroutine does not return */
      FUN_00eaeefb();
    }
  }
  return;
}

