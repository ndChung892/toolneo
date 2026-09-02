/* Address: 00446b60 | Ghidra name: FUN_00446b60 */

void FUN_00446b60(void)

{
  int iVar1;
  int iVar2;
  
  if (PTR_FUN_01c2107c != (undefined *)0x0) {
    FUN_00e8d17f(0);
  }
  iVar2 = DAT_01c27f18;
  iVar1 = DAT_01c27f18 + 4;
  FUN_00e6c680(&PTR_DAT_01536dc8,0,0,1,0);
  FUN_00eaebca(iVar1);
  iVar2 = iVar2 + 8;
  FUN_00e6abd0(&PTR_DAT_01536d88);
  FUN_00eaebca(iVar2);
  return;
}

