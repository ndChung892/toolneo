/* Address: 006579f0 | Ghidra name: FUN_006579f0 */

undefined4 FUN_006579f0(void)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  undefined4 uVar5;
  undefined4 extraout_ECX;
  int iVar6;
  undefined4 extraout_ECX_00;
  undefined1 *puVar7;
  undefined1 *puVar8;
  undefined4 local_58;
  undefined4 uStack_54;
  undefined4 uStack_50;
  undefined4 uStack_4c;
  
  iVar3 = FUN_005ebf70();
  FUN_00eae9a0();
  if (PTR_FUN_01c212b4 != (undefined *)0x0) {
    FUN_00e8c390();
  }
  FUN_004f8360();
  FUN_00eaec39();
  uVar1 = *(undefined4 *)(iVar3 + 8);
  (*(code *)PTR_FUN_01c35bf8)();
  iVar4 = *(int *)(iVar3 + 0x18);
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
  if ((undefined *)**(undefined4 **)(iVar3 + 0x2c) == &DAT_015d12c4) {
    FUN_00464710();
  }
  else {
    (*(code *)PTR_FUN_01c34f20)();
  }
  iVar4 = FUN_00eae9a0();
  if (PTR_FUN_01c21234 != (undefined *)0x0) {
    FUN_00e8c264();
  }
  FUN_00eae9a0();
  FUN_00eaebca();
  if (PTR_FUN_01c21294 != (undefined *)0x0) {
    FUN_00e8c354();
  }
  FUN_00445bb0();
  *(int *)(iVar4 + 100) = *(int *)(iVar4 + 100) + 1;
  FUN_00cb1210();
  iVar4 = *(int *)(iVar3 + 0x18);
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
  if ((undefined *)**(undefined4 **)(iVar3 + 0x2c) == &DAT_015d12c4) {
    FUN_00464710();
  }
  else {
    (*(code *)PTR_FUN_01c34f20)();
  }
  FUN_00eae9a0();
  if (PTR_FUN_01c21234 != (undefined *)0x0) {
    FUN_00e8d768();
  }
  if (PTR_FUN_01c21414 != (undefined *)0x0) {
    FUN_00e8defa();
  }
  FUN_00eaebca();
  FUN_00409ef0(0,extraout_ECX);
  FUN_00eae9a0();
  uVar5 = FUN_00eaebef();
  FUN_00409ef0(0,uVar5);
  iVar4 = FUN_00eae9a0();
  FUN_004f8360();
  *(int *)(iVar4 + 100) = *(int *)(iVar4 + 100) + 1;
  if (PTR_FUN_01c21294 != (undefined *)0x0) {
    FUN_00e8d8cd();
  }
  FUN_00e46ee0(&PTR_DAT_0153cfb8,0,iVar4);
  iVar4 = *(int *)(iVar3 + 0x18);
  *(int *)(iVar4 + 0xc) = *(int *)(iVar4 + 0xc) + 1;
  if (*(uint *)(iVar4 + 8) < *(uint *)(*(int *)(iVar4 + 4) + 4)) {
    *(uint *)(iVar4 + 8) = *(uint *)(iVar4 + 8) + 1;
    FUN_0099b2e0();
  }
  else {
    FUN_00ccd380();
  }
  FUN_00eaebca();
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
  FUN_00d68380(0,0,0,0);
  FUN_00cb1210();
  FUN_004e7fd0(DAT_018d2278);
  iVar4 = FUN_00eae9a0();
  *(undefined4 *)(iVar4 + 0x44) = 0xffffffff;
  FUN_004098c0();
  FUN_00d68380(0,0,0,0);
  FUN_00cb1210();
  FUN_004e7fd0(0);
  iVar4 = FUN_00eae9a0();
  *(undefined4 *)(iVar4 + 0x44) = 0xffffffff;
  FUN_004098c0();
  FUN_00d68380(0,0,0,0);
  FUN_00cb1210();
  FUN_004e0300();
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
  iVar4 = *(int *)(iVar3 + 0x18);
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
  if ((undefined *)**(undefined4 **)(iVar3 + 0x2c) == &DAT_015d12c4) {
    FUN_00464710();
  }
  else {
    (*(code *)PTR_FUN_01c34f20)();
  }
  iVar4 = FUN_00eae9a0();
  if (PTR_FUN_01c213a0 != (undefined *)0x0) {
    FUN_00e8dd1e();
  }
  *(undefined ***)(iVar4 + 0xc) = &PTR_DAT_01ba696c;
  FUN_00eaebef();
  uVar5 = FUN_005a4920();
  *(undefined4 *)(iVar3 + 0x24) = 0;
  FUN_00409ef0(0,uVar5);
  iVar4 = FUN_00eae9a0();
  *(undefined ***)(iVar4 + 0xc) = &PTR_DAT_01ba69e8;
  FUN_00eaebef();
  uVar5 = FUN_005a4920();
  *(undefined4 *)(iVar3 + 0x24) = 0;
  FUN_00409ef0(0,uVar5);
  iVar4 = FUN_00eae9a0();
  *(undefined ***)(iVar4 + 0xc) = &PTR_DAT_01ba6918;
  FUN_00eaebef();
  uVar5 = FUN_005a4920();
  *(undefined4 *)(iVar3 + 0x24) = 0;
  FUN_00409ef0(0,uVar5);
  if (PTR_FUN_01c20fa0 != (undefined *)0x0) {
    FUN_00e8cf4e();
  }
  iVar4 = DAT_01c27e88;
  FUN_00dda510(2,0);
  if (PTR_FUN_01c212b4 != (undefined *)0x0) {
    FUN_00e8d944();
  }
  FUN_00de4130(2,3);
  uVar5 = FUN_00eae9a0();
  if (PTR_FUN_01c211ec != (undefined *)0x0) {
    FUN_00e8d636();
  }
  FUN_004a4750();
  iVar6 = FUN_00eae9a0();
  if (PTR_FUN_01c23e80 != (undefined *)0x0) {
    FUN_00e8cec1();
  }
  FUN_004a41a0();
  uVar2 = *(undefined4 *)(iVar4 + 0x14);
  if (PTR_FUN_01c211f8 != (undefined *)0x0) {
    FUN_00e8d669();
  }
  FUN_00e47520(&PTR_DAT_015329c0,uVar2,iVar6 + 0x20);
  FUN_00df25a0(1000000,0,iVar6 + 0x24);
  FUN_00cb1210();
  FUN_00e46ee0(&PTR_DAT_0153b9cc,2,uVar5);
  FUN_00cbbc50();
  FUN_0040f100();
  iVar4 = FUN_00eae9a0();
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
  *(int *)(iVar4 + 100) = *(int *)(iVar4 + 100) + 1;
  FUN_00cb1210();
  iVar4 = *(int *)(iVar3 + 0x18);
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
  if ((undefined *)**(undefined4 **)(iVar3 + 0x2c) == &DAT_015d12c4) {
    FUN_00464710();
  }
  else {
    (*(code *)PTR_FUN_01c34f20)();
  }
  if (PTR_FUN_01c20f9c != (undefined *)0x0) {
    FUN_00e8cf3d();
  }
  FUN_00eaebef();
  FUN_005a4be0();
  *(undefined4 *)(iVar3 + 0x24) = 0;
  FUN_005e2720();
  if (PTR_FUN_01c21040 != (undefined *)0x0) {
    FUN_00e8d0e6();
  }
  FUN_00d37210(2,2);
  FUN_00de4130(2,0);
  if (PTR_FUN_01c21078 != (undefined *)0x0) {
    FUN_00e8d16e();
  }
  FUN_00dafb60(2,0);
  iVar4 = FUN_00eae9a0();
  *(undefined ***)(iVar4 + 0xc) = &PTR_DAT_01ba67dc;
  FUN_00eaec5e();
  uVar5 = FUN_005a4920();
  *(undefined4 *)(iVar3 + 0x24) = 0;
  FUN_00409ef0(0,uVar5);
  iVar4 = FUN_00eae9a0();
  *(undefined ***)(iVar4 + 0xc) = &PTR_DAT_01ba67dc;
  FUN_00eaebef();
  uVar5 = FUN_005a4920();
  *(undefined4 *)(iVar3 + 0x24) = 0;
  FUN_00409ef0(0,uVar5);
  if (PTR_FUN_01c2122c != (undefined *)0x0) {
    FUN_00e8d746();
  }
  FUN_00e46ee0(&PTR_DAT_01549c40,2,&PTR_DAT_01b5ecc8);
  iVar4 = FUN_00eae9a0();
  if (PTR_FUN_01c21308 != (undefined *)0x0) {
    FUN_00e8c453();
  }
  FUN_00445bb0();
  *(int *)(iVar4 + 100) = *(int *)(iVar4 + 100) + 1;
  if (PTR_FUN_01c21270 != (undefined *)0x0) {
    FUN_00e8d845();
  }
  FUN_00e46ee0(&PTR_DAT_01548570,0,iVar4);
  iVar4 = *(int *)(iVar3 + 0x18);
  *(int *)(iVar4 + 0xc) = *(int *)(iVar4 + 0xc) + 1;
  if (*(uint *)(iVar4 + 8) < *(uint *)(*(int *)(iVar4 + 4) + 4)) {
    *(uint *)(iVar4 + 8) = *(uint *)(iVar4 + 8) + 1;
    FUN_0099b2e0();
  }
  else {
    FUN_00ccd380();
  }
  FUN_00eaebca();
  if (PTR_FUN_01c21308 != (undefined *)0x0) {
    FUN_00e8daa9();
  }
  if (PTR_FUN_01c21114 != (undefined *)0x0) {
    FUN_00e8c1dd();
  }
  uVar5 = FUN_0047bf00();
  FUN_00e46ee0(&PTR_DAT_015391f8,2,uVar5);
  iVar4 = FUN_00eae9a0();
  *(undefined ***)(iVar4 + 0xc) = &PTR_DAT_01ba640c;
  FUN_00eaebef();
  uVar5 = FUN_005a4920();
  *(undefined4 *)(iVar3 + 0x24) = 0;
  FUN_00409ef0(0,uVar5);
  iVar4 = FUN_00eae9a0();
  *(undefined ***)(iVar4 + 0xc) = &PTR_DAT_01ba640c;
  FUN_00eaebef();
  uVar5 = FUN_005a4920();
  *(undefined4 *)(iVar3 + 0x24) = 0;
  FUN_00409ef0(0,uVar5);
  FUN_00cbbc50();
  FUN_0040f100();
  FUN_00cbbc50();
  FUN_0040f100();
  iVar4 = FUN_00eae9a0();
  if (PTR_FUN_01c21428 != (undefined *)0x0) {
    FUN_00e8c6ab();
  }
  FUN_00445bb0();
  if (PTR_FUN_01c21428 != (undefined *)0x0) {
    FUN_00e8df3e();
  }
  FUN_00d38000();
  FUN_0054ea60();
  *(int *)(iVar4 + 100) = *(int *)(iVar4 + 100) + 1;
  FUN_00cb1210();
  iVar4 = *(int *)(iVar3 + 0x18);
  *(int *)(iVar4 + 0xc) = *(int *)(iVar4 + 0xc) + 1;
  if (*(uint *)(iVar4 + 8) < *(uint *)(*(int *)(iVar4 + 4) + 4)) {
    *(uint *)(iVar4 + 8) = *(uint *)(iVar4 + 8) + 1;
    FUN_0099b2e0();
  }
  else {
    FUN_00ccd380();
  }
  FUN_00eaec39();
  FUN_00de4130(2,1);
  FUN_00eae9a0();
  if (PTR_FUN_01c21408 != (undefined *)0x0) {
    FUN_00e8dec7();
  }
  FUN_00eaebca();
  FUN_00409ef0(0,extraout_ECX_00);
  FUN_00eae9a0();
  uVar5 = FUN_00eaebef();
  FUN_00409ef0(0,uVar5);
  FUN_00eae9a0();
  iVar4 = FUN_00eaebef();
  *(undefined4 *)(iVar4 + 0x14) = 2;
  FUN_00409ef0(0,iVar4);
  FUN_00eae9a0();
  if (PTR_FUN_01c21328 != (undefined *)0x0) {
    FUN_00e8db31();
  }
  uVar5 = FUN_00eaebef();
  FUN_00409ef0(0,uVar5);
  FUN_00eae9a0();
  if (PTR_FUN_01c2140c != (undefined *)0x0) {
    FUN_00e8ded8();
  }
  uVar5 = FUN_00eaebef();
  FUN_00409ef0(0,uVar5);
  FUN_00eae9a0();
  uVar5 = FUN_00eaebef();
  FUN_00409ef0(0,uVar5);
  iVar4 = FUN_00eae9a0();
  *(undefined1 *)(iVar4 + 0x154) = 1;
  FUN_00445bb0();
  *(int *)(iVar4 + 100) = *(int *)(iVar4 + 100) + 1;
  FUN_00e46ee0(&PTR_DAT_0153c858,2,iVar4);
  iVar4 = *(int *)(iVar3 + 0x18);
  *(int *)(iVar4 + 0xc) = *(int *)(iVar4 + 0xc) + 1;
  if (*(uint *)(iVar4 + 8) < *(uint *)(*(int *)(iVar4 + 4) + 4)) {
    *(uint *)(iVar4 + 8) = *(uint *)(iVar4 + 8) + 1;
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
    (*(code *)PTR_FUN_01c34f20)();
  }
  iVar4 = FUN_0040ee70();
  FUN_004644c0();
  if ((*(int *)(*(int *)(iVar4 + 4) + 8) == 0) ||
     (iVar4 = FUN_00e51370(&PTR_PTR_0154a108,*(undefined4 *)(*(int *)(iVar4 + 4) + 8),0), iVar4 < 0)
     ) {
    FUN_00cb1210();
    FUN_00464440();
  }
  FUN_00eaebef();
  FUN_005a4be0();
  *(undefined4 *)(iVar3 + 0x24) = 0;
  FUN_005e2720();
  FUN_00dafb60(2,0);
  FUN_00e46ee0(&PTR_DAT_01549c40,2,&PTR_DAT_01b9aad8);
  FUN_00cbbc50();
  FUN_0040f100();
  iVar4 = FUN_00eae9a0();
  *(undefined1 *)(iVar4 + 0x154) = 1;
  FUN_00445bb0();
  *(int *)(iVar4 + 100) = *(int *)(iVar4 + 100) + 1;
  FUN_00e46ee0(&PTR_DAT_0153c858,2,iVar4);
  iVar4 = *(int *)(iVar3 + 0x18);
  *(int *)(iVar4 + 0xc) = *(int *)(iVar4 + 0xc) + 1;
  if (*(uint *)(iVar4 + 8) < *(uint *)(*(int *)(iVar4 + 4) + 4)) {
    *(uint *)(iVar4 + 8) = *(uint *)(iVar4 + 8) + 1;
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
    (*(code *)PTR_FUN_01c34f20)();
  }
  iVar4 = FUN_0040ee70();
  FUN_004644c0();
  if ((*(int *)(*(int *)(iVar4 + 4) + 8) == 0) ||
     (iVar4 = FUN_00e51370(&PTR_PTR_0154a108,*(undefined4 *)(*(int *)(iVar4 + 4) + 8),0), iVar4 < 0)
     ) {
    FUN_00cb1210();
    FUN_00464440();
  }
  FUN_00eaebef();
  FUN_005a4be0();
  *(undefined4 *)(iVar3 + 0x24) = 0;
  FUN_005e2720();
  FUN_00dafb60(2,0);
  FUN_00e46ee0(&PTR_DAT_01549c40,2,&PTR_DAT_01b9aaf8);
  FUN_00cbbc50();
  FUN_0040f100();
  iVar4 = FUN_00eae9a0();
  if (PTR_FUN_01c21420 != (undefined *)0x0) {
    FUN_00e8c68d();
  }
  FUN_00445bb0();
  *(int *)(iVar4 + 100) = *(int *)(iVar4 + 100) + 1;
  FUN_00e46ee0(&PTR_DAT_0153ffb4,0,iVar4);
  iVar4 = *(int *)(iVar3 + 0x18);
  *(int *)(iVar4 + 0xc) = *(int *)(iVar4 + 0xc) + 1;
  if (*(uint *)(iVar4 + 8) < *(uint *)(*(int *)(iVar4 + 4) + 4)) {
    *(uint *)(iVar4 + 8) = *(uint *)(iVar4 + 8) + 1;
    FUN_0099b2e0();
  }
  else {
    FUN_00ccd380();
  }
  FUN_00eaebca();
  FUN_00eaebef();
  FUN_005a4be0();
  *(undefined4 *)(iVar3 + 0x24) = 0;
  FUN_005e2720();
  iVar4 = FUN_00eae9a0();
  *(undefined ***)(iVar4 + 0xc) = &PTR_DAT_01ba67dc;
  FUN_00eaebef();
  uVar5 = FUN_005a4920();
  *(undefined4 *)(iVar3 + 0x24) = 0;
  FUN_00409ef0(0,uVar5);
  iVar4 = FUN_00eae9a0();
  *(undefined ***)(iVar4 + 0xc) = &PTR_DAT_01ba67dc;
  FUN_00eaebef();
  uVar5 = FUN_005a4920();
  *(undefined4 *)(iVar3 + 0x24) = 0;
  FUN_00409ef0(0,uVar5);
  iVar4 = FUN_00eae9a0();
  *(undefined ***)(iVar4 + 0xc) = &PTR_DAT_01b7a374;
  FUN_00eaebef();
  uVar5 = FUN_005a4920();
  *(undefined4 *)(iVar3 + 0x24) = 0;
  FUN_00409ef0(0,uVar5);
  local_58 = (undefined4)DAT_018d2280;
  uStack_54 = (undefined4)((ulonglong)DAT_018d2280 >> 0x20);
  uStack_50 = (undefined4)DAT_018d2278;
  uStack_4c = (undefined4)((ulonglong)DAT_018d2278 >> 0x20);
  FUN_00d2b3b0(2,local_58,uStack_54,uStack_50,uStack_4c,0);
  FUN_00e46ee0(&PTR_DAT_01549c40,2,&PTR_DAT_01b9e3e8);
  FUN_00cbbc50();
  FUN_0040f100();
  FUN_00cbbc50();
  FUN_0040f100();
  iVar4 = FUN_00eae9a0();
  *(undefined1 *)(iVar4 + 0x154) = 1;
  FUN_00445bb0();
  *(int *)(iVar4 + 100) = *(int *)(iVar4 + 100) + 1;
  FUN_00cb1210();
  iVar4 = *(int *)(iVar3 + 0x18);
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
  if ((undefined *)**(undefined4 **)(iVar3 + 0x2c) == &DAT_015d12c4) {
    FUN_00464710();
  }
  else {
    (*(code *)PTR_FUN_01c34f20)();
  }
  FUN_00eaebef();
  FUN_005a4be0();
  *(undefined4 *)(iVar3 + 0x24) = 0;
  FUN_005e2720();
  FUN_00d37210(2,2);
  FUN_00de4130(2,2);
  FUN_00dafb60(2,0);
  iVar4 = FUN_00eae9a0();
  *(undefined ***)(iVar4 + 0xc) = &PTR_DAT_01ba67dc;
  FUN_00eaebef();
  uVar5 = FUN_005a4920();
  *(undefined4 *)(iVar3 + 0x24) = 0;
  FUN_00409ef0(0,uVar5);
  iVar4 = FUN_00eae9a0();
  *(undefined ***)(iVar4 + 0xc) = &PTR_DAT_01ba67dc;
  FUN_00eaebef();
  uVar5 = FUN_005a4920();
  *(undefined4 *)(iVar3 + 0x24) = 0;
  FUN_00409ef0(0,uVar5);
  FUN_00e46ee0(&PTR_DAT_01549c40,2,&PTR_DAT_01b5ecec);
  iVar4 = FUN_00eae9a0();
  FUN_00445bb0();
  *(int *)(iVar4 + 100) = *(int *)(iVar4 + 100) + 1;
  FUN_00e46ee0(&PTR_DAT_01548570,0,iVar4);
  iVar4 = *(int *)(iVar3 + 0x18);
  *(int *)(iVar4 + 0xc) = *(int *)(iVar4 + 0xc) + 1;
  if (*(uint *)(iVar4 + 8) < *(uint *)(*(int *)(iVar4 + 4) + 4)) {
    *(uint *)(iVar4 + 8) = *(uint *)(iVar4 + 8) + 1;
    FUN_0099b2e0();
  }
  else {
    FUN_00ccd380();
  }
  FUN_00eaebca();
  uVar5 = FUN_0047bf00();
  FUN_00e46ee0(&PTR_DAT_015391f8,2,uVar5);
  iVar4 = FUN_00eae9a0();
  *(undefined ***)(iVar4 + 0xc) = &PTR_DAT_01ba640c;
  FUN_00eaebef();
  uVar5 = FUN_005a4920();
  *(undefined4 *)(iVar3 + 0x24) = 0;
  FUN_00409ef0(0,uVar5);
  iVar4 = FUN_00eae9a0();
  *(undefined ***)(iVar4 + 0xc) = &PTR_DAT_01ba640c;
  FUN_00eaec5e();
  uVar5 = FUN_005a4920();
  *(undefined4 *)(iVar3 + 0x24) = 0;
  FUN_00409ef0(0,uVar5);
  FUN_00cbbc50();
  FUN_0040f100();
  FUN_00cbbc50();
  FUN_0040f100();
  FUN_00cbbc50();
  FUN_0040f100();
  FUN_00cbbc50();
  FUN_0040f100();
  FUN_00cbbc50();
  (*(code *)PTR_FUN_01c3c088)();
  return uVar1;
}

