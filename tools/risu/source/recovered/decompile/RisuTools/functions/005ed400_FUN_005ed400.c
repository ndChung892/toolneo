/* Address: 005ed400 | Ghidra name: FUN_005ed400 */

undefined4 FUN_005ed400(void)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 in_stack_fffffec4;
  undefined8 uVar6;
  undefined8 in_stack_fffffecc;
  undefined8 uVar7;
  
  uVar5 = (undefined4)((ulonglong)in_stack_fffffecc >> 0x20);
  iVar2 = FUN_005ebf70();
  FUN_00eae9a0();
  if (PTR_FUN_01c212b4 != (undefined *)0x0) {
    FUN_00e8c390();
  }
  FUN_004f8360();
  FUN_00eaec5e();
  uVar1 = *(undefined4 *)(iVar2 + 8);
  (*(code *)PTR_FUN_01c35948)();
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
    (*(code *)PTR_FUN_01c34d30)();
  }
  iVar3 = FUN_00eae9a0();
  FUN_00502f90();
  *(int *)(iVar3 + 100) = *(int *)(iVar3 + 100) + 1;
  FUN_00cb1210();
  FUN_0040ee30();
  if ((undefined *)**(undefined4 **)(iVar2 + 0x2c) == &DAT_015d12c4) {
    FUN_00464710();
  }
  else {
    (*(code *)PTR_FUN_01c34d30)();
  }
  uVar4 = FUN_00eae9a0();
  if (PTR_FUN_01c21350 != (undefined *)0x0) {
    FUN_00e8dbdb();
  }
  uVar7 = CONCAT44(uVar5,DAT_01c28290);
  if (PTR_FUN_01c21230 != (undefined *)0x0) {
    FUN_00e8d757();
  }
  FUN_00eaebef();
  FUN_00409ef0(0,uVar4);
  FUN_00eae9a0();
  uVar5 = FUN_00eaebef();
  FUN_00409ef0(0,uVar5);
  uVar5 = FUN_00eae9a0();
  if (PTR_FUN_01c21040 != (undefined *)0x0) {
    FUN_00e8d0e6();
  }
  FUN_00eaebca();
  FUN_00409ef0(0,uVar5);
  uVar5 = FUN_00eae9a0();
  if (PTR_FUN_01c21414 != (undefined *)0x0) {
    FUN_00e8defa();
  }
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
  uVar5 = FUN_00eae9a0();
  FUN_00eaebca();
  FUN_00409ef0(0,uVar5);
  FUN_00eae9a0();
  iVar3 = FUN_00eaebef();
  *(undefined4 *)(iVar3 + 0x14) = 2;
  FUN_00409ef0(0,iVar3);
  FUN_00eae9a0();
  uVar5 = FUN_00eaebef();
  FUN_00409ef0(0,uVar5);
  uVar5 = FUN_00eae9a0();
  FUN_00eaebca();
  FUN_00409ef0(0,uVar5);
  FUN_00d30c30(2,0,0,0,0);
  uVar5 = FUN_00eae9a0();
  if (PTR_FUN_01c21280 != (undefined *)0x0) {
    FUN_00e8d878();
  }
  FUN_00eaebca();
  FUN_00409ef0(0,uVar5);
  FUN_00eae9a0();
  uVar5 = FUN_00eaebef();
  FUN_00409ef0(0,uVar5);
  FUN_00eae9a0();
  FUN_00eaebef();
  FUN_005e24f0();
  FUN_00eae9a0();
  FUN_00eaebef();
  FUN_005e2560();
  FUN_0040f100();
  iVar3 = FUN_00eae9a0();
  if (PTR_FUN_01c21400 != (undefined *)0x0) {
    FUN_00e8c633();
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
  FUN_00eaec14();
  FUN_0040ee30();
  if ((undefined *)**(undefined4 **)(iVar2 + 0x2c) == &DAT_015d12c4) {
    FUN_00464710();
  }
  else {
    (*(code *)PTR_FUN_01c34d30)();
  }
  if (PTR_FUN_01c21400 != (undefined *)0x0) {
    FUN_00e8dea5();
  }
  uVar6 = CONCAT44(DAT_01c28338,in_stack_fffffec4);
  FUN_00dafb60(2,0);
  FUN_00eae9a0();
  iVar3 = FUN_00eae9a0();
  *(undefined ***)(iVar3 + 4) = &PTR_DAT_01c137e4;
  FUN_00eaebca();
  uVar5 = FUN_00eae9a0();
  FUN_00458a40();
  if (PTR_FUN_01c20fa0 != (undefined *)0x0) {
    FUN_00e8cf4e();
  }
  FUN_00ea3a1b(uVar6);
  FUN_004588d0(0,uVar5);
  uVar5 = FUN_00eae9a0();
  FUN_005e0970();
  FUN_00ea39ff(uVar7);
  FUN_004588d0(0,uVar5);
  FUN_00eae9a0();
  FUN_00ccde10();
  FUN_00eaebca();
  FUN_00eae9a0();
  FUN_00458150();
  FUN_00eaebca();
  FUN_00eaebef();
  uVar5 = FUN_005a4840();
  *(undefined4 *)(iVar2 + 0x24) = 0;
  FUN_00409ef0(0,uVar5);
  FUN_00eae9a0();
  uVar5 = FUN_00eaebef();
  FUN_00409ef0(0,uVar5);
  FUN_00dafb60(2,1);
  uVar5 = FUN_00eae9a0();
  FUN_00409ef0(0,uVar5);
  iVar3 = FUN_00eae9a0();
  if (PTR_FUN_01c21234 != (undefined *)0x0) {
    FUN_00e8c264();
  }
  FUN_00eae9a0();
  FUN_00eaebca();
  if (PTR_FUN_01c21294 != (undefined *)0x0) {
    FUN_00e8c354();
  }
  FUN_00445bb0();
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
  FUN_0040ee30();
  if ((undefined *)**(undefined4 **)(iVar2 + 0x2c) == &DAT_015d12c4) {
    FUN_00464710();
  }
  else {
    (*(code *)PTR_FUN_01c34d30)();
  }
  iVar3 = FUN_00eae9a0();
  if (PTR_FUN_01c21294 != (undefined *)0x0) {
    FUN_00e8d8cd();
  }
  *(undefined ***)(iVar3 + 0xc) = &PTR_DAT_01b51a64;
  FUN_00eaebca();
  uVar5 = FUN_005a4920();
  *(undefined4 *)(iVar2 + 0x24) = 0;
  FUN_00409ef0(0,uVar5);
  iVar3 = FUN_00eae9a0();
  if (PTR_FUN_01c21234 != (undefined *)0x0) {
    FUN_00e8d768();
  }
  *(undefined ***)(iVar3 + 0xc) = &PTR_DAT_01b51a0c;
  FUN_00eaebca();
  uVar5 = FUN_005a4920();
  *(undefined4 *)(iVar2 + 0x24) = 0;
  FUN_00409ef0(0,uVar5);
  iVar3 = FUN_00eae9a0();
  *(undefined ***)(iVar3 + 0xc) = &PTR_DAT_01b519ac;
  FUN_00eaebef();
  uVar5 = FUN_005a4920();
  *(undefined4 *)(iVar2 + 0x24) = 0;
  FUN_00409ef0(0,uVar5);
  iVar3 = FUN_00eae9a0();
  *(undefined ***)(iVar3 + 0xc) = &PTR_DAT_01b5194c;
  FUN_00eaebef();
  uVar5 = FUN_005a4920();
  *(undefined4 *)(iVar2 + 0x24) = 0;
  FUN_00409ef0(0,uVar5);
  iVar3 = FUN_00eae9a0();
  *(undefined ***)(iVar3 + 0xc) = &PTR_DAT_01b97f4c;
  FUN_00eaebef();
  uVar5 = FUN_005a4920();
  *(undefined4 *)(iVar2 + 0x24) = 0;
  FUN_00409ef0(0,uVar5);
  iVar3 = FUN_00eae9a0();
  if (PTR_FUN_01c212d4 != (undefined *)0x0) {
    FUN_00e8c3bd();
  }
  FUN_00545f60();
  *(int *)(iVar3 + 100) = *(int *)(iVar3 + 100) + 1;
  FUN_00548370();
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
  FUN_0040ee30();
  if ((undefined *)**(undefined4 **)(iVar2 + 0x2c) == &DAT_015d12c4) {
    FUN_00464710();
  }
  else {
    (*(code *)PTR_FUN_01c34d30)();
  }
  FUN_00d30c30();
  iVar3 = FUN_00eae9a0();
  uVar5 = FUN_00468480();
  *(undefined4 *)(iVar3 + 0x10) = uVar5;
  *(undefined8 *)(iVar3 + 4) = DAT_018d1cd8;
  *(undefined4 *)(iVar3 + 0xc) = 0;
  FUN_00e46ee0();
  uVar5 = FUN_00eae9a0();
  if (PTR_FUN_01c212c8 != (undefined *)0x0) {
    FUN_00e8d999();
  }
  FUN_00eaebca();
  FUN_00409ef0(0,uVar5);
  iVar3 = FUN_00eae9a0();
  *(undefined ***)(iVar3 + 0xc) = &PTR_DAT_01b51ae0;
  FUN_00eaebef();
  uVar5 = FUN_005a4920();
  *(undefined4 *)(iVar2 + 0x24) = 0;
  FUN_00409ef0(0,uVar5);
  if (PTR_FUN_01c21328 != (undefined *)0x0) {
    FUN_00e8db31();
  }
  FUN_00dafb60(2,0);
  FUN_00cbbc50();
  FUN_0040f100();
  FUN_005483a0();
  FUN_00cbbc50();
  FUN_0040f100();
  FUN_00cbbc50();
  FUN_0040f100();
  FUN_00cbbc50();
  (*(code *)PTR_FUN_01c3bde0)();
  return uVar1;
}

