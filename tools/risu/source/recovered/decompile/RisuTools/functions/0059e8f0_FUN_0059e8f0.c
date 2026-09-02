/* Address: 0059e8f0 | Ghidra name: FUN_0059e8f0 */

undefined4 FUN_0059e8f0(void)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 uVar3;
  int iVar4;
  undefined4 uVar5;
  int iVar6;
  undefined1 *puVar7;
  undefined1 *puVar8;
  undefined8 uVar9;
  
  iVar2 = FUN_00594df0();
  FUN_00eae9a0();
  if (PTR_FUN_01c212b4 != (undefined *)0x0) {
    FUN_00e8c390();
  }
  FUN_004f8360();
  FUN_00eaec39();
  uVar1 = *(undefined4 *)(iVar2 + 8);
  (*(code *)PTR_FUN_01c35918)();
  iVar4 = *(int *)(iVar2 + 0x18);
  *(int *)(iVar4 + 0xc) = *(int *)(iVar4 + 0xc) + 1;
  if (*(uint *)(iVar4 + 8) < *(uint *)(*(int *)(iVar4 + 4) + 4)) {
    *(uint *)(iVar4 + 8) = *(uint *)(iVar4 + 8) + 1;
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
    (*(code *)PTR_FUN_01c34d08)();
  }
  uVar3 = FUN_00eae9a0();
  if (PTR_FUN_01c21304 != (undefined *)0x0) {
    FUN_00e8da98();
  }
  if (PTR_FUN_01c21414 != (undefined *)0x0) {
    FUN_00e8defa();
  }
  FUN_00eaebca();
  FUN_00409ef0(0,uVar3);
  uVar3 = FUN_00eae9a0();
  if (PTR_FUN_01c21040 != (undefined *)0x0) {
    FUN_00e8d0e6();
  }
  FUN_00eaebef();
  FUN_00409ef0(0,uVar3);
  FUN_00eae9a0();
  FUN_00cb6770();
  FUN_00ccd1f0();
  FUN_004e7fd0(0);
  iVar4 = FUN_00eae9a0();
  if (PTR_FUN_01c21254 != (undefined *)0x0) {
    FUN_00e8c2dc();
  }
  if (PTR_FUN_01c21298 != (undefined *)0x0) {
    FUN_00e8c363();
  }
  *(undefined4 *)(iVar4 + 0x44) = 0xffffffff;
  FUN_004098c0();
  if (PTR_FUN_01c21254 != (undefined *)0x0) {
    FUN_00e8d7df();
  }
  FUN_00d68380();
  FUN_00cb1210();
  FUN_004e7fd0(0);
  iVar4 = FUN_00eae9a0();
  *(undefined4 *)(iVar4 + 0x44) = 0xffffffff;
  FUN_004098c0();
  FUN_00d68380();
  FUN_00cb1210();
  FUN_004e7fd0(0);
  iVar4 = FUN_00eae9a0();
  *(undefined4 *)(iVar4 + 0x44) = 0xffffffff;
  FUN_004098c0();
  FUN_00d68380();
  FUN_00cb1210();
  FUN_004e7fd0(0);
  iVar4 = FUN_00eae9a0();
  *(undefined4 *)(iVar4 + 0x44) = 0xffffffff;
  FUN_004098c0();
  FUN_00d68380();
  FUN_00cb1210();
  FUN_004e7fd0(DAT_018d14d8);
  iVar4 = FUN_00eae9a0();
  *(undefined4 *)(iVar4 + 0x44) = 0xffffffff;
  FUN_004098c0();
  FUN_00d68380();
  FUN_00cb1210();
  FUN_004e0300();
  FUN_00eae9a0();
  FUN_00cb6770();
  FUN_00ccd1f0();
  FUN_004e7fd0(DAT_018d14d8);
  iVar4 = FUN_00eae9a0();
  if (PTR_FUN_01c21324 != (undefined *)0x0) {
    FUN_00e8c462();
  }
  *(undefined4 *)(iVar4 + 0x44) = 0xffffffff;
  FUN_004098c0();
  if (PTR_FUN_01c21324 != (undefined *)0x0) {
    FUN_00e8db20();
  }
  uVar3 = DAT_01c28264;
  FUN_00d68410(0,0,0);
  FUN_00cb1210();
  FUN_004e7fd0(0);
  iVar4 = FUN_00eae9a0();
  *(undefined4 *)(iVar4 + 0x44) = 0xffffffff;
  FUN_004098c0();
  FUN_00d68410(0,0,0);
  FUN_00cb1210();
  FUN_004e03c0();
  iVar4 = FUN_00eae9a0();
  if (PTR_FUN_01c2139c != (undefined *)0x0) {
    FUN_00e8c561();
  }
  puVar7 = &DAT_01571588;
  puVar8 = (undefined1 *)(iVar4 + 0x154);
  for (iVar6 = 0x48; iVar6 != 0; iVar6 = iVar6 + -1) {
    *puVar8 = *puVar7;
    puVar7 = puVar7 + 1;
    puVar8 = puVar8 + 1;
  }
  FUN_00445bb0();
  *(int *)(iVar4 + 100) = *(int *)(iVar4 + 100) + 1;
  FUN_00cb1210();
  FUN_0040ee30();
  if ((undefined *)**(undefined4 **)(iVar2 + 0x2c) == &DAT_015d12c4) {
    FUN_00464710();
  }
  else {
    (*(code *)PTR_FUN_01c34d08)();
  }
  if (PTR_FUN_01c212b4 != (undefined *)0x0) {
    FUN_00e8d944();
  }
  FUN_00de4130(2,1);
  FUN_0040f100();
  iVar4 = FUN_00eae9a0();
  if (PTR_FUN_01c21424 != (undefined *)0x0) {
    FUN_00e8c69c();
  }
  if (PTR_FUN_01c21238 != (undefined *)0x0) {
    FUN_00e8c273();
  }
  *(undefined1 *)(iVar4 + 0x154) = 1;
  if (PTR_FUN_01c21270 != (undefined *)0x0) {
    FUN_00e8c309();
  }
  if (PTR_FUN_01c21414 != (undefined *)0x0) {
    FUN_00e8c66f();
  }
  FUN_00445bb0();
  if (PTR_FUN_01c21424 != (undefined *)0x0) {
    FUN_00e8df2d();
  }
  FUN_00e163f0();
  FUN_0054d000();
  *(int *)(iVar4 + 100) = *(int *)(iVar4 + 100) + 1;
  FUN_00cb1210();
  iVar4 = *(int *)(iVar2 + 0x18);
  *(int *)(iVar4 + 0xc) = *(int *)(iVar4 + 0xc) + 1;
  if (*(uint *)(iVar4 + 8) < *(uint *)(*(int *)(iVar4 + 4) + 4)) {
    *(uint *)(iVar4 + 8) = *(uint *)(iVar4 + 8) + 1;
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
    (*(code *)PTR_FUN_01c34d08)();
  }
  FUN_00de4130(2,2);
  FUN_00dda510();
  FUN_00dda510();
  FUN_00d30c30(2,DAT_018d14e0,0,0,0);
  if (PTR_FUN_01c20f9c != (undefined *)0x0) {
    FUN_00e8cf3d();
  }
  FUN_00eaebef();
  FUN_005a4be0();
  *(undefined4 *)(iVar2 + 0x24) = 0;
  FUN_00593900();
  uVar5 = FUN_00eae9a0();
  FUN_00eaebca();
  FUN_00409ef0(0,uVar5);
  uVar5 = FUN_00eae9a0();
  FUN_00eaebca();
  FUN_00409ef0(0,uVar5);
  uVar5 = FUN_00eae9a0();
  FUN_00eaebca();
  FUN_00409ef0(0,uVar5);
  uVar5 = FUN_00eae9a0();
  FUN_00eaebca();
  FUN_00409ef0(0,uVar5);
  if (PTR_FUN_01c21078 != (undefined *)0x0) {
    FUN_00e8d16e();
  }
  FUN_00dafb60(2,0);
  uVar5 = FUN_00eae9a0();
  FUN_00eaebca();
  FUN_00409ef0(0,uVar5);
  FUN_00cbb7d0();
  FUN_0040f100();
  iVar4 = FUN_00eae9a0();
  if (PTR_FUN_01c21340 != (undefined *)0x0) {
    FUN_00e8c480();
  }
  FUN_004f8360();
  *(int *)(iVar4 + 100) = *(int *)(iVar4 + 100) + 1;
  FUN_00cb1210();
  iVar4 = *(int *)(iVar2 + 0x18);
  *(int *)(iVar4 + 0xc) = *(int *)(iVar4 + 0xc) + 1;
  if (*(uint *)(iVar4 + 8) < *(uint *)(*(int *)(iVar4 + 4) + 4)) {
    *(uint *)(iVar4 + 8) = *(uint *)(iVar4 + 8) + 1;
    FUN_0099b2e0();
  }
  else {
    FUN_00ccd380();
  }
  FUN_00eaec39();
  FUN_00de4130(2,3);
  if (PTR_FUN_01c21340 != (undefined *)0x0) {
    FUN_00e8db97();
  }
  FUN_00d380b0(2,0);
  FUN_00d37210(2,2);
  FUN_00d30c30(2,DAT_018d14e0,0,0,0);
  iVar4 = FUN_00eae9a0();
  FUN_00500dc0();
  *(int *)(iVar4 + 100) = *(int *)(iVar4 + 100) + 1;
  FUN_00cb1210();
  FUN_0040ee30();
  if ((undefined *)**(undefined4 **)(iVar2 + 0x2c) == &DAT_015d12c4) {
    FUN_00464710();
  }
  else {
    (*(code *)PTR_FUN_01c34d08)();
  }
  FUN_00d30c30(2,DAT_018d14e8,0,0,0);
  uVar5 = FUN_00eae9a0();
  if (PTR_FUN_01c20fa0 != (undefined *)0x0) {
    FUN_00e8cf4e();
  }
  if (PTR_FUN_01c214c8 != (undefined *)0x0) {
    FUN_00e8e00a();
  }
  uVar9 = CONCAT44(uVar3,DAT_01c284b8);
  FUN_00eaebef(DAT_01c284b8);
  FUN_00409ef0(0,uVar5);
  uVar3 = FUN_00eae9a0();
  if (PTR_FUN_01c2134c != (undefined *)0x0) {
    FUN_00e8dbca();
  }
  FUN_00eaebef();
  FUN_00409ef0(0,uVar3);
  FUN_0040f100();
  iVar4 = FUN_00eae9a0();
  FUN_00500dc0();
  *(int *)(iVar4 + 100) = *(int *)(iVar4 + 100) + 1;
  FUN_00cb1210();
  iVar4 = *(int *)(iVar2 + 0x18);
  *(int *)(iVar4 + 0xc) = *(int *)(iVar4 + 0xc) + 1;
  if (*(uint *)(iVar4 + 8) < *(uint *)(*(int *)(iVar4 + 4) + 4)) {
    *(uint *)(iVar4 + 8) = *(uint *)(iVar4 + 8) + 1;
    FUN_0099b2e0();
  }
  else {
    FUN_00ccd380();
  }
  FUN_00eaebca();
  FUN_00d30c30(2,DAT_018d14e8,0,0,0);
  FUN_00eae9a0();
  iVar4 = FUN_00eae9a0();
  *(undefined ***)(iVar4 + 4) = &PTR_DAT_01c137e4;
  FUN_00eaebca();
  uVar3 = FUN_00eae9a0();
  FUN_00593750();
  FUN_00ea39ff(uVar9);
  FUN_004588d0(0,uVar3);
  FUN_00eae9a0();
  FUN_00ccde10();
  FUN_00eaebca();
  FUN_00eae9a0();
  FUN_00458150();
  FUN_00eaebca();
  FUN_00eaebca();
  uVar3 = FUN_005a4840();
  *(undefined4 *)(iVar2 + 0x24) = 0;
  FUN_00409ef0(0,uVar3);
  uVar3 = FUN_00eae9a0();
  FUN_00eaebca();
  FUN_00409ef0(0,uVar3);
  FUN_00cbb7d0();
  FUN_0040f100();
  iVar4 = FUN_00eae9a0();
  FUN_00500dc0();
  *(int *)(iVar4 + 100) = *(int *)(iVar4 + 100) + 1;
  FUN_00cb1210();
  FUN_0040ee30();
  if ((undefined *)**(undefined4 **)(iVar2 + 0x2c) == &DAT_015d12c4) {
    FUN_00464710();
  }
  else {
    (*(code *)PTR_FUN_01c34d08)();
  }
  FUN_00d30c30();
  FUN_00eae9a0();
  uVar3 = FUN_00eaebef();
  FUN_00409ef0(0,uVar3);
  FUN_00eae9a0();
  uVar3 = FUN_00eaebef();
  FUN_00409ef0(0,uVar3);
  FUN_0040f100();
  FUN_00cbb7d0();
  FUN_0040f100();
  iVar4 = FUN_00eae9a0();
  puVar7 = &DAT_01571588;
  puVar8 = (undefined1 *)(iVar4 + 0x154);
  for (iVar6 = 0x48; iVar6 != 0; iVar6 = iVar6 + -1) {
    *puVar8 = *puVar7;
    puVar7 = puVar7 + 1;
    puVar8 = puVar8 + 1;
  }
  FUN_00445bb0();
  *(int *)(iVar4 + 100) = *(int *)(iVar4 + 100) + 1;
  FUN_00cb1210();
  iVar4 = *(int *)(iVar2 + 0x18);
  *(int *)(iVar4 + 0xc) = *(int *)(iVar4 + 0xc) + 1;
  if (*(uint *)(iVar4 + 8) < *(uint *)(*(int *)(iVar4 + 4) + 4)) {
    *(uint *)(iVar4 + 8) = *(uint *)(iVar4 + 8) + 1;
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
    (*(code *)PTR_FUN_01c34d08)();
  }
  FUN_00de4130(2,5);
  FUN_00dafb60(2,0);
  FUN_00d36370(2,0);
  FUN_00d37210(2,0);
  iVar4 = FUN_00eae9a0();
  if (PTR_FUN_01c213a0 != (undefined *)0x0) {
    FUN_00e8dd1e();
  }
  uVar3 = FUN_00468480();
  *(undefined4 *)(iVar4 + 0x10) = uVar3;
  *(undefined8 *)(iVar4 + 4) = DAT_018d14d8;
  *(undefined4 *)(iVar4 + 0xc) = 0;
  FUN_00e46ee0();
  FUN_00dafb60(2,0);
  iVar4 = FUN_00eae9a0();
  *(undefined ***)(iVar4 + 0xc) = &PTR_DAT_01b68378;
  FUN_00eaec5e();
  uVar3 = FUN_005a4920();
  *(undefined4 *)(iVar2 + 0x24) = 0;
  FUN_00409ef0(0,uVar3);
  FUN_00dda510();
  FUN_00cbb7d0();
  FUN_0040f100();
  iVar4 = FUN_00eae9a0();
  FUN_004f8360();
  *(int *)(iVar4 + 100) = *(int *)(iVar4 + 100) + 1;
  FUN_00cb1210();
  iVar4 = *(int *)(iVar2 + 0x18);
  *(int *)(iVar4 + 0xc) = *(int *)(iVar4 + 0xc) + 1;
  if (*(uint *)(iVar4 + 8) < *(uint *)(*(int *)(iVar4 + 4) + 4)) {
    *(uint *)(iVar4 + 8) = *(uint *)(iVar4 + 8) + 1;
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
    (*(code *)PTR_FUN_01c34d08)();
  }
  FUN_00de4130(2,5);
  FUN_00dafb60(2,0);
  FUN_00dafb60(2,0);
  iVar4 = FUN_00eae9a0();
  puVar7 = &DAT_01571588;
  puVar8 = (undefined1 *)(iVar4 + 0x154);
  for (iVar6 = 0x48; iVar6 != 0; iVar6 = iVar6 + -1) {
    *puVar8 = *puVar7;
    puVar7 = puVar7 + 1;
    puVar8 = puVar8 + 1;
  }
  FUN_00445bb0();
  *(int *)(iVar4 + 100) = *(int *)(iVar4 + 100) + 1;
  FUN_00cb1210();
  iVar4 = *(int *)(iVar2 + 0x18);
  *(int *)(iVar4 + 0xc) = *(int *)(iVar4 + 0xc) + 1;
  if (*(uint *)(iVar4 + 8) < *(uint *)(*(int *)(iVar4 + 4) + 4)) {
    *(uint *)(iVar4 + 8) = *(uint *)(iVar4 + 8) + 1;
    FUN_0099b2e0();
  }
  else {
    FUN_00ccd380();
  }
  FUN_00eaec39();
  FUN_00d36370(2,0);
  FUN_00d37210(2,0);
  iVar4 = FUN_00eae9a0();
  uVar3 = FUN_00468480();
  *(undefined4 *)(iVar4 + 0x10) = uVar3;
  *(undefined8 *)(iVar4 + 4) = DAT_018d14d8;
  *(undefined4 *)(iVar4 + 0xc) = 0;
  FUN_00e46ee0();
  FUN_00dafb60(2,0);
  iVar4 = FUN_00eae9a0();
  *(undefined ***)(iVar4 + 0xc) = &PTR_DAT_01b67f70;
  FUN_00eaebef();
  uVar3 = FUN_005a4920();
  *(undefined4 *)(iVar2 + 0x24) = 0;
  FUN_00409ef0(0,uVar3);
  FUN_00dda510();
  FUN_00cbb7d0();
  FUN_0040f100();
  iVar4 = FUN_00eae9a0();
  puVar7 = &DAT_01571588;
  puVar8 = (undefined1 *)(iVar4 + 0x154);
  for (iVar6 = 0x48; iVar6 != 0; iVar6 = iVar6 + -1) {
    *puVar8 = *puVar7;
    puVar7 = puVar7 + 1;
    puVar8 = puVar8 + 1;
  }
  FUN_00445bb0();
  *(int *)(iVar4 + 100) = *(int *)(iVar4 + 100) + 1;
  FUN_00cb1210();
  iVar4 = *(int *)(iVar2 + 0x18);
  *(int *)(iVar4 + 0xc) = *(int *)(iVar4 + 0xc) + 1;
  if (*(uint *)(iVar4 + 8) < *(uint *)(*(int *)(iVar4 + 4) + 4)) {
    *(uint *)(iVar4 + 8) = *(uint *)(iVar4 + 8) + 1;
    FUN_0099b2e0();
  }
  else {
    FUN_00ccd380();
  }
  FUN_00eaec39();
  FUN_00d30c30();
  FUN_00d36370(2,0);
  FUN_00d37210(2,0);
  iVar4 = FUN_00eae9a0();
  uVar3 = FUN_00468480();
  *(undefined4 *)(iVar4 + 0x10) = uVar3;
  *(undefined8 *)(iVar4 + 4) = DAT_018d14d8;
  *(undefined4 *)(iVar4 + 0xc) = 0;
  FUN_00e46ee0();
  FUN_00dafb60(2,0);
  iVar4 = FUN_00eae9a0();
  *(undefined ***)(iVar4 + 0xc) = &PTR_DAT_01b67fc4;
  FUN_00eaebef();
  uVar3 = FUN_005a4920();
  *(undefined4 *)(iVar2 + 0x24) = 0;
  FUN_00409ef0(0,uVar3);
  FUN_00dda510();
  FUN_00cbb7d0();
  FUN_0040f100();
  FUN_00cbb7d0();
  FUN_0040f100();
  iVar4 = FUN_00eae9a0();
  FUN_0058eec0();
  *(int *)(iVar4 + 100) = *(int *)(iVar4 + 100) + 1;
  FUN_00cb1210();
  FUN_0040ee30();
  if ((undefined *)**(undefined4 **)(iVar2 + 0x2c) == &DAT_015d12c4) {
    FUN_00464710();
  }
  else {
    (*(code *)PTR_FUN_01c34d08)();
  }
  FUN_00de4130(2,2);
  if (PTR_FUN_01c214dc != (undefined *)0x0) {
    FUN_00e8e05f();
  }
  FUN_00dafb60(2,1);
  FUN_0040f100();
  iVar4 = FUN_00eae9a0();
  puVar7 = &DAT_01571588;
  puVar8 = (undefined1 *)(iVar4 + 0x154);
  for (iVar6 = 0x48; iVar6 != 0; iVar6 = iVar6 + -1) {
    *puVar8 = *puVar7;
    puVar7 = puVar7 + 1;
    puVar8 = puVar8 + 1;
  }
  FUN_00445bb0();
  *(int *)(iVar4 + 100) = *(int *)(iVar4 + 100) + 1;
  FUN_00cb1210();
  FUN_0040ee30();
  if ((undefined *)**(undefined4 **)(iVar2 + 0x2c) == &DAT_015d12c4) {
    FUN_00464710();
  }
  else {
    (*(code *)PTR_FUN_01c34d08)();
  }
  FUN_00de4130(2,1);
  FUN_00de4130(2,5);
  FUN_00dda510();
  FUN_0040f100();
  FUN_00cbb7d0();
  (*(code *)PTR_FUN_01c3bda8)();
  return uVar1;
}

