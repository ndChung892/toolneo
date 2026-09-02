/* Address: 0047cea0 | Ghidra name: FUN_0047cea0 */

void FUN_0047cea0(void)

{
  int iVar1;
  int iVar2;
  
  if (PTR_FUN_01c21164 != (undefined *)0x0) {
    FUN_00e8d504(0);
  }
  iVar2 = DAT_01c27ff8;
  iVar1 = DAT_01c27ff8 + 4;
  FUN_00e63e20(&PTR_DAT_0153a4c0,0,0,0,1,0);
  FUN_00eaebca(iVar1);
  iVar1 = iVar2 + 8;
  FUN_00e6a6f0(&PTR_DAT_0153a4a4,0,0,0,1,0);
  FUN_00eaebca(iVar1);
  iVar1 = iVar2 + 0xc;
  FUN_00e63ef0(&PTR_DAT_0153a4c8,0,0,0,1,0);
  FUN_00eaebca(iVar1);
  iVar1 = iVar2 + 0x10;
  FUN_00e6a6f0(&PTR_DAT_0153a528,0,0,0,1,0);
  FUN_00eaebca(iVar1);
  iVar1 = iVar2 + 0x14;
  FUN_00e67e30(&PTR_DAT_0153a4d8,0,0,0,1,0);
  FUN_00eaebca(iVar1);
  iVar1 = iVar2 + 0x18;
  FUN_00e67e30(&PTR_DAT_0153a4d8,0,0,0,1,DAT_018cd8e8);
  FUN_00eaebca(iVar1);
  iVar1 = iVar2 + 0x1c;
  FUN_00e63820(&PTR_DAT_0153a4b8,0,0,0,1,0);
  FUN_00eaebca(iVar1);
  iVar1 = iVar2 + 0x20;
  FUN_00e67e30(&PTR_DAT_0153a4d8,0,0,0,1,0);
  FUN_00eaebca(iVar1);
  iVar2 = iVar2 + 0x24;
  FUN_00e63ef0(&PTR_DAT_0153a4c8,0,0,0,1,0);
  FUN_00eaebca(iVar2);
  return;
}

