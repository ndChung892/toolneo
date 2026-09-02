/* Address: 006b51c0 | Ghidra name: FUN_006b51c0 */

void FUN_006b51c0(void)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int extraout_ECX;
  int extraout_ECX_00;
  int extraout_ECX_01;
  int extraout_ECX_02;
  
  iVar3 = FUN_00eae9a0();
  *(undefined ***)(iVar3 + 4) = &PTR_DAT_01c0a398;
  if (PTR_FUN_01c21504 != (undefined *)0x0) {
    FUN_00e8e0f8();
  }
  iVar3 = DAT_01c28560;
  FUN_00eaec39();
  iVar4 = FUN_00eae9a0();
  *(undefined4 *)(iVar4 + 8) = 1;
  *(undefined ***)(iVar4 + 4) = &PTR_DAT_01b9a98c;
  FUN_00eaebca();
  iVar4 = FUN_00eae9a0();
  *(undefined4 *)(iVar4 + 8) = 1;
  *(undefined ***)(iVar4 + 4) = &PTR_DAT_01be9ec4;
  FUN_00eaebca();
  iVar4 = FUN_00eae9a0();
  *(undefined4 *)(iVar4 + 8) = 1;
  *(undefined ***)(iVar4 + 4) = &PTR_DAT_01b552a4;
  FUN_00eaebca();
  iVar4 = FUN_00eae9a0();
  *(undefined4 *)(iVar4 + 8) = 1;
  *(undefined ***)(iVar4 + 4) = &PTR_DAT_01b552c4;
  FUN_00eaebca();
  iVar4 = FUN_00eae9a0();
  *(undefined4 *)(iVar4 + 8) = 1;
  *(undefined ***)(iVar4 + 4) = &PTR_DAT_01b552e0;
  FUN_00eaebca();
  FUN_00eaeae1();
  FUN_00eaebef();
  FUN_00eaebef();
  FUN_00eaebef();
  FUN_00eaebef();
  FUN_00eaebef();
  FUN_00eaebca();
  if (PTR_FUN_01c2104c != (undefined *)0x0) {
    FUN_00e8d119();
  }
  iVar2 = DAT_01c27f00;
  uVar1 = *(undefined4 *)(DAT_01c27f00 + 4);
  iVar4 = *(int *)(iVar3 + 4);
  *(int *)(iVar4 + 0xc) = *(int *)(iVar4 + 0xc) + 1;
  if (*(uint *)(iVar4 + 8) < *(uint *)(*(int *)(iVar4 + 4) + 4)) {
    *(uint *)(iVar4 + 8) = *(uint *)(iVar4 + 8) + 1;
    FUN_00eaec14(*(int *)(iVar4 + 4));
    *(undefined2 *)(extraout_ECX + 4) = 0xd;
  }
  else {
    FUN_00c91590(uVar1,0xd);
  }
  uVar1 = *(undefined4 *)(iVar2 + 0xc);
  iVar4 = *(int *)(iVar3 + 4);
  *(int *)(iVar4 + 0xc) = *(int *)(iVar4 + 0xc) + 1;
  if (*(uint *)(iVar4 + 8) < *(uint *)(*(int *)(iVar4 + 4) + 4)) {
    *(uint *)(iVar4 + 8) = *(uint *)(iVar4 + 8) + 1;
    FUN_00eaec39();
    *(undefined2 *)(extraout_ECX_00 + 4) = 0xf;
  }
  else {
    FUN_00c91590(uVar1,0xf);
  }
  uVar1 = *(undefined4 *)(iVar3 + 0x14);
  iVar4 = *(int *)(iVar3 + 4);
  *(int *)(iVar4 + 0xc) = *(int *)(iVar4 + 0xc) + 1;
  if (*(uint *)(iVar4 + 8) < *(uint *)(*(int *)(iVar4 + 4) + 4)) {
    *(uint *)(iVar4 + 8) = *(uint *)(iVar4 + 8) + 1;
    FUN_00eaec39();
    *(undefined2 *)(extraout_ECX_01 + 4) = 8;
  }
  else {
    FUN_00c91590(uVar1,8);
  }
  uVar1 = *(undefined4 *)(iVar3 + 0x18);
  iVar4 = *(int *)(iVar3 + 4);
  *(int *)(iVar4 + 0xc) = *(int *)(iVar4 + 0xc) + 1;
  if (*(uint *)(iVar4 + 8) < *(uint *)(*(int *)(iVar4 + 4) + 4)) {
    *(uint *)(iVar4 + 8) = *(uint *)(iVar4 + 8) + 1;
    FUN_00eaec39();
    *(undefined2 *)(extraout_ECX_02 + 4) = 0x11;
  }
  else {
    FUN_00c91590(uVar1,0x11);
  }
  uVar1 = *(undefined4 *)(iVar3 + 0x10);
  iVar3 = *(int *)(iVar3 + 4);
  *(int *)(iVar3 + 0xc) = *(int *)(iVar3 + 0xc) + 1;
  if (*(uint *)(iVar3 + 8) < *(uint *)(*(int *)(iVar3 + 4) + 4)) {
    *(uint *)(iVar3 + 8) = *(uint *)(iVar3 + 8) + 1;
    iVar3 = FUN_00eaec39();
    *(undefined2 *)(iVar3 + 4) = 2;
  }
  else {
    FUN_00c91590(uVar1,2);
  }
  return;
}

