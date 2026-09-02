/* Address: 0059b0b0 | Ghidra name: FUN_0059b0b0 */

int FUN_0059b0b0(void)

{
  int iVar1;
  int iVar2;
  undefined4 uVar3;
  int iVar4;
  
  iVar1 = FUN_00594df0();
  iVar2 = FUN_00eae9a0();
  FUN_004098c0();
  iVar4 = *(int *)(iVar1 + 0x18);
  *(int *)(iVar4 + 0xc) = *(int *)(iVar4 + 0xc) + 1;
  if (*(uint *)(iVar4 + 8) < *(uint *)(*(int *)(iVar4 + 4) + 4)) {
    *(uint *)(iVar4 + 8) = *(uint *)(iVar4 + 8) + 1;
    FUN_0099b2e0(iVar2);
  }
  else {
    FUN_00ccd380();
  }
  FUN_00eaec5e();
  *(undefined ***)(iVar2 + 0x3c) = &PTR_DAT_01bfd93c;
  uVar3 = FUN_00eae9a0();
  iVar4 = *(int *)(iVar1 + 0x18);
  *(int *)(iVar4 + 0xc) = *(int *)(iVar4 + 0xc) + 1;
  if (*(uint *)(iVar4 + 8) < *(uint *)(*(int *)(iVar4 + 4) + 4)) {
    *(uint *)(iVar4 + 8) = *(uint *)(iVar4 + 8) + 1;
    FUN_0099b2e0(uVar3);
  }
  else {
    FUN_00ccd380();
  }
  FUN_00eaec14();
  if (PTR_FUN_01c214d4 != (undefined *)0x0) {
    FUN_00e8e03d();
  }
  FUN_00eaebef(DAT_01c284c4);
  iVar4 = FUN_00eae9a0();
  *(undefined ***)(iVar4 + 0xc) = &PTR_DAT_01b68534;
  FUN_005936c0();
  FUN_00eaebca();
  FUN_005a4920();
  *(undefined4 *)(iVar1 + 0x24) = 0;
  FUN_0041c640();
  FUN_00cbb7d0();
  FUN_0041d1a0();
  (*(code *)PTR_FUN_01c51918)();
  FUN_00eae9a0();
  FUN_00eaebef();
  iVar4 = FUN_00eae9a0();
  *(undefined1 *)(iVar4 + 4) = 0;
  FUN_0041c640();
  FUN_0041d1a0();
  (*(code *)PTR_FUN_01c51918)();
  uVar3 = FUN_00eae9a0();
  iVar4 = *(int *)(iVar1 + 0x18);
  *(int *)(iVar4 + 0xc) = *(int *)(iVar4 + 0xc) + 1;
  if (*(uint *)(iVar4 + 8) < *(uint *)(*(int *)(iVar4 + 4) + 4)) {
    *(uint *)(iVar4 + 8) = *(uint *)(iVar4 + 8) + 1;
    FUN_0099b2e0(uVar3);
  }
  else {
    FUN_00ccd380();
  }
  FUN_00eaec14();
  if (PTR_FUN_01c21414 != (undefined *)0x0) {
    FUN_00e8defa();
  }
  FUN_00eaebef();
  uVar3 = FUN_00eae9a0();
  iVar4 = *(int *)(iVar1 + 0x18);
  *(int *)(iVar4 + 0xc) = *(int *)(iVar4 + 0xc) + 1;
  if (*(uint *)(iVar4 + 8) < *(uint *)(*(int *)(iVar4 + 4) + 4)) {
    *(uint *)(iVar4 + 8) = *(uint *)(iVar4 + 8) + 1;
    FUN_0099b2e0(uVar3);
  }
  else {
    FUN_00ccd380();
  }
  FUN_00eaebca();
  FUN_00e4c3f0(&PTR_DAT_0153d170);
  FUN_00eaebca();
  FUN_00cbb7d0();
  FUN_0041c640();
  FUN_00cbb7d0();
  FUN_0041d1a0();
  (*(code *)PTR_FUN_01c51918)();
  FUN_00cbb7d0();
  return iVar2;
}

