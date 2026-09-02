/* Address: 0061ba70 | Ghidra name: FUN_0061ba70 */

undefined4 FUN_0061ba70(void)

{
  int *piVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  undefined4 in_stack_ffffffc8;
  
  iVar3 = FUN_005ebf70();
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
  uVar2 = *(undefined4 *)(iVar3 + 8);
  (*(code *)PTR_FUN_01c35ac8)();
  iVar4 = *(int *)(iVar3 + 0x18);
  *(int *)(iVar4 + 0xc) = *(int *)(iVar4 + 0xc) + 1;
  if (*(uint *)(iVar4 + 8) < *(uint *)(*(int *)(iVar4 + 4) + 4)) {
    *(uint *)(iVar4 + 8) = *(uint *)(iVar4 + 8) + 1;
    FUN_0099b2e0(uVar2);
  }
  else {
    FUN_00ccd380();
  }
  FUN_00eaec5e();
  iVar4 = FUN_00eae9a0();
  if (PTR_FUN_01c21234 != (undefined *)0x0) {
    FUN_00e8d768();
  }
  uVar7 = DAT_01c28184;
  iVar5 = FUN_00eae9a0(DAT_01c28184);
  *(undefined ***)(iVar5 + 4) = &PTR_DAT_01c137e4;
  FUN_00eaebca();
  iVar5 = FUN_00eae9a0();
  iVar4 = *(int *)(iVar4 + 4);
  *(undefined ***)(iVar5 + 4) = &PTR_DAT_01bfd33c;
  *(undefined4 *)(iVar5 + 8) = 0;
  piVar1 = (int *)(iVar4 + 0xc);
  *piVar1 = *piVar1 + 1;
  FUN_00ccd380();
  uVar6 = FUN_00eae9a0();
  if (PTR_FUN_01c21414 != (undefined *)0x0) {
    FUN_00e8defa();
  }
  FUN_00ea3a1b(uVar7,in_stack_ffffffc8);
  FUN_004588d0(0,uVar6);
  uVar7 = FUN_00eae9a0();
  FUN_00ccde10(uVar7);
  FUN_00eaebca();
  FUN_00eae9a0();
  FUN_00458150();
  FUN_00eaec14();
  FUN_00eaebca();
  uVar6 = FUN_005a4840();
  *(undefined4 *)(iVar3 + 0x24) = 0;
  FUN_00409ef0(0,uVar6);
  iVar4 = FUN_00eae9a0();
  *(undefined ***)(iVar4 + 0xc) = &PTR_DAT_01bb4a48;
  FUN_00eaec14();
  uVar6 = FUN_005a4920();
  *(undefined4 *)(iVar3 + 0x24) = 0;
  FUN_00409ef0(0,uVar6);
  iVar4 = FUN_00eae9a0();
  if (PTR_FUN_01c21040 != (undefined *)0x0) {
    FUN_00e8d0e6();
  }
  *(undefined ***)(iVar4 + 0xc) = &PTR_DAT_01bb4ab0;
  FUN_00eaebef();
  uVar6 = FUN_005a4920();
  *(undefined4 *)(iVar3 + 0x24) = 0;
  FUN_00409ef0(0,uVar6);
  iVar5 = 0x61bcc1;
  iVar4 = FUN_00eae9a0();
  uVar6 = *(undefined4 *)(iVar5 + 8);
  *(undefined ***)(iVar4 + 0xc) = &PTR_DAT_01bb4bf0;
  FUN_00eaec14();
  uVar8 = FUN_005a4920();
  *(undefined4 *)(iVar3 + 0x24) = 0;
  FUN_00409ef0(0,uVar8);
  iVar5 = 0x61bd02;
  iVar4 = FUN_00eae9a0();
  uVar8 = *(undefined4 *)(iVar5 + 0xc);
  *(undefined ***)(iVar4 + 0xc) = &PTR_DAT_01bb4c94;
  FUN_00eaec14(uVar7,uVar8,uVar6);
  uVar7 = FUN_005a4920();
  *(undefined4 *)(iVar3 + 0x24) = 0;
  FUN_00409ef0(0,uVar7);
  FUN_00cbbc50();
  (*(code *)PTR_FUN_01c3bf60)();
  return uVar2;
}

