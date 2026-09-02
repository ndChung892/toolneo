/* Address: 00702820 | Ghidra name: FUN_00702820 */

void FUN_00702820(void)

{
  code *pcVar1;
  int *piVar2;
  undefined4 uVar3;
  int iVar4;
  
  FUN_00e4cfd0(&PTR_DAT_015427c8);
  piVar2 = (int *)FUN_00712040();
  pcVar1 = *(code **)(*piVar2 + 0x44);
  uVar3 = FUN_00712040();
  FUN_00eaf9f0(uVar3,0);
  iVar4 = (*pcVar1)();
  FUN_00eafa21();
  if (iVar4 != 0) {
    FUN_00eae9a0();
    FUN_009a24f0(iVar4);
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  FUN_00712dd0();
  return;
}

