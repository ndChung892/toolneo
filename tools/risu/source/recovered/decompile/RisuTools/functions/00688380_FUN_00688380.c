/* Address: 00688380 | Ghidra name: FUN_00688380 */

undefined4 FUN_00688380(void)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 in_stack_ffffff78;
  undefined4 in_stack_ffffff80;
  undefined4 uVar6;
  
  iVar2 = FUN_005ebf70();
  FUN_00eae9a0();
  if (PTR_FUN_01c212a4 != (undefined *)0x0) {
    FUN_00e8c381();
  }
  FUN_004f8360();
  FUN_00eaec5e();
  uVar1 = *(undefined4 *)(iVar2 + 8);
  (*(code *)PTR_FUN_01c35cb0)();
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
  uVar5 = DAT_01c281e4;
  FUN_00dafb60(2,1);
  iVar3 = FUN_00eae9a0();
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
  FUN_00eaebca();
  FUN_0040ee30();
  if ((undefined *)**(undefined4 **)(iVar2 + 0x2c) == &DAT_015d12c4) {
    FUN_00464710();
  }
  else {
    (*(code *)PTR_FUN_01c34fd0)();
  }
  if (PTR_FUN_01c21040 != (undefined *)0x0) {
    FUN_00e8d0e6();
  }
  FUN_00d30c30(2,0,DAT_018d23f8,0,0);
  FUN_00eae9a0();
  iVar3 = FUN_00eae9a0();
  *(undefined ***)(iVar3 + 4) = &PTR_DAT_01c137e4;
  FUN_00eaebca();
  uVar4 = FUN_00eae9a0();
  if (PTR_FUN_01c21280 != (undefined *)0x0) {
    FUN_00e8d878();
  }
  uVar6 = DAT_01c281c4;
  FUN_00ea3a1b(in_stack_ffffff78,uVar5);
  FUN_004588d0(0,uVar4);
  FUN_00eae9a0();
  FUN_00ccde10();
  FUN_00eaebca();
  FUN_00eae9a0();
  FUN_00458150();
  FUN_00eaebef();
  if (PTR_FUN_01c21270 != (undefined *)0x0) {
    FUN_00e8d845();
  }
  uVar5 = DAT_01c281b8;
  FUN_00eaec14();
  uVar4 = FUN_005a4840();
  *(undefined4 *)(iVar2 + 0x24) = 0;
  FUN_005e32f0(uVar4);
  FUN_00eae9a0();
  uVar4 = FUN_00eaec14();
  FUN_00409ef0(0,uVar4);
  FUN_00eae9a0();
  uVar4 = FUN_00eaebef();
  FUN_005e3360(uVar4);
  FUN_00d65790(2,1);
  FUN_00eae9a0();
  if (PTR_FUN_01c20fa0 != (undefined *)0x0) {
    FUN_00e8cf4e();
  }
  iVar3 = FUN_00eae9a0();
  *(undefined ***)(iVar3 + 4) = &PTR_DAT_01c137e4;
  FUN_00eaebca();
  uVar4 = FUN_00eae9a0();
  FUN_00ea3a1b(in_stack_ffffff80,uVar6);
  FUN_004588d0(0,uVar4);
  FUN_00eae9a0();
  FUN_00ccde10();
  FUN_00eaebca();
  FUN_00eae9a0();
  FUN_00458150();
  FUN_00eaec14();
  FUN_00eaebca();
  uVar4 = FUN_005a4840();
  *(undefined4 *)(iVar2 + 0x24) = 0;
  FUN_00409ef0(0,uVar4);
  FUN_00cbbc50();
  FUN_0040f100();
  iVar3 = FUN_00eae9a0();
  FUN_00523850();
  *(int *)(iVar3 + 100) = *(int *)(iVar3 + 100) + 1;
  FUN_00cb1210();
  FUN_0040ee30();
  if ((undefined *)**(undefined4 **)(iVar2 + 0x2c) == &DAT_015d12c4) {
    FUN_00464710(iVar3);
  }
  else {
    (*(code *)PTR_FUN_01c34fd0)(iVar3);
  }
  uVar4 = FUN_00eae9a0();
  if (PTR_FUN_01c213a4 != (undefined *)0x0) {
    FUN_00e8dd2f();
  }
  uVar6 = DAT_01c282e0;
  if (PTR_FUN_01c21414 != (undefined *)0x0) {
    FUN_00e8defa();
  }
  FUN_00eaebef();
  FUN_00409ef0(0,uVar4);
  FUN_00eae9a0();
  uVar4 = FUN_00eaebef();
  FUN_00409ef0(0,uVar4);
  FUN_00eae9a0();
  uVar4 = FUN_00eaebef();
  FUN_00409ef0(0,uVar4);
  FUN_00eae9a0();
  uVar4 = FUN_00eaebef();
  FUN_005e2480(uVar4);
  FUN_00eae9a0();
  uVar4 = FUN_00eaebef();
  iVar2 = 0;
  FUN_00409ef0(0,uVar4);
  FUN_00eae9a0();
  uVar5 = FUN_00eaebef(uVar5,uVar6,*(undefined4 *)(iVar2 + 0x14));
  FUN_00409ef0(0,uVar5);
  FUN_0040f100();
  FUN_00cbbc50();
  (*(code *)PTR_FUN_01c3c148)();
  return uVar1;
}

