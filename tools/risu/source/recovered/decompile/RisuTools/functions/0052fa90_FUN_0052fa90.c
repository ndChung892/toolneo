/* Address: 0052fa90 | Ghidra name: FUN_0052fa90 */

void FUN_0052fa90(void)

{
  int iVar1;
  int iVar2;
  
  if (PTR_FUN_01c213bc != (undefined *)0x0) {
    FUN_00e8dd95(0);
  }
  iVar2 = DAT_01c282f8;
  iVar1 = DAT_01c282f8 + 4;
  FUN_00e6cf60(&PTR_DAT_0153f560,0,0,1,1);
  FUN_00eaebca(iVar1);
  iVar2 = iVar2 + 8;
  FUN_00e63420(&PTR_DAT_0153f558,0,0,0,1,0);
  FUN_00eaebca(iVar2);
  return;
}

