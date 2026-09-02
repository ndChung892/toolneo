/* Address: 004f4320 | Ghidra name: FUN_004f4320 */

void FUN_004f4320(void)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 in_EAX;
  int iVar3;
  undefined4 unaff_EBX;
  
  if (PTR_FUN_01c21270 != (undefined *)0x0) {
    FUN_00e8d845();
  }
  iVar2 = DAT_01c281b8;
  FUN_00eae9a0();
  FUN_00e93685(in_EAX);
  iVar3 = FUN_00eae9a0();
  *(undefined4 *)(iVar3 + 4) = 0;
  *(undefined2 *)(iVar3 + 9) = 1;
  *(undefined4 *)(iVar3 + 0x10) = 0;
  *(undefined4 *)(iVar3 + 0x14) = 0;
  FUN_00eaec14();
  FUN_00e60be0(&PTR_DAT_0153dc4c);
  if (PTR_FUN_01c212f0 != (undefined *)0x0) {
    FUN_00e8da43();
  }
  FUN_00eaec5e();
  uVar1 = *(undefined4 *)(iVar2 + 8);
  if (PTR_LAB_01c20f98 != (undefined *)0x0) {
    FUN_00e8cf2c();
  }
  FUN_0040b050(uVar1);
  FUN_00eaec5e();
  FUN_00e67420(&PTR_DAT_0153dc74,0,0,0,1,0);
  FUN_00eaebca();
  FUN_00e6a6f0(&PTR_DAT_0153dc60,0,0,0,1,0);
  FUN_00eaebca();
  FUN_00e6a6f0(&PTR_DAT_0153dc60,0,0,0,1,0);
  FUN_00eaebca();
  FUN_0040b050(*(undefined4 *)(iVar2 + 0xc));
  FUN_00eaec5e();
  FUN_0040b050(*(undefined4 *)(iVar2 + 0x10));
  FUN_00eaec39();
  FUN_00eae9a0();
  FUN_00e93674(unaff_EBX);
  FUN_00eae9a0();
  FUN_00eaec5e();
  FUN_00c863c0();
  return;
}

