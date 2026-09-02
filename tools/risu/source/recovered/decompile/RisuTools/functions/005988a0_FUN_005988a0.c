/* Address: 005988a0 | Ghidra name: FUN_005988a0 */

int FUN_005988a0(void)

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
  *(undefined ***)(iVar2 + 0x3c) = &PTR_DAT_01bfd89c;
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
  iVar4 = FUN_00eae9a0();
  *(undefined ***)(iVar4 + 0xc) = &PTR_DAT_01b6825c;
  FUN_005936c0();
  FUN_00eaebca();
  FUN_005a4920();
  *(undefined4 *)(iVar1 + 0x24) = 0;
  FUN_0041c640();
  FUN_00cbb7d0();
  FUN_0041d1a0();
  (*(code *)PTR_FUN_01c51908)();
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
  FUN_00eaebef();
  iVar4 = FUN_00eae9a0();
  *(undefined ***)(iVar4 + 0xc) = &PTR_DAT_01b681a4;
  FUN_005936c0();
  FUN_00eaebca();
  FUN_005a4920();
  *(undefined4 *)(iVar1 + 0x24) = 0;
  FUN_0041c640();
  FUN_00cbb7d0();
  FUN_0041d1a0();
  (*(code *)PTR_FUN_01c51908)();
  FUN_00eae9a0();
  if (PTR_FUN_01c21270 != (undefined *)0x0) {
    FUN_00e8d845();
  }
  FUN_00eaebef();
  iVar4 = FUN_00eae9a0();
  *(undefined4 *)(iVar4 + 4) = 0;
  FUN_0041c640();
  FUN_0041d1a0();
  (*(code *)PTR_FUN_01c51908)();
  FUN_00eae9a0();
  FUN_00eaebef();
  iVar4 = FUN_00eae9a0();
  *(undefined4 *)(iVar4 + 4) = 2;
  FUN_0041c640();
  FUN_0041d1a0();
  (*(code *)PTR_FUN_01c51908)();
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
  if (PTR_FUN_01c2146c != (undefined *)0x0) {
    FUN_00e8dfd7();
  }
  FUN_00eaebef();
  iVar4 = FUN_00eae9a0();
  *(undefined ***)(iVar4 + 0xc) = &PTR_DAT_01b68534;
  FUN_005936c0();
  FUN_00eaebca();
  FUN_005a4920();
  *(undefined4 *)(iVar1 + 0x24) = 0;
  FUN_0041c640();
  FUN_00cbb7d0();
  FUN_0041d1a0();
  (*(code *)PTR_FUN_01c51908)();
  FUN_00eae9a0();
  FUN_00eaebef();
  iVar4 = FUN_00eae9a0();
  *(undefined8 *)(iVar4 + 4) = DAT_018d1468;
  *(undefined8 *)(iVar4 + 0xc) = 0;
  *(undefined8 *)(iVar4 + 0x14) = 0;
  *(undefined8 *)(iVar4 + 0x1c) = 0;
  FUN_0041c640();
  FUN_0041d1a0();
  (*(code *)PTR_FUN_01c51908)();
  FUN_00eae9a0();
  FUN_00eaebef();
  iVar4 = FUN_00eae9a0();
  *(undefined8 *)(iVar4 + 4) = DAT_018d1468;
  FUN_0041c640();
  FUN_0041d1a0();
  (*(code *)PTR_FUN_01c51908)();
  FUN_00eae9a0();
  if (PTR_FUN_01c21040 != (undefined *)0x0) {
    FUN_00e8d0e6();
  }
  FUN_00eaebef();
  iVar4 = FUN_00eae9a0();
  *(undefined8 *)(iVar4 + 4) = DAT_018d1470;
  FUN_0041c640();
  FUN_0041d1a0();
  (*(code *)PTR_FUN_01c51908)();
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
  (*(code *)PTR_FUN_01c51908)();
  FUN_00eae9a0();
  FUN_004098c0();
  FUN_00eae9a0();
  FUN_0041c430();
  FUN_00eae9a0();
  FUN_0041e9e0();
  FUN_0041c580();
  FUN_0041c4d0();
  FUN_0041d030();
  FUN_00eaebca();
  FUN_00eae9a0();
  if (PTR_FUN_01c20fa0 != (undefined *)0x0) {
    FUN_00e8cf4e();
  }
  FUN_00eaebca();
  iVar4 = FUN_00eae9a0();
  *(undefined1 *)(iVar4 + 4) = 1;
  FUN_0041c640();
  FUN_0041d1a0();
  (*(code *)PTR_FUN_01c51908)();
  FUN_0041d070();
  (*(code *)PTR_FUN_01c51660)();
  uVar3 = FUN_00eae9a0();
  FUN_004098c0();
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
  FUN_00eae9a0();
  FUN_0041c430();
  FUN_00eae9a0();
  FUN_0041e9e0();
  FUN_0041efd0();
  FUN_0041c4d0();
  FUN_0041d030();
  FUN_00eaebca();
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
  if (PTR_FUN_01c21304 != (undefined *)0x0) {
    FUN_00e8da98();
  }
  FUN_00eaebef();
  iVar4 = FUN_00eae9a0();
  *(undefined ***)(iVar4 + 0xc) = &PTR_DAT_01b682b0;
  FUN_005936c0();
  FUN_00eaebca();
  FUN_005a4920();
  *(undefined4 *)(iVar1 + 0x24) = 0;
  FUN_0041c640();
  FUN_00cbb7d0();
  FUN_0041d1a0();
  (*(code *)PTR_FUN_01c51908)();
  FUN_00cbb7d0();
  FUN_0041d070();
  (*(code *)PTR_FUN_01c51660)();
  uVar3 = FUN_00eae9a0();
  FUN_004098c0();
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
  FUN_00eae9a0();
  FUN_0041c430();
  FUN_00eae9a0();
  FUN_0041e9e0();
  FUN_0041efd0();
  FUN_0041c4d0();
  FUN_0041d030();
  FUN_00eaebca();
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
  FUN_00eaebef();
  iVar4 = FUN_00eae9a0();
  *(undefined ***)(iVar4 + 0xc) = &PTR_DAT_01b68314;
  FUN_005936c0();
  FUN_00eaebca();
  FUN_005a4920();
  *(undefined4 *)(iVar1 + 0x24) = 0;
  FUN_0041c640();
  FUN_00cbb7d0();
  FUN_0041d1a0();
  (*(code *)PTR_FUN_01c51908)();
  FUN_00cbb7d0();
  FUN_0041d070();
  (*(code *)PTR_FUN_01c51660)();
  FUN_00eae9a0();
  FUN_004098c0();
  FUN_00eae9a0();
  FUN_0041c430();
  FUN_0041d030();
  FUN_00eaebca();
  FUN_00eae9a0();
  FUN_00eaebef();
  iVar4 = FUN_00eae9a0();
  *(undefined8 *)(iVar4 + 4) = DAT_018d1478;
  FUN_0041c640();
  FUN_0041d1a0();
  (*(code *)PTR_FUN_01c51908)();
  FUN_0041d070();
  (*(code *)PTR_FUN_01c51660)();
  uVar3 = FUN_00eae9a0();
  FUN_004098c0();
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
  FUN_00eae9a0();
  FUN_0041c430();
  FUN_00eae9a0();
  FUN_0041e9e0();
  FUN_0041efd0();
  FUN_0041c4d0();
  FUN_0041d030();
  FUN_00eaebca();
  FUN_00eae9a0();
  FUN_00eaebef();
  iVar4 = FUN_00eae9a0();
  *(undefined1 *)(iVar4 + 4) = 1;
  FUN_0041c640();
  FUN_0041d1a0();
  (*(code *)PTR_FUN_01c51908)();
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
  if (PTR_FUN_01c21398 != (undefined *)0x0) {
    FUN_00e8dcfc();
  }
  FUN_00eaebef(DAT_01c282d4);
  FUN_005936c0();
  FUN_00eaebca();
  FUN_005a4be0();
  *(undefined4 *)(iVar1 + 0x24) = 0;
  FUN_0041c640();
  FUN_00cbb7d0();
  FUN_0041d1a0();
  (*(code *)PTR_FUN_01c51908)();
  FUN_00cbb7d0();
  FUN_0041d070();
  (*(code *)PTR_FUN_01c51660)();
  uVar3 = FUN_00eae9a0();
  FUN_004098c0();
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
  FUN_00eae9a0();
  FUN_0041c430();
  FUN_00eae9a0();
  FUN_0041e9e0();
  FUN_0041efd0();
  FUN_0041c4d0();
  FUN_0041d030();
  FUN_00eaebca();
  FUN_00eae9a0();
  FUN_00eaebef();
  iVar4 = FUN_00eae9a0();
  *(undefined1 *)(iVar4 + 4) = 1;
  FUN_0041c640();
  FUN_0041d1a0();
  (*(code *)PTR_FUN_01c51908)();
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
  FUN_00eaebef();
  FUN_005936c0();
  FUN_00eaebca();
  FUN_005a4be0();
  *(undefined4 *)(iVar1 + 0x24) = 0;
  FUN_0041c640();
  FUN_00cbb7d0();
  FUN_0041d1a0();
  (*(code *)PTR_FUN_01c51908)();
  FUN_00cbb7d0();
  FUN_0041d070();
  (*(code *)PTR_FUN_01c51660)();
  FUN_00cbb7d0();
  return iVar2;
}

