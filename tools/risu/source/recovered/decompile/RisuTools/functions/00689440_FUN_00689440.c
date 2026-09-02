/* Address: 00689440 | Ghidra name: FUN_00689440 */

undefined4 FUN_00689440(void)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  undefined4 uVar4;
  int iVar5;
  undefined4 uVar6;
  undefined1 *puVar7;
  undefined1 *puVar8;
  
  iVar2 = FUN_005ebf70();
  FUN_00eae9a0();
  FUN_004f8360();
  FUN_00eaec39();
  uVar1 = *(undefined4 *)(iVar2 + 8);
  (*(code *)PTR_FUN_01c35cc8)();
  iVar3 = *(int *)(iVar2 + 0x18);
  *(int *)(iVar3 + 0xc) = *(int *)(iVar3 + 0xc) + 1;
  if (*(uint *)(iVar3 + 8) < *(uint *)(*(int *)(iVar3 + 4) + 4)) {
    *(uint *)(iVar3 + 8) = *(uint *)(iVar3 + 8) + 1;
    FUN_0099b2e0();
  }
  else {
    FUN_00ccd380();
  }
  FUN_00eaec39();
  FUN_0040ee30();
  if ((undefined *)**(undefined4 **)(iVar2 + 0x2c) == &DAT_015d12c4) {
    FUN_00464710();
  }
  else {
    (*(code *)PTR_FUN_01c34fe0)();
  }
  iVar3 = FUN_00eae9a0();
  uVar4 = FUN_00468480();
  *(undefined4 *)(iVar3 + 0x10) = uVar4;
  *(undefined8 *)(iVar3 + 4) = DAT_018d2400;
  *(undefined4 *)(iVar3 + 0xc) = 0;
  if (PTR_FUN_01c21304 != (undefined *)0x0) {
    FUN_00e8da98();
  }
  FUN_00e46ee0(&PTR_DAT_015397ec,0,iVar3);
  FUN_00eae9a0();
  iVar3 = FUN_0040eeb0();
  FUN_004098c0();
  FUN_0041efd0();
  FUN_0041c4d0();
  FUN_0041d030();
  FUN_00eaebca();
  FUN_00eae9a0();
  if (PTR_FUN_01c21040 != (undefined *)0x0) {
    FUN_00e8d0e6();
  }
  FUN_00eaebca();
  iVar5 = FUN_00eae9a0();
  *(undefined8 *)(iVar5 + 4) = DAT_018d2408;
  *(undefined8 *)(iVar5 + 0xc) = 0;
  *(undefined8 *)(iVar5 + 0x14) = DAT_018d2408;
  *(undefined8 *)(iVar5 + 0x1c) = 0;
  FUN_0041c640();
  FUN_0041d1a0();
  (*(code *)PTR_FUN_01c51c88)();
  (**(code **)(**(int **)(iVar3 + 0x1c) + 0x24))();
  FUN_00eae9a0();
  iVar5 = FUN_0040eeb0();
  FUN_004098c0();
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
  FUN_0041efd0();
  FUN_0041c4d0();
  FUN_00eae9a0();
  FUN_0041b3e0();
  FUN_0041efd0();
  FUN_0041d030();
  FUN_00eaebca();
  FUN_00eae9a0();
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
  if (PTR_FUN_01c21414 != (undefined *)0x0) {
    FUN_00e8defa();
  }
  FUN_00eaebef();
  iVar3 = FUN_00eae9a0();
  *(undefined ***)(iVar3 + 0xc) = &PTR_DAT_01bb1644;
  FUN_005e08c0();
  FUN_00eaebca();
  FUN_005a4920();
  *(undefined4 *)(iVar2 + 0x24) = 0;
  FUN_0041c640();
  FUN_00cbbc50();
  FUN_0041d1a0();
  (*(code *)PTR_FUN_01c51c88)();
  FUN_00cbbc50();
  (**(code **)(**(int **)(iVar5 + 0x1c) + 0x24))();
  FUN_00eae9a0();
  iVar3 = FUN_0040eeb0();
  FUN_004098c0();
  FUN_0041efd0();
  FUN_0041c4d0();
  FUN_00eae9a0();
  FUN_0041b3e0();
  FUN_0041c580();
  FUN_00eae9a0();
  FUN_0041b3e0();
  FUN_0041efd0();
  FUN_0041d030();
  FUN_00eaebca();
  FUN_00eae9a0();
  if (PTR_FUN_01c2134c != (undefined *)0x0) {
    FUN_00e8dbca();
  }
  FUN_00eaebef();
  iVar5 = FUN_00eae9a0();
  *(undefined4 *)(iVar5 + 4) = 1;
  FUN_0041c640();
  FUN_0041d1a0();
  (*(code *)PTR_FUN_01c51c88)();
  (**(code **)(**(int **)(iVar3 + 0x1c) + 0x24))();
  iVar3 = FUN_00eae9a0();
  FUN_004eb300();
  *(int *)(iVar3 + 100) = *(int *)(iVar3 + 100) + 1;
  if (PTR_FUN_01c21360 != (undefined *)0x0) {
    FUN_00e8c4da();
  }
  if (PTR_FUN_01c21360 != (undefined *)0x0) {
    FUN_00e8dc1f();
  }
  FUN_00e46ee0(&PTR_DAT_01548570,0,iVar3);
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
  FUN_00eae9a0();
  if (PTR_FUN_01c212c8 != (undefined *)0x0) {
    FUN_00e8d999();
  }
  uVar4 = DAT_01c28208;
  FUN_00458150(DAT_01c28208);
  FUN_00eaebef();
  uVar6 = FUN_005a4840();
  *(undefined4 *)(iVar2 + 0x24) = 0;
  FUN_00409ef0(0,uVar6);
  FUN_00cbbc50();
  FUN_0040f100();
  iVar3 = FUN_00eae9a0();
  if (PTR_FUN_01c21398 != (undefined *)0x0) {
    FUN_00e8c552();
  }
  puVar7 = &DAT_01571588;
  puVar8 = (undefined1 *)(iVar3 + 0x154);
  for (iVar5 = 0x48; iVar5 != 0; iVar5 = iVar5 + -1) {
    *puVar8 = *puVar7;
    puVar7 = puVar7 + 1;
    puVar8 = puVar8 + 1;
  }
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
  FUN_00eaec39();
  FUN_00dda510(0,DAT_018d2410);
  FUN_00dda510(0,DAT_018d2410);
  if (PTR_FUN_01c21114 != (undefined *)0x0) {
    FUN_00e8c1dd();
  }
  uVar6 = FUN_0047bf00();
  if (PTR_FUN_01c21398 != (undefined *)0x0) {
    FUN_00e8dcfc();
  }
  FUN_00e46ee0(&PTR_DAT_015391f8,0,uVar6);
  iVar3 = FUN_00eae9a0();
  if (PTR_FUN_01c213a0 != (undefined *)0x0) {
    FUN_00e8dd1e();
  }
  uVar6 = DAT_01c282dc;
  *(undefined ***)(iVar3 + 0xc) = &PTR_DAT_01bb1644;
  FUN_00eaebef(uVar4,uVar6);
  uVar4 = FUN_005a4920();
  *(undefined4 *)(iVar2 + 0x24) = 0;
  FUN_00409ef0(0,uVar4);
  FUN_00dda510(0,DAT_018d2418);
  FUN_00cbbc50();
  FUN_0040f100();
  FUN_00cbbc50();
  (*(code *)PTR_FUN_01c3c160)();
  return uVar1;
}

