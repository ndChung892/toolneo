/* Address: 005a0ea0 | Ghidra name: FUN_005a0ea0 */

undefined4 FUN_005a0ea0(void)

{
  int *piVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 uVar4;
  int iVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  int iVar8;
  undefined1 *puVar9;
  undefined1 *puVar10;
  undefined4 in_stack_fffffd94;
  undefined8 uVar11;
  
  iVar3 = FUN_00594df0();
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
  uVar2 = *(undefined4 *)(iVar3 + 8);
  (*(code *)PTR_FUN_01c35928)();
  iVar5 = *(int *)(iVar3 + 0x18);
  *(int *)(iVar5 + 0xc) = *(int *)(iVar5 + 0xc) + 1;
  if (*(uint *)(iVar5 + 8) < *(uint *)(*(int *)(iVar5 + 4) + 4)) {
    *(uint *)(iVar5 + 8) = *(uint *)(iVar5 + 8) + 1;
    FUN_0099b2e0();
  }
  else {
    FUN_00ccd380();
  }
  FUN_00eaec39();
  FUN_0040ee30();
  if ((undefined *)**(undefined4 **)(iVar3 + 0x2c) == &DAT_015d12c4) {
    FUN_00464710();
  }
  else {
    (*(code *)PTR_FUN_01c34d10)();
  }
  uVar4 = FUN_00eae9a0();
  if (PTR_FUN_01c21234 != (undefined *)0x0) {
    FUN_00e8d768();
  }
  if (PTR_FUN_01c21414 != (undefined *)0x0) {
    FUN_00e8defa();
  }
  FUN_00eaebca();
  FUN_00409ef0(0,uVar4);
  FUN_00eae9a0();
  uVar4 = FUN_00eaec5e();
  FUN_00409ef0(0,uVar4);
  FUN_00eae9a0();
  uVar4 = FUN_00eaec5e();
  FUN_00409ef0(0,uVar4);
  FUN_00eae9a0();
  uVar4 = FUN_00eaec5e();
  FUN_00409ef0(0,uVar4);
  iVar5 = FUN_00eae9a0();
  if (PTR_FUN_01c212b4 != (undefined *)0x0) {
    FUN_00e8c390();
  }
  FUN_004f8360();
  *(int *)(iVar5 + 100) = *(int *)(iVar5 + 100) + 1;
  if (PTR_FUN_01c21294 != (undefined *)0x0) {
    FUN_00e8d8cd();
  }
  FUN_00e46ee0();
  iVar5 = *(int *)(iVar3 + 0x18);
  *(int *)(iVar5 + 0xc) = *(int *)(iVar5 + 0xc) + 1;
  if (*(uint *)(iVar5 + 8) < *(uint *)(*(int *)(iVar5 + 4) + 4)) {
    *(uint *)(iVar5 + 8) = *(uint *)(iVar5 + 8) + 1;
    FUN_0099b2e0();
  }
  else {
    FUN_00ccd380();
  }
  FUN_00eaec5e();
  FUN_00eae9a0();
  FUN_00cb6770();
  FUN_00ccd1f0();
  FUN_004e7fd0(0);
  iVar5 = FUN_00eae9a0();
  if (PTR_FUN_01c21254 != (undefined *)0x0) {
    FUN_00e8c2dc();
  }
  if (PTR_FUN_01c21298 != (undefined *)0x0) {
    FUN_00e8c363();
  }
  *(undefined4 *)(iVar5 + 0x44) = 0xffffffff;
  FUN_004098c0();
  if (PTR_FUN_01c21254 != (undefined *)0x0) {
    FUN_00e8d7df();
  }
  FUN_00d68380();
  FUN_00cb1210();
  FUN_004e7fd0(DAT_018d1508);
  iVar5 = FUN_00eae9a0();
  *(undefined4 *)(iVar5 + 0x44) = 0xffffffff;
  FUN_004098c0();
  FUN_00d68380();
  FUN_00cb1210();
  FUN_004e7fd0(0);
  iVar5 = FUN_00eae9a0();
  *(undefined4 *)(iVar5 + 0x44) = 0xffffffff;
  FUN_004098c0();
  FUN_00d68380();
  FUN_00cb1210();
  FUN_004e0300();
  FUN_00eae9a0();
  FUN_00cb6770();
  FUN_00ccd1f0();
  FUN_004e7fd0(0);
  iVar5 = FUN_00eae9a0();
  if (PTR_FUN_01c21324 != (undefined *)0x0) {
    FUN_00e8c462();
  }
  *(undefined4 *)(iVar5 + 0x44) = 0xffffffff;
  FUN_004098c0();
  if (PTR_FUN_01c21324 != (undefined *)0x0) {
    FUN_00e8db20();
  }
  FUN_00d68410(0,0,0);
  FUN_00cb1210();
  FUN_004e7fd0(DAT_018d1508);
  iVar5 = FUN_00eae9a0();
  *(undefined4 *)(iVar5 + 0x44) = 0xffffffff;
  FUN_004098c0();
  FUN_00d68410(0,0,0);
  FUN_00cb1210();
  FUN_004e7fd0(0);
  iVar5 = FUN_00eae9a0();
  *(undefined4 *)(iVar5 + 0x44) = 0xffffffff;
  FUN_004098c0();
  FUN_00d68410(0,0,0);
  FUN_00cb1210();
  FUN_004e7fd0(0);
  iVar5 = FUN_00eae9a0();
  *(undefined4 *)(iVar5 + 0x44) = 0xffffffff;
  FUN_004098c0();
  FUN_00d68410(0,0,0);
  FUN_00cb1210();
  FUN_004e03c0();
  if (PTR_FUN_01c20fa0 != (undefined *)0x0) {
    FUN_00e8cf4e();
  }
  uVar4 = DAT_01c27e88;
  FUN_00dafb60(2,1);
  iVar5 = FUN_00eae9a0();
  FUN_005828f0();
  *(int *)(iVar5 + 100) = *(int *)(iVar5 + 100) + 1;
  FUN_00cb1210();
  iVar5 = *(int *)(iVar3 + 0x18);
  *(int *)(iVar5 + 0xc) = *(int *)(iVar5 + 0xc) + 1;
  if (*(uint *)(iVar5 + 8) < *(uint *)(*(int *)(iVar5 + 4) + 4)) {
    *(uint *)(iVar5 + 8) = *(uint *)(iVar5 + 8) + 1;
    FUN_0099b2e0();
  }
  else {
    FUN_00ccd380();
  }
  FUN_00eaebca();
  FUN_0040ee30();
  if ((undefined *)**(undefined4 **)(iVar3 + 0x2c) == &DAT_015d12c4) {
    FUN_00464710();
  }
  else {
    (*(code *)PTR_FUN_01c34d10)();
  }
  if (PTR_FUN_01c20f9c != (undefined *)0x0) {
    FUN_00e8cf3d();
  }
  FUN_00eaebef();
  FUN_005a4be0();
  *(undefined4 *)(iVar3 + 0x24) = 0;
  FUN_00593900();
  FUN_00cbb7d0();
  FUN_0040f100();
  iVar5 = FUN_00eae9a0();
  FUN_004f8360();
  *(int *)(iVar5 + 100) = *(int *)(iVar5 + 100) + 1;
  FUN_00cb1210();
  FUN_0040ee30();
  if ((undefined *)**(undefined4 **)(iVar3 + 0x2c) == &DAT_015d12c4) {
    FUN_00464710();
  }
  else {
    (*(code *)PTR_FUN_01c34d10)();
  }
  if (PTR_FUN_01c212b4 != (undefined *)0x0) {
    FUN_00e8d944();
  }
  FUN_00de4130(2,1);
  FUN_00de4130(2,0);
  FUN_00de4130(2,2);
  FUN_0040f100();
  iVar5 = FUN_00eae9a0();
  if (PTR_FUN_01c2139c != (undefined *)0x0) {
    FUN_00e8c561();
  }
  puVar9 = &DAT_01571588;
  puVar10 = (undefined1 *)(iVar5 + 0x154);
  for (iVar8 = 0x48; iVar8 != 0; iVar8 = iVar8 + -1) {
    *puVar10 = *puVar9;
    puVar9 = puVar9 + 1;
    puVar10 = puVar10 + 1;
  }
  FUN_00445bb0();
  *(int *)(iVar5 + 100) = *(int *)(iVar5 + 100) + 1;
  FUN_00cb1210();
  iVar5 = *(int *)(iVar3 + 0x18);
  *(int *)(iVar5 + 0xc) = *(int *)(iVar5 + 0xc) + 1;
  if (*(uint *)(iVar5 + 8) < *(uint *)(*(int *)(iVar5 + 4) + 4)) {
    *(uint *)(iVar5 + 8) = *(uint *)(iVar5 + 8) + 1;
    FUN_0099b2e0();
  }
  else {
    FUN_00ccd380();
  }
  FUN_00eaec39();
  FUN_0040ee30();
  if ((undefined *)**(undefined4 **)(iVar3 + 0x2c) == &DAT_015d12c4) {
    FUN_00464710();
  }
  else {
    (*(code *)PTR_FUN_01c34d10)();
  }
  FUN_00de4130(2,0);
  FUN_00de4130(2,3);
  FUN_00de4130(2,0);
  if (PTR_FUN_01c21040 != (undefined *)0x0) {
    FUN_00e8d0e6();
  }
  FUN_00d37210(2,3);
  FUN_00dda510();
  iVar5 = FUN_00eae9a0();
  if (PTR_FUN_01c213a0 != (undefined *)0x0) {
    FUN_00e8dd1e();
  }
  *(undefined ***)(iVar5 + 0xc) = &PTR_DAT_01b68534;
  FUN_00eaebca();
  uVar6 = FUN_005a4920();
  *(undefined4 *)(iVar3 + 0x24) = 0;
  FUN_00409ef0(0,uVar6);
  FUN_00cbb7d0();
  FUN_0040f100();
  iVar5 = FUN_00eae9a0();
  FUN_00592aa0();
  *(int *)(iVar5 + 100) = *(int *)(iVar5 + 100) + 1;
  FUN_00cb1210();
  iVar5 = *(int *)(iVar3 + 0x18);
  *(int *)(iVar5 + 0xc) = *(int *)(iVar5 + 0xc) + 1;
  if (*(uint *)(iVar5 + 8) < *(uint *)(*(int *)(iVar5 + 4) + 4)) {
    *(uint *)(iVar5 + 8) = *(uint *)(iVar5 + 8) + 1;
    FUN_0099b2e0();
  }
  else {
    FUN_00ccd380();
  }
  FUN_00eaec39();
  FUN_0040ee30();
  if ((undefined *)**(undefined4 **)(iVar3 + 0x2c) == &DAT_015d12c4) {
    FUN_00464710();
  }
  else {
    (*(code *)PTR_FUN_01c34d10)();
  }
  FUN_00de4130(2,1);
  FUN_00de4130(2,0);
  uVar6 = FUN_00eae9a0();
  if (PTR_FUN_01c21328 != (undefined *)0x0) {
    FUN_00e8db31();
  }
  uVar11 = CONCAT44(DAT_01c28268,in_stack_fffffd94);
  if (PTR_FUN_01c21454 != (undefined *)0x0) {
    FUN_00e8df93();
  }
  FUN_00eaebca();
  FUN_00409ef0(0,uVar6);
  iVar5 = FUN_00eae9a0();
  FUN_004460b0();
  if (PTR_FUN_01c210a4 != (undefined *)0x0) {
    FUN_00e8c165();
  }
  *(undefined4 *)(iVar5 + 0x84) = DAT_01c210a8;
  if (PTR_FUN_01c20f9c != (undefined *)0x0) {
    FUN_00e8c0cf();
  }
  *(undefined1 *)(iVar5 + 0x24) = 1;
  FUN_004098c0();
  *(undefined4 *)(iVar5 + 0x30) = 0;
  *(int *)(iVar5 + 100) = *(int *)(iVar5 + 100) + 1;
  iVar8 = *(int *)(iVar3 + 0x18);
  *(int *)(iVar8 + 0xc) = *(int *)(iVar8 + 0xc) + 1;
  if (*(uint *)(iVar8 + 8) < *(uint *)(*(int *)(iVar8 + 4) + 4)) {
    *(uint *)(iVar8 + 8) = *(uint *)(iVar8 + 8) + 1;
    FUN_0099b2e0();
  }
  else {
    FUN_00ccd380();
  }
  FUN_00eaec5e();
  if (PTR_FUN_01c210a4 != (undefined *)0x0) {
    FUN_00e8d207();
  }
  FUN_00daffc0(1,iVar5 + 0x90);
  FUN_00daffc0(1,iVar5 + 0x91);
  iVar5 = FUN_00eae9a0();
  iVar8 = FUN_00eae9a0();
  *(undefined ***)(iVar8 + 4) = &PTR_DAT_01c137e4;
  FUN_00eaebca();
  FUN_00eae9a0();
  iVar5 = *(int *)(iVar5 + 4);
  iVar8 = FUN_00eaebef();
  *(undefined ***)(iVar8 + 8) = &PTR_DAT_01b99e78;
  piVar1 = (int *)(iVar5 + 0xc);
  *piVar1 = *piVar1 + 1;
  FUN_00ccd380();
  uVar6 = FUN_00eae9a0();
  FUN_00ea3a1b(uVar11);
  FUN_004588d0(0,uVar6);
  FUN_00eae9a0();
  FUN_00ccde10();
  FUN_00eaebca();
  FUN_00eae9a0();
  FUN_00458150();
  FUN_00eaebca();
  FUN_00eaebca();
  uVar6 = FUN_005a4840();
  *(undefined4 *)(iVar3 + 0x24) = 0;
  FUN_00409ef0(0,uVar6);
  FUN_00cbb7d0();
  FUN_0040f100();
  FUN_00453e60();
  FUN_00cbb7d0();
  FUN_0040f100();
  iVar5 = FUN_00eae9a0();
  puVar9 = &DAT_01571588;
  puVar10 = (undefined1 *)(iVar5 + 0x154);
  for (iVar8 = 0x48; iVar8 != 0; iVar8 = iVar8 + -1) {
    *puVar10 = *puVar9;
    puVar9 = puVar9 + 1;
    puVar10 = puVar10 + 1;
  }
  FUN_00445bb0();
  *(int *)(iVar5 + 100) = *(int *)(iVar5 + 100) + 1;
  FUN_00cb1210();
  iVar5 = *(int *)(iVar3 + 0x18);
  *(int *)(iVar5 + 0xc) = *(int *)(iVar5 + 0xc) + 1;
  if (*(uint *)(iVar5 + 8) < *(uint *)(*(int *)(iVar5 + 4) + 4)) {
    *(uint *)(iVar5 + 8) = *(uint *)(iVar5 + 8) + 1;
    FUN_0099b2e0();
  }
  else {
    FUN_00ccd380();
  }
  FUN_00eaec39();
  FUN_0040ee30();
  if ((undefined *)**(undefined4 **)(iVar3 + 0x2c) == &DAT_015d12c4) {
    FUN_00464710();
  }
  else {
    (*(code *)PTR_FUN_01c34d10)();
  }
  iVar5 = FUN_00eae9a0();
  *(undefined ***)(iVar5 + 0xc) = &PTR_DAT_01b68c08;
  FUN_00eaebef();
  uVar6 = FUN_005a4920();
  *(undefined4 *)(iVar3 + 0x24) = 0;
  FUN_00409ef0(0,uVar6);
  FUN_00de4130(2,2);
  FUN_00de4130(2,2);
  FUN_00cbb7d0();
  FUN_0040f100();
  iVar5 = FUN_00eae9a0();
  if (PTR_FUN_01c2140c != (undefined *)0x0) {
    FUN_00e8c651();
  }
  if (PTR_FUN_01c21414 != (undefined *)0x0) {
    FUN_00e8c66f();
  }
  FUN_00445bb0();
  if (PTR_FUN_01c2140c != (undefined *)0x0) {
    FUN_00e8ded8();
  }
  uVar6 = DAT_01c28344;
  FUN_00d38000(uVar4,DAT_01c28344);
  FUN_00545f10();
  *(int *)(iVar5 + 100) = *(int *)(iVar5 + 100) + 1;
  FUN_00cb1210();
  iVar5 = *(int *)(iVar3 + 0x18);
  *(int *)(iVar5 + 0xc) = *(int *)(iVar5 + 0xc) + 1;
  if (*(uint *)(iVar5 + 8) < *(uint *)(*(int *)(iVar5 + 4) + 4)) {
    *(uint *)(iVar5 + 8) = *(uint *)(iVar5 + 8) + 1;
    FUN_0099b2e0();
  }
  else {
    FUN_00ccd380();
  }
  FUN_00eaec39();
  FUN_0040ee30();
  if ((undefined *)**(undefined4 **)(iVar3 + 0x2c) == &DAT_015d12c4) {
    FUN_00464710();
  }
  else {
    (*(code *)PTR_FUN_01c34d10)();
  }
  FUN_00d380b0(2,1);
  FUN_00de4130(2,2);
  FUN_00de4130(2,1);
  iVar5 = FUN_00eae9a0();
  *(undefined ***)(iVar5 + 0xc) = &PTR_DAT_01ba67dc;
  FUN_00eaebef();
  uVar7 = FUN_005a4920();
  *(undefined4 *)(iVar3 + 0x24) = 0;
  FUN_00409ef0(0,uVar7);
  FUN_00cbb7d0();
  FUN_0040f100();
  iVar5 = FUN_00eae9a0();
  FUN_004f8360();
  *(int *)(iVar5 + 100) = *(int *)(iVar5 + 100) + 1;
  FUN_00cb1210();
  iVar5 = *(int *)(iVar3 + 0x18);
  *(int *)(iVar5 + 0xc) = *(int *)(iVar5 + 0xc) + 1;
  if (*(uint *)(iVar5 + 8) < *(uint *)(*(int *)(iVar5 + 4) + 4)) {
    *(uint *)(iVar5 + 8) = *(uint *)(iVar5 + 8) + 1;
    FUN_0099b2e0();
  }
  else {
    FUN_00ccd380();
  }
  FUN_00eaec39();
  FUN_00de4130(2,1);
  FUN_00de4130(2,2);
  FUN_00eae9a0();
  FUN_00cb6770();
  FUN_00ccd1f0();
  FUN_004e7fd0(0);
  iVar5 = FUN_00eae9a0();
  *(undefined4 *)(iVar5 + 0x44) = 0xffffffff;
  FUN_004098c0();
  FUN_00d68380();
  FUN_00cb1210();
  FUN_004e7fd0(DAT_018d1508);
  iVar5 = FUN_00eae9a0();
  *(undefined4 *)(iVar5 + 0x44) = 0xffffffff;
  FUN_004098c0();
  FUN_00d68380();
  FUN_00cb1210();
  FUN_004e0300();
  iVar5 = FUN_00eae9a0();
  puVar9 = &DAT_01571588;
  puVar10 = (undefined1 *)(iVar5 + 0x154);
  for (iVar8 = 0x48; iVar8 != 0; iVar8 = iVar8 + -1) {
    *puVar10 = *puVar9;
    puVar9 = puVar9 + 1;
    puVar10 = puVar10 + 1;
  }
  FUN_00445bb0();
  *(int *)(iVar5 + 100) = *(int *)(iVar5 + 100) + 1;
  FUN_00cb1210();
  FUN_0040ee30();
  if ((undefined *)**(undefined4 **)(iVar3 + 0x2c) == &DAT_015d12c4) {
    FUN_00464710();
  }
  else {
    (*(code *)PTR_FUN_01c34d10)();
  }
  FUN_0040f100();
  iVar5 = FUN_00eae9a0();
  FUN_00445bb0();
  FUN_00d38000();
  FUN_00545f10();
  *(int *)(iVar5 + 100) = *(int *)(iVar5 + 100) + 1;
  FUN_00cb1210();
  iVar5 = *(int *)(iVar3 + 0x18);
  *(int *)(iVar5 + 0xc) = *(int *)(iVar5 + 0xc) + 1;
  if (*(uint *)(iVar5 + 8) < *(uint *)(*(int *)(iVar5 + 4) + 4)) {
    *(uint *)(iVar5 + 8) = *(uint *)(iVar5 + 8) + 1;
    FUN_0099b2e0();
  }
  else {
    FUN_00ccd380();
  }
  FUN_00eaec39();
  FUN_0040ee30();
  if ((undefined *)**(undefined4 **)(iVar3 + 0x2c) == &DAT_015d12c4) {
    FUN_00464710();
  }
  else {
    (*(code *)PTR_FUN_01c34d10)();
  }
  FUN_00de4130(2,1);
  FUN_00d380b0(2,0);
  iVar5 = FUN_00eae9a0();
  *(undefined ***)(iVar5 + 0xc) = &PTR_DAT_01ba67dc;
  FUN_00eaebef();
  uVar7 = FUN_005a4920();
  *(undefined4 *)(iVar3 + 0x24) = 0;
  FUN_00409ef0(0,uVar7);
  FUN_00cbb7d0();
  FUN_0040f100();
  FUN_00cbb7d0();
  FUN_0040f100();
  iVar5 = FUN_00eae9a0();
  FUN_00eae9a0();
  FUN_00eaebca();
  FUN_00445bb0();
  *(int *)(iVar5 + 100) = *(int *)(iVar5 + 100) + 1;
  FUN_00cb1210();
  iVar5 = *(int *)(iVar3 + 0x18);
  *(int *)(iVar5 + 0xc) = *(int *)(iVar5 + 0xc) + 1;
  if (*(uint *)(iVar5 + 8) < *(uint *)(*(int *)(iVar5 + 4) + 4)) {
    *(uint *)(iVar5 + 8) = *(uint *)(iVar5 + 8) + 1;
    FUN_0099b2e0();
  }
  else {
    FUN_00ccd380();
  }
  FUN_00eaec39();
  FUN_0040ee30();
  if ((undefined *)**(undefined4 **)(iVar3 + 0x2c) == &DAT_015d12c4) {
    FUN_00464710();
  }
  else {
    (*(code *)PTR_FUN_01c34d10)();
  }
  FUN_00de4130(2,3);
  FUN_00de4130(2,0);
  FUN_00de4130(2,0);
  FUN_00de4130(2,4);
  if (PTR_FUN_01c21078 != (undefined *)0x0) {
    FUN_00e8d16e();
  }
  FUN_00dafb60(2,0);
  FUN_00d36370(2,0);
  FUN_00d37210(2,0);
  FUN_00d24bf0(2,DAT_018d1510,DAT_018d1510,DAT_018d1510,DAT_018d1510);
  iVar5 = FUN_00eae9a0();
  *(undefined ***)(iVar5 + 0xc) = &PTR_DAT_01b68428;
  FUN_00eaebef();
  uVar7 = FUN_005a4920();
  *(undefined4 *)(iVar3 + 0x24) = 0;
  FUN_00409ef0(0,uVar7);
  FUN_00eae9a0();
  iVar5 = FUN_00eae9a0();
  *(undefined ***)(iVar5 + 4) = &PTR_DAT_01c137e4;
  FUN_00eaebca();
  iVar5 = FUN_00458870();
  iVar8 = FUN_00eae9a0();
  iVar5 = *(int *)(iVar5 + 4);
  *(undefined ***)(iVar8 + 4) = &PTR_DAT_01bfd83c;
  *(undefined4 *)(iVar8 + 8) = 0;
  *(int *)(iVar5 + 0xc) = *(int *)(iVar5 + 0xc) + 1;
  if (*(uint *)(iVar5 + 8) < *(uint *)(*(int *)(iVar5 + 4) + 4)) {
    *(uint *)(iVar5 + 8) = *(uint *)(iVar5 + 8) + 1;
    FUN_0099b2e0();
  }
  else {
    FUN_00ccd380();
  }
  uVar7 = FUN_00eae9a0();
  FUN_00ea3a1b(uVar4,uVar6);
  FUN_004588d0(0,uVar7);
  FUN_00eae9a0();
  FUN_00ccde10();
  FUN_00eaebca();
  FUN_00eae9a0();
  FUN_00458150();
  FUN_00eaebca();
  FUN_00eaebca();
  uVar4 = FUN_005a4840();
  *(undefined4 *)(iVar3 + 0x24) = 0;
  FUN_00409ef0(0,uVar4);
  FUN_00cbb7d0();
  FUN_0040f100();
  FUN_00cbb7d0();
  FUN_0040f100();
  FUN_00cbb7d0();
  (*(code *)PTR_FUN_01c3bdc0)();
  return uVar2;
}

