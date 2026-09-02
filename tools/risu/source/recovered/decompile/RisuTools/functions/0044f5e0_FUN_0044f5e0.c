/* Address: 0044f5e0 | Ghidra name: FUN_0044f5e0 */

void FUN_0044f5e0(void)

{
  uint uVar1;
  int iVar2;
  int iVar3;
  
  FUN_00eae9a0(0);
  if (PTR_FUN_01c21098 != (undefined *)0x0) {
    FUN_00e8d1d4();
  }
  iVar3 = DAT_01c27f30;
  FUN_00eaec39();
  iVar2 = iVar3 + 8;
  FUN_00e6ba50(&PTR_DAT_0153757c,0,0,1,1);
  FUN_00eaebca(iVar2);
  iVar2 = iVar3 + 0xc;
  FUN_00e6bb40(&PTR_DAT_01537588,0,0,1,1);
  FUN_00eaebca(iVar2);
  iVar2 = iVar3 + 0x10;
  FUN_00e6c680(&PTR_DAT_01537594,0,0,1,1);
  FUN_00eaebca(iVar2);
  iVar2 = iVar3 + 0x14;
  FUN_00e6c680(&PTR_DAT_01537594,0,0,1,1);
  FUN_00eaebca(iVar2);
  iVar2 = iVar3 + 0x18;
  FUN_00e6c680(&PTR_DAT_01537594,0,0,1,1);
  FUN_00eaebca(iVar2);
  iVar2 = iVar3 + 0x1c;
  FUN_00e6c680(&PTR_DAT_01537594,0,0,1,1);
  FUN_00eaebca(iVar2);
  iVar2 = iVar3 + 0x20;
  FUN_00e6c680(&PTR_DAT_01537594,0,0,1,1);
  uVar1 = 0x44f72c;
  FUN_00eaebca(iVar2);
  iVar3 = iVar3 + 0x24;
  FUN_00e6cd60(&PTR_DAT_015375a0,0,0,1,uVar1 & 0xffff0000);
  FUN_00eaebca(iVar3);
  return;
}

