/* Address: 0077bc30 | Ghidra name: FUN_0077bc30 */

void FUN_0077bc30(char param_1,char param_2)

{
  int iVar1;
  undefined **ppuVar2;
  
  iVar1 = FUN_00eaeae1();
  ppuVar2 = &PTR_DAT_01b44160;
  if (param_2 == '\0') {
    ppuVar2 = &PTR_DAT_01b436a0;
  }
  *(undefined ***)(iVar1 + 8) = ppuVar2;
  ppuVar2 = &PTR_DAT_01b44160;
  if (param_1 == '\0') {
    ppuVar2 = &PTR_DAT_01b436a0;
  }
  *(undefined ***)(iVar1 + 0xc) = ppuVar2;
  FUN_0077a610(iVar1,&PTR_DAT_01befe28);
  return;
}

