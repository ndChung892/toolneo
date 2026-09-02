/* Address: 005215c0 | Ghidra name: FUN_005215c0 */

void FUN_005215c0(void)

{
  int iVar1;
  int iVar2;
  
  if (PTR_FUN_01c213a0 != (undefined *)0x0) {
    FUN_00e8dd1e(0);
  }
  iVar2 = DAT_01c282dc;
  iVar1 = DAT_01c282dc + 4;
  FUN_00e6a6f0(&PTR_DAT_0153f240,0,0,0,1,0);
  FUN_00eaebca(iVar1);
  iVar1 = iVar2 + 8;
  FUN_00e63bd0(&PTR_DAT_0153f264,0,0,0,1,0);
  FUN_00eaebca(iVar1);
  iVar1 = iVar2 + 0xc;
  FUN_00e6a6f0(&PTR_DAT_0153f240,0,0,0,1,0);
  FUN_00eaebca(iVar1);
  iVar1 = iVar2 + 0x10;
  FUN_00e6a6f0(&PTR_DAT_0153f274,0,0,0,1,0);
  FUN_00eaebca(iVar1);
  iVar1 = iVar2 + 0x14;
  FUN_00e67e30(&PTR_DAT_0153f26c,0,0,0,1,0);
  FUN_00eaebca(iVar1);
  iVar1 = iVar2 + 0x18;
  FUN_00e67e30(&PTR_DAT_0153f26c,0,0,0,1,0);
  FUN_00eaebca(iVar1);
  iVar1 = iVar2 + 0x1c;
  FUN_00e63820(&PTR_DAT_0153f254,0,0,0,1,0);
  FUN_00eaebca(iVar1);
  iVar1 = iVar2 + 0x20;
  FUN_00e639a0(&PTR_DAT_0153f25c,0,0,0,1,0);
  FUN_00eaebca(iVar1);
  iVar2 = iVar2 + 0x24;
  FUN_00e67e30(&PTR_DAT_0153f26c,0,0,0,1,DAT_018cfe98);
  FUN_00eaebca(iVar2);
  return;
}

