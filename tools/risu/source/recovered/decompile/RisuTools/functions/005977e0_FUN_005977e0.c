/* Address: 005977e0 | Ghidra name: FUN_005977e0 */

undefined4 FUN_005977e0(void)

{
  undefined4 uVar1;
  int iVar2;
  undefined4 uVar3;
  int iVar4;
  int iVar5;
  undefined1 *puVar6;
  undefined1 *puVar7;
  
  iVar2 = FUN_00594df0();
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
  FUN_00eaec39();
  uVar1 = *(undefined4 *)(iVar2 + 8);
  (*(code *)PTR_FUN_01c358e8)();
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
    (*(code *)PTR_FUN_01c34ce0)();
  }
  uVar3 = FUN_00eae9a0();
  if (PTR_FUN_01c21234 != (undefined *)0x0) {
    FUN_00e8d768();
  }
  if (PTR_FUN_01c21414 != (undefined *)0x0) {
    FUN_00e8defa();
  }
  FUN_00eaebca();
  FUN_00409ef0(0,uVar3);
  FUN_00eae9a0();
  uVar3 = FUN_00eaec5e();
  FUN_00409ef0(0,uVar3);
  FUN_00eae9a0();
  uVar3 = FUN_00eaec5e();
  FUN_00409ef0(0,uVar3);
  FUN_00eae9a0();
  uVar3 = FUN_00eaebef();
  FUN_00409ef0(0,uVar3);
  iVar4 = FUN_00eae9a0();
  if (PTR_FUN_01c212b4 != (undefined *)0x0) {
    FUN_00e8c390();
  }
  FUN_004f8360();
  *(int *)(iVar4 + 100) = *(int *)(iVar4 + 100) + 1;
  if (PTR_FUN_01c21294 != (undefined *)0x0) {
    FUN_00e8d8cd();
  }
  FUN_00e46ee0();
  iVar4 = *(int *)(iVar2 + 0x18);
  *(int *)(iVar4 + 0xc) = *(int *)(iVar4 + 0xc) + 1;
  if (*(uint *)(iVar4 + 8) < *(uint *)(*(int *)(iVar4 + 4) + 4)) {
    *(uint *)(iVar4 + 8) = *(uint *)(iVar4 + 8) + 1;
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
    (*(code *)PTR_FUN_01c34ce0)();
  }
  FUN_00eae9a0();
  FUN_00cb6770();
  FUN_00ccd1f0();
  FUN_004e7fd0(DAT_018d1458);
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
  FUN_004e0300();
  iVar4 = FUN_00eae9a0();
  if (PTR_FUN_01c2139c != (undefined *)0x0) {
    FUN_00e8c561();
  }
  puVar6 = &DAT_01571588;
  puVar7 = (undefined1 *)(iVar4 + 0x154);
  for (iVar5 = 0x48; iVar5 != 0; iVar5 = iVar5 + -1) {
    *puVar7 = *puVar6;
    puVar6 = puVar6 + 1;
    puVar7 = puVar7 + 1;
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
    (*(code *)PTR_FUN_01c34ce0)();
  }
  if (PTR_FUN_01c20fa0 != (undefined *)0x0) {
    FUN_00e8cf4e();
  }
  FUN_00dafb60(2,0);
  if (PTR_FUN_01c21040 != (undefined *)0x0) {
    FUN_00e8d0e6();
  }
  FUN_00d36370(2,0);
  FUN_00d37210(2,0);
  iVar4 = FUN_00eae9a0();
  if (PTR_FUN_01c213a0 != (undefined *)0x0) {
    FUN_00e8dd1e();
  }
  uVar3 = FUN_00468480();
  *(undefined4 *)(iVar4 + 0x10) = uVar3;
  *(undefined8 *)(iVar4 + 4) = DAT_018d1458;
  *(undefined4 *)(iVar4 + 0xc) = 0;
  FUN_00e46ee0();
  if (PTR_FUN_01c21078 != (undefined *)0x0) {
    FUN_00e8d16e();
  }
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
  if (PTR_FUN_01c212b4 != (undefined *)0x0) {
    FUN_00e8d944();
  }
  FUN_00de4130(2,0);
  FUN_0040ee30();
  if ((undefined *)**(undefined4 **)(iVar2 + 0x2c) == &DAT_015d12c4) {
    FUN_00464710();
  }
  else {
    (*(code *)PTR_FUN_01c34ce0)();
  }
  FUN_00dafb60(2,0);
  FUN_00dafb60(2,0);
  iVar4 = FUN_00eae9a0();
  puVar6 = &DAT_01571588;
  puVar7 = (undefined1 *)(iVar4 + 0x154);
  for (iVar5 = 0x48; iVar5 != 0; iVar5 = iVar5 + -1) {
    *puVar7 = *puVar6;
    puVar6 = puVar6 + 1;
    puVar7 = puVar7 + 1;
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
  *(undefined8 *)(iVar4 + 4) = DAT_018d1458;
  *(undefined4 *)(iVar4 + 0xc) = 0;
  FUN_00e46ee0();
  FUN_00dafb60(2,0);
  iVar4 = FUN_00eae9a0();
  *(undefined ***)(iVar4 + 0xc) = &PTR_DAT_01b67f70;
  FUN_00eaebca();
  uVar3 = FUN_005a4920();
  *(undefined4 *)(iVar2 + 0x24) = 0;
  FUN_00409ef0(0,uVar3);
  FUN_00dda510();
  FUN_00cbb7d0();
  FUN_0040f100();
  iVar4 = FUN_00eae9a0();
  puVar6 = &DAT_01571588;
  puVar7 = (undefined1 *)(iVar4 + 0x154);
  for (iVar5 = 0x48; iVar5 != 0; iVar5 = iVar5 + -1) {
    *puVar7 = *puVar6;
    puVar6 = puVar6 + 1;
    puVar7 = puVar7 + 1;
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
  FUN_00d30c30(2,DAT_018d1460,DAT_018d1460,DAT_018d1460,DAT_018d1460);
  FUN_00d36370(2,0);
  FUN_00d37210(2,0);
  iVar4 = FUN_00eae9a0();
  uVar3 = FUN_00468480();
  *(undefined4 *)(iVar4 + 0x10) = uVar3;
  *(undefined8 *)(iVar4 + 4) = DAT_018d1458;
  *(undefined4 *)(iVar4 + 0xc) = 0;
  FUN_00e46ee0();
  FUN_00dafb60(2,0);
  iVar4 = FUN_00eae9a0();
  *(undefined ***)(iVar4 + 0xc) = &PTR_DAT_01b67fc4;
  FUN_00eaebca();
  uVar3 = FUN_005a4920();
  *(undefined4 *)(iVar2 + 0x24) = 0;
  FUN_00409ef0(0,uVar3);
  FUN_00dda510();
  FUN_00cbb7d0();
  FUN_0040f100();
  FUN_00cbb7d0();
  FUN_0040f100();
  iVar4 = FUN_00eae9a0();
  FUN_00523850();
  *(int *)(iVar4 + 100) = *(int *)(iVar4 + 100) + 1;
  FUN_00cb1210();
  FUN_00de4130(2,0);
  FUN_00eae9a0();
  uVar3 = FUN_00eaebef();
  FUN_00409ef0(0,uVar3);
  uVar3 = FUN_00eae9a0();
  if (PTR_FUN_01c21270 != (undefined *)0x0) {
    FUN_00e8d845();
  }
  FUN_00eaebca();
  FUN_00409ef0(0,uVar3);
  FUN_00eae9a0();
  uVar3 = FUN_00eaebef();
  FUN_00409ef0(0,uVar3);
  FUN_00eae9a0();
  FUN_00eaebef();
  FUN_005937b0();
  FUN_00eae9a0();
  if (PTR_FUN_01c213a4 != (undefined *)0x0) {
    FUN_00e8dd2f();
  }
  uVar3 = FUN_00eaebef();
  FUN_00409ef0(0,uVar3);
  FUN_00eae9a0();
  uVar3 = FUN_00eaebef();
  FUN_00409ef0(0,uVar3);
  FUN_0040f100();
  iVar4 = FUN_00eae9a0();
  puVar6 = &DAT_01571588;
  puVar7 = (undefined1 *)(iVar4 + 0x154);
  for (iVar5 = 0x48; iVar5 != 0; iVar5 = iVar5 + -1) {
    *puVar7 = *puVar6;
    puVar6 = puVar6 + 1;
    puVar7 = puVar7 + 1;
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
  FUN_00de4130(2,0);
  FUN_0040ee30();
  if ((undefined *)**(undefined4 **)(iVar2 + 0x2c) == &DAT_015d12c4) {
    FUN_00464710();
  }
  else {
    (*(code *)PTR_FUN_01c34ce0)();
  }
  FUN_00dafb60(2,0);
  FUN_00d36370(2,0);
  FUN_00d37210(2,0);
  FUN_00dafb60(2,0);
  iVar4 = FUN_00eae9a0();
  *(undefined ***)(iVar4 + 0xc) = &PTR_DAT_01b6801c;
  FUN_00eaec5e();
  uVar3 = FUN_005a4920();
  *(undefined4 *)(iVar2 + 0x24) = 0;
  FUN_00409ef0(0,uVar3);
  FUN_00dda510();
  FUN_00cbb7d0();
  FUN_0040f100();
  iVar4 = FUN_00eae9a0();
  puVar6 = &DAT_01571588;
  puVar7 = (undefined1 *)(iVar4 + 0x154);
  for (iVar5 = 0x48; iVar5 != 0; iVar5 = iVar5 + -1) {
    *puVar7 = *puVar6;
    puVar6 = puVar6 + 1;
    puVar7 = puVar7 + 1;
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
    (*(code *)PTR_FUN_01c34ce0)();
  }
  FUN_00de4130(2,1);
  FUN_00dda510();
  FUN_00d37210(2,0);
  iVar4 = FUN_00eae9a0();
  *(undefined ***)(iVar4 + 0xc) = &PTR_DAT_01b684e0;
  FUN_00eaebef();
  uVar3 = FUN_005a4920();
  *(undefined4 *)(iVar2 + 0x24) = 0;
  FUN_00409ef0(0,uVar3);
  FUN_00cbb7d0();
  FUN_0040f100();
  FUN_00cbb7d0();
  FUN_0040f100();
  FUN_00cbb7d0();
  (*(code *)PTR_FUN_01c3bd78)();
  return uVar1;
}

