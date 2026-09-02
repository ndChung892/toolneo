/* Address: 00894a60 | Ghidra name: FUN_00894a60 */

void __fastcall FUN_00894a60(undefined4 *param_1,int param_2,char *param_3)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  undefined **ppuVar4;
  
  iVar2 = *(int *)(param_2 + 4);
  if (iVar2 == 0) {
    iVar3 = 0;
    uVar1 = 0;
  }
  else {
    iVar3 = iVar2 + 8;
    uVar1 = *(undefined4 *)(iVar2 + 4);
  }
  iVar2 = FUN_00898810(iVar3,uVar1);
  *param_3 = iVar2 == 0;
  if (*param_3 == '\0') {
    ppuVar4 = *(undefined ***)(iVar2 + 4);
  }
  else {
    ppuVar4 = &PTR_DAT_01bde7b4;
  }
  *param_1 = &PTR_DAT_01be8ee8;
  param_1[1] = ppuVar4;
  return;
}

