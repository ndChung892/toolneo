/* Address: 0059aac0 | Ghidra name: FUN_0059aac0 */

undefined4 FUN_0059aac0(void)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  undefined4 uVar4;
  int iVar5;
  undefined1 *puVar6;
  undefined1 *puVar7;
  
  iVar2 = FUN_00594df0();
  FUN_00eae9a0();
  if (PTR_FUN_01c212b4 != (undefined *)0x0) {
    FUN_00e8c390();
  }
  FUN_004f8360();
  FUN_00eaec39();
  uVar1 = *(undefined4 *)(iVar2 + 8);
  (*(code *)PTR_FUN_01c358f8)();
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
    (*(code *)PTR_FUN_01c34cf0)();
  }
  FUN_00eae9a0();
  FUN_00cb6770();
  FUN_00ccd1f0();
  FUN_004e7fd0(DAT_018d1498);
  iVar3 = FUN_00eae9a0();
  if (PTR_FUN_01c21324 != (undefined *)0x0) {
    FUN_00e8c462();
  }
  if (PTR_FUN_01c21298 != (undefined *)0x0) {
    FUN_00e8c363();
  }
  *(undefined4 *)(iVar3 + 0x44) = 0xffffffff;
  FUN_004098c0();
  if (PTR_FUN_01c21324 != (undefined *)0x0) {
    FUN_00e8db20();
  }
  FUN_00d68410(0,0,0);
  FUN_00cb1210();
  FUN_004e7fd0(DAT_018d1498);
  iVar3 = FUN_00eae9a0();
  *(undefined4 *)(iVar3 + 0x44) = 0xffffffff;
  FUN_004098c0();
  FUN_00d68410(0,0,0);
  FUN_00cb1210();
  FUN_004e7fd0(0);
  iVar3 = FUN_00eae9a0();
  *(undefined4 *)(iVar3 + 0x44) = 0xffffffff;
  FUN_004098c0();
  FUN_00d68410(0,0,0);
  FUN_00cb1210();
  FUN_004e03c0();
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
  if (PTR_FUN_01c212b4 != (undefined *)0x0) {
    FUN_00e8d944();
  }
  FUN_00de4130(2,2);
  if (PTR_FUN_01c21234 != (undefined *)0x0) {
    FUN_00e8d768();
  }
  FUN_00d30c30(2,0,0,DAT_018d1498,0);
  iVar3 = FUN_00eae9a0();
  *(undefined ***)(iVar3 + 0xc) = &PTR_DAT_01b68534;
  FUN_00eaebef();
  uVar4 = FUN_005a4920();
  *(undefined4 *)(iVar2 + 0x24) = 0;
  FUN_00409ef0(0,uVar4);
  FUN_00cbb7d0();
  FUN_0040f100();
  iVar3 = FUN_00eae9a0();
  if (PTR_FUN_01c2139c != (undefined *)0x0) {
    FUN_00e8c561();
  }
  puVar6 = &DAT_01571588;
  puVar7 = (undefined1 *)(iVar3 + 0x154);
  for (iVar5 = 0x48; iVar5 != 0; iVar5 = iVar5 + -1) {
    *puVar7 = *puVar6;
    puVar6 = puVar6 + 1;
    puVar7 = puVar7 + 1;
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
  FUN_00de4130(2,0);
  FUN_00de4130(2,2);
  if (PTR_FUN_01c21040 != (undefined *)0x0) {
    FUN_00e8d0e6();
  }
  FUN_00d37210(2,3);
  if (PTR_FUN_01c213a0 != (undefined *)0x0) {
    FUN_00e8dd1e();
  }
  uVar4 = DAT_01c282dc;
  FUN_00dda510();
  FUN_00dda510();
  iVar3 = FUN_00eae9a0(uVar4);
  *(undefined ***)(iVar3 + 0xc) = &PTR_DAT_01b68534;
  FUN_00eaebef();
  uVar4 = FUN_005a4920();
  *(undefined4 *)(iVar2 + 0x24) = 0;
  FUN_00409ef0(0,uVar4);
  FUN_00cbb7d0();
  FUN_0040f100();
  FUN_00cbb7d0();
  (*(code *)PTR_FUN_01c3bd88)();
  return uVar1;
}

