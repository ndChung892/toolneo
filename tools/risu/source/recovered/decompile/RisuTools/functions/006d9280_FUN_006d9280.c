/* Address: 006d9280 | Ghidra name: FUN_006d9280 */

void FUN_006d9280(void)

{
  code *pcVar1;
  int *piVar2;
  undefined4 uVar3;
  int iVar4;
  
  FUN_00e4cfd0(&PTR_DAT_01542200);
  piVar2 = (int *)FUN_00712040();
  pcVar1 = *(code **)(*piVar2 + 0x2c);
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

