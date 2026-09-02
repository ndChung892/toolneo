/* Address: 0041ed90 | Ghidra name: FUN_0041ed90 */

void FUN_0041ed90(void)

{
  int iVar1;
  int iVar2;
  
  if (PTR_FUN_01c20fdc != (undefined *)0x0) {
    FUN_00e8cfc5(0);
  }
  iVar2 = DAT_01c27eac;
  iVar1 = DAT_01c27eac + 4;
  FUN_00e6a6f0(&PTR_DAT_01532e74,0,0,0,1,1);
  FUN_00eaebca(iVar1);
  iVar2 = iVar2 + 8;
  FUN_00e6a6f0(&PTR_DAT_01532e74,0,0,0,1,0);
  FUN_00eaebca(iVar2);
  iVar1 = FUN_00eae9a0();
  *(undefined ***)(iVar1 + 4) = &PTR_DAT_01b6a178;
  FUN_00eaebca();
  iVar1 = FUN_00eae9a0();
  *(undefined ***)(iVar1 + 4) = &PTR_DAT_01b87e14;
  FUN_00eaebca();
  iVar1 = FUN_00eae9a0();
  *(undefined ***)(iVar1 + 4) = &PTR_DAT_01b67aec;
  FUN_00eaebca();
  return;
}

