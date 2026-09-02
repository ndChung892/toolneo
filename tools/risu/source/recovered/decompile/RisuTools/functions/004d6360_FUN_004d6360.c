/* Address: 004d6360 | Ghidra name: FUN_004d6360 */

void FUN_004d6360(void)

{
  int iVar1;
  int iVar2;
  
  if (PTR_FUN_01c21278 != (undefined *)0x0) {
    FUN_00e8d867(0);
  }
  iVar2 = DAT_01c281c0;
  iVar1 = DAT_01c281c0 + 4;
  FUN_00e6a6f0(&PTR_DAT_0153d480,0,0,0,1,0);
  FUN_00eaebca(iVar1);
  iVar1 = iVar2 + 8;
  FUN_00e6a6f0(&PTR_DAT_0153d400,0,0,0,1,0);
  FUN_00eaebca(iVar1);
  iVar1 = iVar2 + 0xc;
  FUN_00e6a6f0(&PTR_DAT_0153d3c0,0,0,0,1,0);
  FUN_00eaebca(iVar1);
  iVar1 = iVar2 + 0x10;
  FUN_00e6a6f0(&PTR_DAT_0153d3ec,0,0,0,1,0);
  FUN_00eaebca(iVar1);
  iVar1 = iVar2 + 0x14;
  FUN_00e6abd0(&PTR_DAT_0153d3d4);
  FUN_00eaebca(iVar1);
  iVar1 = iVar2 + 0x18;
  FUN_00e6abd0(&PTR_DAT_0153d3a0);
  FUN_00eaebca(iVar1);
  iVar1 = iVar2 + 0x1c;
  FUN_00e6abd0(&PTR_DAT_0153d3a0);
  FUN_00eaebca(iVar1);
  iVar2 = iVar2 + 0x20;
  FUN_00e6abd0(&PTR_DAT_0153d3e0);
  FUN_00eaebca(iVar2);
  if (PTR_FUN_01c21278 != (undefined *)0x0) {
    FUN_00e8c327();
  }
  DAT_01c2127c = 0;
  FUN_00eae9a0();
  FUN_00ccc320();
  FUN_00eaec5e();
  FUN_00eae9a0();
  FUN_00ccc320();
  FUN_00eaec5e();
  FUN_00eae9a0();
  FUN_00e93377(iVar2);
  FUN_00eaec5e();
  return;
}

