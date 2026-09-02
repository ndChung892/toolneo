/* Address: 006dfd30 | Ghidra name: FUN_006dfd30 */

void FUN_006dfd30(void)

{
  code *pcVar1;
  int *piVar2;
  undefined4 uVar3;
  int iVar4;
  
  piVar2 = (int *)FUN_00712040();
  pcVar1 = *(code **)(*piVar2 + 0x38);
  uVar3 = FUN_00712040();
  FUN_00eaf9f0(uVar3);
  iVar4 = (*pcVar1)();
  FUN_00eafa21();
  if (iVar4 == 0) {
    return;
  }
  FUN_00eae9a0();
  FUN_009a24f0(iVar4);
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

