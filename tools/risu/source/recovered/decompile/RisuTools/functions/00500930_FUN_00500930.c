/* Address: 00500930 | Ghidra name: FUN_00500930 */

void FUN_00500930(void)

{
  int iVar1;
  undefined4 uVar2;
  undefined8 in_stack_ffffffc4;
  undefined8 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  
  if (PTR_FUN_01c21234 != (undefined *)0x0) {
    FUN_00e8d768();
  }
  if (PTR_LAB_01c20f98 != (undefined *)0x0) {
    FUN_00e8cf2c();
  }
  FUN_0040b050();
  if (PTR_FUN_01c2134c != (undefined *)0x0) {
    FUN_00e8dbca();
  }
  FUN_00eaec14();
  if (PTR_FUN_01c21294 != (undefined *)0x0) {
    FUN_00e8d8cd();
  }
  FUN_0040b050();
  FUN_00eaec14();
  if (PTR_FUN_01c213c4 != (undefined *)0x0) {
    FUN_00e8ddb7();
  }
  iVar1 = DAT_01c28300;
  uVar7 = *(undefined4 *)(DAT_01c28300 + 8);
  FUN_0040b050();
  FUN_00eaebef();
  uVar6 = *(undefined4 *)(iVar1 + 0x10);
  FUN_0040b050();
  FUN_00eaebef();
  uVar5 = *(undefined4 *)(iVar1 + 0x14);
  FUN_0040b050();
  FUN_00eaebef();
  uVar4 = *(undefined4 *)(iVar1 + 0x18);
  FUN_0040b050();
  FUN_00eaebef();
  uVar2 = *(undefined4 *)(iVar1 + 0x1c);
  FUN_0040b050();
  FUN_00eaebef();
  uVar3 = CONCAT44(uVar2,*(undefined4 *)(iVar1 + 0x20));
  FUN_0040b050();
  FUN_00eaebef();
  FUN_00e6c770(&PTR_DAT_0153e658,0,0,1,0);
  FUN_00eaebca();
  uVar2 = FUN_00eae9a0();
  FUN_00ea34a3(in_stack_ffffffc4);
  FUN_00e6c770(&PTR_DAT_0153e658,0,uVar2,1,DAT_018cf5c0);
  FUN_00eaebca();
  uVar2 = FUN_00eae9a0();
  FUN_00ea34bf(uVar3);
  FUN_00e6c770(&PTR_DAT_0153e658,0,uVar2,1,0);
  FUN_00eaebca();
  FUN_0040b050();
  FUN_00eaebef();
  FUN_00eae9a0();
  FUN_00ea3487(uVar4,uVar5);
  FUN_00e6c870();
  FUN_00eaebca();
  FUN_00e6a6f0(&PTR_DAT_0153e680,0,0,0,1,0);
  FUN_00eaebca();
  FUN_00e6bff0();
  FUN_00eaebca();
  FUN_00e6c0e0();
  FUN_00eaebca();
  if (PTR_FUN_01c2116c != (undefined *)0x0) {
    FUN_00e8d526();
  }
  FUN_00e6cf60();
  FUN_00eaebca();
  if (PTR_FUN_01c213bc != (undefined *)0x0) {
    FUN_00e8dd95();
  }
  FUN_0040b050(*(undefined4 *)(DAT_01c282f8 + 4));
  FUN_00eaebef();
  FUN_0040b050(*(undefined4 *)(iVar1 + 0xc));
  FUN_00eaec14();
  FUN_00eae9a0();
  FUN_00e93a3d(uVar6);
  FUN_00eae9a0();
  FUN_00e93a4e(uVar7);
  FUN_00e6a9a0();
  FUN_00eaebca();
  if (PTR_FUN_01c20fa0 != (undefined *)0x0) {
    FUN_00e8cf4e();
  }
  FUN_00b67820(1);
  FUN_00eaeae1();
  FUN_00eaebef();
  FUN_00eaebef();
  FUN_00e47ce0();
  return;
}

