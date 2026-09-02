/* Address: 0047a6f0 | Ghidra name: FUN_0047a6f0 */

void FUN_0047a6f0(void)

{
  undefined4 unaff_EBX;
  int iVar1;
  int iVar2;
  
  if (PTR_FUN_01c21144 != (undefined *)0x0) {
    FUN_00e8d47c(0);
  }
  iVar2 = DAT_01c27fd8;
  iVar1 = DAT_01c27fd8 + 4;
  FUN_00e6a6f0(&PTR_DAT_0153a2b4,0,0,0,1,0);
  FUN_00eaebca(iVar1);
  iVar1 = iVar2 + 8;
  FUN_00e67e30(&PTR_DAT_0153a2ec,0,0,0,1,DAT_018cd870);
  FUN_00eaebca(iVar1);
  iVar1 = iVar2 + 0xc;
  FUN_00e6a6f0(&PTR_DAT_0153a2c8,0,0,0,1,0);
  FUN_00eaebca(iVar1);
  iVar1 = iVar2 + 0x10;
  FUN_00e63820(&PTR_DAT_0153a2dc,0,0,0,1,0);
  FUN_00eaebca(iVar1);
  iVar1 = iVar2 + 0x14;
  FUN_00e639a0(&PTR_DAT_0153a2e4,0,0,0,1,0);
  FUN_00eaebca(iVar1);
  iVar2 = iVar2 + 0x18;
  FUN_00e67e30(&PTR_DAT_0153a2ec,0,0,0,1,DAT_018cd878);
  FUN_00eaebca(iVar2);
  FUN_00eae9a0();
  FUN_00e9194d(iVar2);
  FUN_00eae9a0();
  FUN_00e9195e(unaff_EBX);
  FUN_00e47f20(&PTR_DAT_01538938);
  FUN_00eaebca();
  return;
}

