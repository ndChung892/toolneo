/* Address: 00714440 | Ghidra name: FUN_00714440 */

void __fastcall FUN_00714440(int param_1)

{
  int iVar1;
  int iVar2;
  int iVar3;
  
  if (param_1 == 0) {
                    /* WARNING: Subroutine does not return */
    FUN_00911740();
  }
  iVar1 = *(int *)(param_1 + 4);
  iVar2 = FUN_00e1dd60(iVar1);
  iVar3 = 0;
  while (-1 < iVar2) {
    if (0xff < iVar2 - iVar3) {
      FUN_00eae9a0();
      FUN_009115d0(&PTR_DAT_01bece4c);
                    /* WARNING: Subroutine does not return */
      FUN_00eaeefb();
    }
    iVar3 = iVar2 + 1;
    iVar2 = FUN_00909b40(iVar1 - iVar3,iVar3);
  }
  if (0xff < iVar1 - iVar3) {
    FUN_00eae9a0();
    FUN_009115d0(&PTR_DAT_01bece4c);
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  return;
}

