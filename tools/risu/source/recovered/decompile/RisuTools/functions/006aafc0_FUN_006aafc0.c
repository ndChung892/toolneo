/* Address: 006aafc0 | Ghidra name: FUN_006aafc0 */

undefined4 FUN_006aafc0(void)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  undefined4 uVar4;
  
  iVar2 = FUN_005ebf70();
  FUN_00eae9a0();
  if (PTR_FUN_01c21234 != (undefined *)0x0) {
    FUN_00e8c264();
  }
  FUN_00eae9a0();
  FUN_00eaebca();
  if (PTR_FUN_01c21294 != (undefined *)0x0) {
    FUN_00e8c354();
  }
  FUN_00445bb0();
  FUN_00eaec5e();
  uVar1 = *(undefined4 *)(iVar2 + 8);
  (*(code *)PTR_FUN_01c35d78)();
  iVar3 = *(int *)(iVar2 + 0x18);
  *(int *)(iVar3 + 0xc) = *(int *)(iVar3 + 0xc) + 1;
  if (*(uint *)(iVar3 + 8) < *(uint *)(*(int *)(iVar3 + 4) + 4)) {
    *(uint *)(iVar3 + 8) = *(uint *)(iVar3 + 8) + 1;
    FUN_0099b2e0();
  }
  else {
    FUN_00ccd380();
  }
  FUN_00eaec5e();
  FUN_0040ee30();
  if ((undefined *)**(undefined4 **)(iVar2 + 0x2c) == &DAT_015d12c4) {
    FUN_00464710();
  }
  else {
    (*(code *)PTR_FUN_01c35058)();
  }
  if (PTR_FUN_01c21234 != (undefined *)0x0) {
    FUN_00e8d768();
  }
  FUN_00d24bf0(2,DAT_018d26b0,DAT_018d26b0,DAT_018d26b0,DAT_018d26b0);
  if (PTR_FUN_01c21040 != (undefined *)0x0) {
    FUN_00e8d0e6();
  }
  FUN_00d30c30(2,DAT_018d26b8,0,DAT_018d26b8,0);
  iVar3 = FUN_00eae9a0();
  FUN_004f8360();
  *(int *)(iVar3 + 100) = *(int *)(iVar3 + 100) + 1;
  if (PTR_FUN_01c21294 != (undefined *)0x0) {
    FUN_00e8d8cd();
  }
  FUN_00e46ee0();
  iVar3 = *(int *)(iVar2 + 0x18);
  *(int *)(iVar3 + 0xc) = *(int *)(iVar3 + 0xc) + 1;
  if (*(uint *)(iVar3 + 8) < *(uint *)(*(int *)(iVar3 + 4) + 4)) {
    *(uint *)(iVar3 + 8) = *(uint *)(iVar3 + 8) + 1;
    FUN_0099b2e0();
  }
  else {
    FUN_00ccd380();
  }
  FUN_00eaebca();
  iVar3 = FUN_00eae9a0();
  FUN_00eae9a0();
  FUN_00eaebca();
  FUN_00445bb0();
  *(int *)(iVar3 + 100) = *(int *)(iVar3 + 100) + 1;
  FUN_00cb1210();
  iVar3 = *(int *)(iVar2 + 0x18);
  *(int *)(iVar3 + 0xc) = *(int *)(iVar3 + 0xc) + 1;
  if (*(uint *)(iVar3 + 8) < *(uint *)(*(int *)(iVar3 + 4) + 4)) {
    *(uint *)(iVar3 + 8) = *(uint *)(iVar3 + 8) + 1;
    FUN_0099b2e0();
  }
  else {
    FUN_00ccd380();
  }
  FUN_00eaebca();
  FUN_0040ee30();
  if ((undefined *)**(undefined4 **)(iVar2 + 0x2c) == &DAT_015d12c4) {
    FUN_00464710();
  }
  else {
    (*(code *)PTR_FUN_01c35058)();
  }
  FUN_00d36370(2,1);
  FUN_00d30c30(2,DAT_018d26b0,DAT_018d26c0,DAT_018d26b0,DAT_018d26c0);
  FUN_00d24bf0(2,DAT_018d26c8,DAT_018d26c8,DAT_018d26c8,DAT_018d26c8);
  FUN_00dda510();
  iVar3 = FUN_00eae9a0();
  *(undefined ***)(iVar3 + 0xc) = &PTR_DAT_01bb2040;
  FUN_00eaec14();
  uVar4 = FUN_005a4920();
  *(undefined4 *)(iVar2 + 0x24) = 0;
  FUN_00409ef0(0,uVar4);
  uVar4 = FUN_00eae9a0();
  if (PTR_FUN_01c20fa0 != (undefined *)0x0) {
    FUN_00e8cf4e();
  }
  if (PTR_FUN_01c212d8 != (undefined *)0x0) {
    FUN_00e8d9dd();
  }
  FUN_00eaebef();
  FUN_00409ef0(0,uVar4);
  FUN_00cbbc50();
  FUN_0040f100();
  iVar3 = FUN_00eae9a0();
  FUN_00523850();
  *(int *)(iVar3 + 100) = *(int *)(iVar3 + 100) + 1;
  FUN_00cb1210();
  FUN_0040ee30();
  if ((undefined *)**(undefined4 **)(iVar2 + 0x2c) == &DAT_015d12c4) {
    FUN_00464710();
  }
  else {
    (*(code *)PTR_FUN_01c35058)();
  }
  iVar2 = FUN_00eae9a0();
  if (PTR_FUN_01c213a4 != (undefined *)0x0) {
    FUN_00e8dd2f();
  }
  uVar4 = FUN_00468480();
  *(undefined4 *)(iVar2 + 0x10) = uVar4;
  *(undefined8 *)(iVar2 + 4) = DAT_018d26d8;
  *(undefined4 *)(iVar2 + 0xc) = 0;
  FUN_00e46ee0();
  iVar2 = FUN_00eae9a0();
  uVar4 = FUN_00468480();
  *(undefined4 *)(iVar2 + 0x10) = uVar4;
  *(undefined8 *)(iVar2 + 4) = DAT_018d26d8;
  *(undefined4 *)(iVar2 + 0xc) = 0;
  FUN_00e46ee0();
  FUN_00d30c30(2,0,0,0,0);
  uVar4 = FUN_00eae9a0();
  if (PTR_FUN_01c21270 != (undefined *)0x0) {
    FUN_00e8d845();
  }
  FUN_00eaebca();
  FUN_00409ef0(0,uVar4);
  FUN_00eae9a0();
  FUN_00eaebef();
  FUN_005e2480();
  FUN_00eae9a0();
  if (PTR_FUN_01c21414 != (undefined *)0x0) {
    FUN_00e8defa();
  }
  uVar4 = FUN_00eaebef();
  FUN_00409ef0(0,uVar4);
  FUN_00eae9a0();
  uVar4 = FUN_00eaebef();
  FUN_00409ef0(0,uVar4);
  FUN_00eae9a0();
  uVar4 = FUN_00eaebef();
  FUN_00409ef0(0,uVar4);
  FUN_0040f100();
  FUN_00cbbc50();
  FUN_0040f100();
  FUN_00cbbc50();
  (*(code *)PTR_FUN_01c3c210)();
  return uVar1;
}

