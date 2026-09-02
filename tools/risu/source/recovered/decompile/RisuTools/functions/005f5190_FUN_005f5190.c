/* Address: 005f5190 | Ghidra name: FUN_005f5190 */

undefined4 FUN_005f5190(void)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  undefined4 uVar4;
  int iVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  undefined4 uVar9;
  undefined4 uVar10;
  int iVar11;
  int iVar12;
  undefined1 *puVar13;
  undefined1 *puVar14;
  undefined4 in_stack_fffffd30;
  undefined4 in_stack_fffffd34;
  undefined4 in_stack_fffffd38;
  undefined4 in_stack_fffffd40;
  undefined4 in_stack_fffffd44;
  undefined8 uVar15;
  undefined8 uVar16;
  undefined8 in_stack_fffffd60;
  undefined8 in_stack_fffffd68;
  undefined4 in_stack_fffffd70;
  undefined4 in_stack_fffffd74;
  undefined4 in_stack_fffffd78;
  undefined4 in_stack_fffffd7c;
  undefined4 in_stack_fffffd80;
  undefined4 in_stack_fffffd84;
  undefined4 in_stack_fffffd88;
  undefined4 in_stack_fffffd8c;
  undefined4 in_stack_fffffd90;
  undefined4 in_stack_fffffd94;
  undefined4 in_stack_fffffd98;
  undefined4 in_stack_fffffd9c;
  
  iVar2 = FUN_005ebf70();
  FUN_00eae9a0();
  if (PTR_FUN_01c212a4 != (undefined *)0x0) {
    FUN_00e8c381();
  }
  FUN_004f8360();
  FUN_00eaec39();
  uVar1 = *(undefined4 *)(iVar2 + 8);
  (*(code *)PTR_FUN_01c35998)();
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
  iVar3 = FUN_00eae9a0();
  if (PTR_FUN_01c21238 != (undefined *)0x0) {
    FUN_00e8c273();
  }
  *(undefined1 *)(iVar3 + 0x154) = 1;
  if (PTR_FUN_01c21270 != (undefined *)0x0) {
    FUN_00e8c309();
  }
  if (PTR_FUN_01c21414 != (undefined *)0x0) {
    FUN_00e8c66f();
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
  FUN_00eaec5e();
  if (PTR_FUN_01c212a4 != (undefined *)0x0) {
    FUN_00e8d900();
  }
  uVar8 = DAT_01c281e4;
  FUN_00d65790(2,3);
  if (PTR_FUN_01c21414 != (undefined *)0x0) {
    FUN_00e8defa();
  }
  uVar6 = DAT_01c2834c;
  FUN_00d30c30(2,0,0,0,0);
  iVar3 = FUN_00eae9a0();
  uVar4 = FUN_00468480();
  *(undefined4 *)(iVar3 + 0x10) = uVar4;
  *(undefined8 *)(iVar3 + 4) = DAT_018d1d40;
  *(undefined4 *)(iVar3 + 0xc) = 0;
  FUN_00e46ee0();
  if (PTR_FUN_01c21040 != (undefined *)0x0) {
    FUN_00e8d0e6();
  }
  uVar4 = DAT_01c27ef4;
  FUN_00d36370(2,0);
  if (PTR_FUN_01c21270 != (undefined *)0x0) {
    FUN_00e8d845();
  }
  uVar9 = DAT_01c281b8;
  FUN_00d36370(2,2);
  if (PTR_FUN_01c20fa0 != (undefined *)0x0) {
    FUN_00e8cf4e();
  }
  uVar10 = DAT_01c27e88;
  FUN_00e46ee0();
  FUN_00eae9a0();
  if (PTR_FUN_01c21238 != (undefined *)0x0) {
    FUN_00e8d779();
  }
  uVar15 = CONCAT44(uVar6,DAT_01c28188);
  iVar3 = FUN_00eae9a0();
  *(undefined ***)(iVar3 + 4) = &PTR_DAT_01c137e4;
  FUN_00eaebca();
  FUN_00eae9a0();
  iVar3 = FUN_00458a40();
  FUN_00ea3f77(in_stack_fffffd30,in_stack_fffffd34);
  iVar3 = *(int *)(iVar3 + 4);
  iVar5 = FUN_00eae9a0();
  *(undefined ***)(iVar5 + 4) = &PTR_DAT_01b881d4;
  iVar5 = FUN_00eaebef();
  *(undefined4 *)(iVar5 + 0xc) = 0;
  FUN_00eae9a0();
  FUN_00ccc380(0);
  uVar6 = FUN_00eaebef();
  *(int *)(iVar3 + 0xc) = *(int *)(iVar3 + 0xc) + 1;
  if (*(uint *)(iVar3 + 8) < *(uint *)(*(int *)(iVar3 + 4) + 4)) {
    *(uint *)(iVar3 + 8) = *(uint *)(iVar3 + 8) + 1;
    FUN_0099b2e0(uVar6);
  }
  else {
    FUN_00ccd380();
  }
  FUN_00eae9a0();
  FUN_00ccde10();
  FUN_00eaebca();
  FUN_00eae9a0();
  FUN_00458150();
  FUN_00eaebca();
  FUN_00eaebca();
  uVar6 = FUN_005a4840();
  *(undefined4 *)(iVar2 + 0x24) = 0;
  FUN_00409ef0(0,uVar6);
  uVar6 = FUN_00eae9a0();
  FUN_00458c80();
  iVar3 = *(int *)(iVar2 + 0x18);
  *(int *)(iVar3 + 0xc) = *(int *)(iVar3 + 0xc) + 1;
  if (*(uint *)(iVar3 + 8) < *(uint *)(*(int *)(iVar3 + 4) + 4)) {
    *(uint *)(iVar3 + 8) = *(uint *)(iVar3 + 8) + 1;
    FUN_0099b2e0(uVar6);
  }
  else {
    FUN_00ccd380();
  }
  iVar3 = FUN_00eaebca();
  *(undefined ***)(iVar3 + 8) = &PTR_DAT_01c1726c;
  *(undefined ***)(iVar3 + 0x10) = &PTR_DAT_01b436a0;
  FUN_00eae9a0();
  FUN_00458150();
  FUN_00eae9a0();
  iVar3 = FUN_00eae9a0();
  *(undefined ***)(iVar3 + 4) = &PTR_DAT_01c137e4;
  FUN_00eaebca();
  uVar7 = FUN_00eae9a0();
  FUN_00458a40();
  if (PTR_FUN_01c21328 != (undefined *)0x0) {
    FUN_00e8db31();
  }
  uVar16 = CONCAT44(uVar4,DAT_01c28268);
  FUN_00ea3a1b(in_stack_fffffd38,uVar8);
  FUN_004588d0(0,uVar7);
  FUN_00eae9a0();
  FUN_00ccde10();
  FUN_00eaebca();
  FUN_00eaebef();
  FUN_005e0a40();
  FUN_00eaebca();
  FUN_005a4840();
  *(undefined4 *)(iVar2 + 0x24) = 0;
  (*(code *)PTR_FUN_01c51e30)();
  FUN_00eae9a0();
  FUN_00458150();
  FUN_00eae9a0();
  iVar3 = FUN_00eae9a0();
  *(undefined ***)(iVar3 + 4) = &PTR_DAT_01c137e4;
  FUN_00eaebca();
  uVar8 = FUN_00eae9a0();
  FUN_00458a40();
  FUN_00ea3a1b(in_stack_fffffd40,in_stack_fffffd44);
  FUN_004588d0(0,uVar8);
  uVar8 = FUN_00eae9a0();
  FUN_005e0af0();
  FUN_00ea39ff(uVar9,uVar10);
  FUN_004588d0(0,uVar8);
  FUN_00eae9a0();
  FUN_00ccde10();
  FUN_00eaebca();
  FUN_00eaebef();
  FUN_005e0a40();
  FUN_00eaebca();
  FUN_005a4840();
  *(undefined4 *)(iVar2 + 0x24) = 0;
  (*(code *)PTR_FUN_01c51e30)();
  FUN_00eae9a0();
  FUN_00458150();
  FUN_00eae9a0();
  iVar3 = FUN_00eae9a0();
  *(undefined ***)(iVar3 + 4) = &PTR_DAT_01c137e4;
  FUN_00eaebca();
  uVar8 = FUN_00eae9a0();
  FUN_00458a40();
  FUN_00ea3a1b(uVar15);
  FUN_004588d0(0,uVar8);
  uVar8 = FUN_00eae9a0();
  FUN_005e0b80();
  FUN_00ea39ff(uVar16);
  FUN_004588d0(0,uVar8);
  FUN_00eae9a0();
  FUN_00ccde10();
  FUN_00eaebca();
  FUN_00eaebef();
  FUN_005e0a40();
  FUN_00eaebca();
  FUN_005a4840();
  *(undefined4 *)(iVar2 + 0x24) = 0;
  (*(code *)PTR_FUN_01c51e30)();
  FUN_00eae9a0();
  FUN_00458150();
  FUN_00eae9a0();
  iVar3 = FUN_00eae9a0();
  *(undefined ***)(iVar3 + 4) = &PTR_DAT_01c137e4;
  FUN_00eaebca();
  uVar8 = FUN_00eae9a0();
  FUN_00458a40();
  FUN_00ea3a1b(in_stack_fffffd60);
  FUN_004588d0(0,uVar8);
  uVar8 = FUN_00eae9a0();
  FUN_005e0b80();
  FUN_00ea39ff(in_stack_fffffd68);
  FUN_004588d0(0,uVar8);
  FUN_00eae9a0();
  FUN_00ccde10();
  FUN_00eaebca();
  FUN_00eaebef();
  FUN_005e0a40();
  FUN_00eaebca();
  FUN_005a4840();
  *(undefined4 *)(iVar2 + 0x24) = 0;
  (*(code *)PTR_FUN_01c51e30)();
  FUN_00cbbc50();
  FUN_00409ef0(0,uVar6);
  iVar3 = FUN_00eae9a0();
  FUN_0050e1b0();
  *(int *)(iVar3 + 100) = *(int *)(iVar3 + 100) + 1;
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
  *(undefined ***)(iVar3 + 0xc) = &PTR_DAT_01ba640c;
  FUN_00eaebca();
  uVar8 = FUN_005a4920();
  *(undefined4 *)(iVar2 + 0x24) = 0;
  FUN_00409ef0(0,uVar8);
  iVar3 = FUN_00eae9a0();
  *(undefined ***)(iVar3 + 0xc) = &PTR_DAT_01ba640c;
  FUN_00eaebca();
  uVar8 = FUN_005a4920();
  *(undefined4 *)(iVar2 + 0x24) = 0;
  FUN_00409ef0(0,uVar8);
  iVar3 = FUN_00eae9a0();
  if (PTR_FUN_01c21398 != (undefined *)0x0) {
    FUN_00e8c552();
  }
  puVar13 = &DAT_01571588;
  puVar14 = (undefined1 *)(iVar3 + 0x154);
  for (iVar5 = 0x48; iVar5 != 0; iVar5 = iVar5 + -1) {
    *puVar14 = *puVar13;
    puVar13 = puVar13 + 1;
    puVar14 = puVar14 + 1;
  }
  FUN_00445bb0();
  *(int *)(iVar3 + 100) = *(int *)(iVar3 + 100) + 1;
  if (PTR_FUN_01c21370 != (undefined *)0x0) {
    FUN_00e8dc63();
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
  FUN_00eaec39();
  FUN_00d37210(2,2);
  FUN_00d36370(2,2);
  if (PTR_FUN_01c21398 != (undefined *)0x0) {
    FUN_00e8dcfc();
  }
  if (PTR_FUN_01c21114 != (undefined *)0x0) {
    FUN_00e8c1dd();
  }
  FUN_0047bf00();
  FUN_00e46ee0();
  iVar3 = FUN_00eae9a0();
  if (PTR_FUN_01c213a0 != (undefined *)0x0) {
    FUN_00e8dd1e();
  }
  *(undefined ***)(iVar3 + 0xc) = &PTR_DAT_01ba62ac;
  FUN_00eaebef();
  uVar8 = FUN_005a4920();
  *(undefined4 *)(iVar2 + 0x24) = 0;
  FUN_00409ef0(0,uVar8);
  FUN_00dda510();
  FUN_00dda510();
  FUN_00cbbc50();
  FUN_0040f100();
  FUN_00cbbc50();
  FUN_0040f100();
  FUN_00cbbc50();
  FUN_0040f100();
  iVar3 = FUN_00eae9a0();
  *(undefined1 *)(iVar3 + 0x154) = 1;
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
  FUN_00d65790(2,1);
  FUN_00d30c30(2,0,0,0,0);
  iVar3 = FUN_00eae9a0();
  uVar8 = FUN_00468480();
  *(undefined4 *)(iVar3 + 0x10) = uVar8;
  *(undefined8 *)(iVar3 + 4) = DAT_018d1d40;
  *(undefined4 *)(iVar3 + 0xc) = 0;
  FUN_00e46ee0();
  FUN_00d36370(2,0);
  FUN_00d36370(2,2);
  FUN_00e46ee0();
  FUN_00eae9a0();
  iVar3 = FUN_00eae9a0();
  *(undefined ***)(iVar3 + 4) = &PTR_DAT_01c137e4;
  FUN_00eaebca();
  FUN_00eae9a0();
  iVar3 = FUN_00458a40();
  FUN_00ea3f93(in_stack_fffffd70,in_stack_fffffd74);
  iVar3 = *(int *)(iVar3 + 4);
  iVar5 = FUN_00eae9a0();
  *(undefined ***)(iVar5 + 4) = &PTR_DAT_01b880f8;
  iVar5 = FUN_00eaebef();
  *(undefined4 *)(iVar5 + 0xc) = 0;
  FUN_00eae9a0();
  FUN_00ccc380(0);
  uVar8 = FUN_00eaebef();
  *(int *)(iVar3 + 0xc) = *(int *)(iVar3 + 0xc) + 1;
  iVar5 = *(int *)(iVar3 + 4);
  if (*(uint *)(iVar3 + 8) < *(uint *)(iVar5 + 4)) {
    *(uint *)(iVar3 + 8) = *(uint *)(iVar3 + 8) + 1;
    FUN_0099b2e0(uVar8);
  }
  else {
    FUN_00ccd380();
  }
  uVar8 = FUN_00eae9a0();
  FUN_00ccde10();
  FUN_00eaebca();
  FUN_00eae9a0();
  FUN_00458150();
  FUN_00eaebca();
  FUN_00eaebca();
  uVar6 = FUN_005a4840();
  *(undefined4 *)(iVar2 + 0x24) = 0;
  FUN_00409ef0(0,uVar6);
  uVar6 = FUN_00eae9a0();
  FUN_00458c80();
  iVar3 = *(int *)(iVar2 + 0x18);
  *(int *)(iVar3 + 0xc) = *(int *)(iVar3 + 0xc) + 1;
  iVar11 = *(int *)(iVar3 + 4);
  if (*(uint *)(iVar3 + 8) < *(uint *)(iVar11 + 4)) {
    *(uint *)(iVar3 + 8) = *(uint *)(iVar3 + 8) + 1;
    FUN_0099b2e0(uVar6);
  }
  else {
    FUN_00ccd380();
  }
  iVar3 = FUN_00eaebca();
  *(undefined ***)(iVar3 + 8) = &PTR_DAT_01c1726c;
  *(undefined ***)(iVar3 + 0x10) = &PTR_DAT_01b45dd0;
  FUN_00eae9a0();
  FUN_00458150();
  FUN_00eae9a0();
  iVar3 = FUN_00eae9a0();
  *(undefined ***)(iVar3 + 4) = &PTR_DAT_01c137e4;
  FUN_00eaebca();
  uVar4 = FUN_00eae9a0();
  FUN_00458a40();
  FUN_00ea3a1b(in_stack_fffffd78,in_stack_fffffd7c);
  uVar4 = FUN_004588d0(0,uVar4);
  uVar9 = FUN_00eae9a0();
  FUN_00ccde10();
  FUN_00eaebca();
  FUN_00eaebef();
  FUN_005e0a40();
  FUN_00eaebca();
  FUN_005a4840();
  *(undefined4 *)(iVar2 + 0x24) = 0;
  (*(code *)PTR_FUN_01c51e30)();
  FUN_00eae9a0();
  FUN_00458150();
  FUN_00eae9a0();
  iVar3 = FUN_00eae9a0();
  *(undefined ***)(iVar3 + 4) = &PTR_DAT_01c137e4;
  FUN_00eaebca();
  uVar10 = FUN_00eae9a0();
  FUN_00458a40();
  FUN_00ea3a1b(in_stack_fffffd80,in_stack_fffffd84);
  FUN_004588d0(0,uVar10);
  uVar10 = FUN_00eae9a0();
  FUN_005e0af0();
  FUN_00ea39ff(in_stack_fffffd88,in_stack_fffffd8c);
  uVar10 = FUN_004588d0(0,uVar10);
  uVar15 = CONCAT44(uVar9,uVar10);
  uVar9 = FUN_00eae9a0();
  FUN_00ccde10();
  FUN_00eaebca();
  FUN_00eaebef();
  FUN_005e0a40();
  FUN_00eaebca();
  FUN_005a4840();
  *(undefined4 *)(iVar2 + 0x24) = 0;
  (*(code *)PTR_FUN_01c51e30)();
  FUN_00eae9a0();
  FUN_00458150();
  FUN_00eae9a0();
  iVar3 = FUN_00eae9a0();
  *(undefined ***)(iVar3 + 4) = &PTR_DAT_01c137e4;
  FUN_00eaebca();
  uVar10 = FUN_00eae9a0();
  FUN_00458a40();
  FUN_00ea3a1b(in_stack_fffffd90,in_stack_fffffd94);
  FUN_004588d0(0,uVar10);
  uVar10 = FUN_00eae9a0();
  FUN_005e0b80();
  FUN_00ea39ff(in_stack_fffffd98,in_stack_fffffd9c);
  uVar10 = FUN_004588d0(0,uVar10);
  FUN_00eae9a0(uVar10);
  FUN_00ccde10();
  FUN_00eaebca();
  FUN_00eaebef();
  FUN_005e0a40();
  FUN_00eaebca();
  FUN_005a4840();
  *(undefined4 *)(iVar2 + 0x24) = 0;
  (*(code *)PTR_FUN_01c51e30)();
  FUN_00eae9a0();
  FUN_00458150();
  FUN_00eae9a0();
  iVar3 = FUN_00eae9a0();
  *(undefined ***)(iVar3 + 4) = &PTR_DAT_01c137e4;
  FUN_00eaebca();
  uVar7 = FUN_00eae9a0();
  FUN_00458a40();
  FUN_00ea3a1b(uVar10,uVar9);
  FUN_004588d0(0,uVar7);
  uVar9 = FUN_00eae9a0();
  FUN_005e0b80();
  FUN_00ea39ff(uVar15);
  FUN_004588d0(0,uVar9);
  FUN_00eae9a0();
  FUN_00ccde10();
  FUN_00eaebca();
  FUN_00eaebef();
  FUN_005e0a40();
  FUN_00eaebca();
  FUN_005a4840();
  *(undefined4 *)(iVar2 + 0x24) = 0;
  (*(code *)PTR_FUN_01c51e30)();
  FUN_00cbbc50();
  FUN_00409ef0(0,uVar6);
  iVar3 = FUN_00eae9a0();
  FUN_0050e1b0();
  *(int *)(iVar3 + 100) = *(int *)(iVar3 + 100) + 1;
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
  FUN_00eaebca();
  iVar3 = FUN_00eae9a0();
  *(undefined ***)(iVar3 + 0xc) = &PTR_DAT_01ba640c;
  FUN_00eaebef();
  uVar6 = FUN_005a4920();
  *(undefined4 *)(iVar2 + 0x24) = 0;
  FUN_00409ef0(0,uVar6);
  iVar3 = FUN_00eae9a0();
  *(undefined ***)(iVar3 + 0xc) = &PTR_DAT_01ba640c;
  FUN_00eaebef();
  uVar6 = FUN_005a4920();
  *(undefined4 *)(iVar2 + 0x24) = 0;
  FUN_00409ef0(0,uVar6);
  iVar3 = FUN_00eae9a0();
  puVar13 = &DAT_01571588;
  puVar14 = (undefined1 *)(iVar3 + 0x154);
  for (iVar12 = 0x48; iVar12 != 0; iVar12 = iVar12 + -1) {
    *puVar14 = *puVar13;
    puVar13 = puVar13 + 1;
    puVar14 = puVar14 + 1;
  }
  FUN_00445bb0();
  *(int *)(iVar3 + 100) = *(int *)(iVar3 + 100) + 1;
  FUN_00e46ee0(&PTR_DAT_0153cfb8,0,iVar3);
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
  FUN_00d37210(2,2);
  FUN_00d36370(2,2);
  uVar6 = FUN_0047bf00();
  FUN_00e46ee0(&PTR_DAT_015391f8,2,uVar6);
  iVar3 = FUN_00eae9a0();
  *(undefined ***)(iVar3 + 0xc) = &PTR_DAT_01ba62ac;
  FUN_00eaebef();
  uVar6 = FUN_005a4920();
  *(undefined4 *)(iVar2 + 0x24) = 0;
  FUN_00409ef0(0,uVar6);
  FUN_00dda510(2,DAT_018d1d48);
  FUN_00dda510(2,DAT_018d1d48);
  FUN_00cbbc50();
  FUN_0040f100();
  FUN_00cbbc50();
  FUN_0040f100();
  FUN_00cbbc50();
  FUN_0040f100();
  iVar3 = FUN_00eae9a0();
  FUN_005264a0();
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
  FUN_0040ee30();
  if ((undefined *)**(undefined4 **)(iVar2 + 0x2c) == &DAT_015d12c4) {
    FUN_00464710();
  }
  else {
    (*(code *)PTR_FUN_01c34d70)();
  }
  iVar3 = FUN_00eae9a0();
  FUN_004460b0();
  if (PTR_FUN_01c210a4 != (undefined *)0x0) {
    FUN_00e8c165();
  }
  *(undefined4 *)(iVar3 + 0x84) = DAT_01c210a8;
  if (PTR_FUN_01c20f9c != (undefined *)0x0) {
    FUN_00e8c0cf();
  }
  *(undefined1 *)(iVar3 + 0x24) = 1;
  FUN_004098c0();
  *(undefined4 *)(iVar3 + 0x30) = 0;
  *(int *)(iVar3 + 100) = *(int *)(iVar3 + 100) + 1;
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
  iVar3 = FUN_00eae9a0();
  if (PTR_FUN_01c210a4 != (undefined *)0x0) {
    FUN_00e8d207();
  }
  iVar12 = FUN_00eae9a0();
  *(undefined ***)(iVar12 + 4) = &PTR_DAT_01c137e4;
  FUN_00eaebca();
  FUN_00eae9a0();
  iVar3 = *(int *)(iVar3 + 4);
  iVar12 = FUN_00eaebef();
  *(undefined ***)(iVar12 + 8) = &PTR_DAT_01b98714;
  *(int *)(iVar3 + 0xc) = *(int *)(iVar3 + 0xc) + 1;
  FUN_00ccd380();
  uVar6 = FUN_00eae9a0();
  if (PTR_FUN_01c213b0 != (undefined *)0x0) {
    FUN_00e8dd62();
  }
  FUN_00ea3a1b(uVar4,iVar11);
  FUN_004588d0(0,uVar6);
  FUN_00eae9a0();
  FUN_00ccde10();
  FUN_00eaebca();
  FUN_00eae9a0();
  FUN_00458150();
  FUN_00eaebca();
  FUN_00eaebca();
  uVar6 = FUN_005a4840();
  *(undefined4 *)(iVar2 + 0x24) = 0;
  FUN_00409ef0(0,uVar6);
  iVar3 = FUN_00eae9a0();
  iVar11 = FUN_00eae9a0();
  *(undefined ***)(iVar11 + 4) = &PTR_DAT_01c137e4;
  FUN_00eaebca();
  FUN_00eae9a0();
  iVar3 = *(int *)(iVar3 + 4);
  iVar11 = FUN_00eaebef();
  *(undefined ***)(iVar11 + 8) = &PTR_DAT_01b98714;
  *(int *)(iVar3 + 0xc) = *(int *)(iVar3 + 0xc) + 1;
  FUN_00ccd380();
  uVar6 = FUN_00eae9a0();
  FUN_00ea3a1b(uVar8,iVar5);
  FUN_004588d0(0,uVar6);
  FUN_00eae9a0();
  FUN_00ccde10();
  FUN_00eaebca();
  FUN_00eae9a0();
  FUN_00458150();
  FUN_00eaebca();
  FUN_00eaebca();
  uVar8 = FUN_005a4840();
  *(undefined4 *)(iVar2 + 0x24) = 0;
  FUN_00409ef0(0,uVar8);
  FUN_00cbbc50();
  FUN_0040f100();
  FUN_00453e60();
  FUN_00cbbc50();
  FUN_0040f100();
  FUN_00cbbc50();
  (*(code *)PTR_FUN_01c3be30)();
  return uVar1;
}

