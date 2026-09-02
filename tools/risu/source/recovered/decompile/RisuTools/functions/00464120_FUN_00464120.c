/* Address: 00464120 | Ghidra name: FUN_00464120 */

void FUN_00464120(void)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  
  iVar3 = 0;
  uVar1 = (*(code *)PTR_FUN_01c465f0)();
  while( true ) {
    iVar2 = (*(code *)PTR_FUN_01c39d30)(uVar1);
    if (iVar2 == 0) break;
    (*(code *)PTR_FUN_01c467f8)();
    FUN_004644c0();
    if (iVar3 == 0) {
      iVar3 = FUN_00eae9a0();
      *(undefined ***)(iVar3 + 4) = &PTR_DAT_01c0f378;
    }
    *(int *)(iVar3 + 0xc) = *(int *)(iVar3 + 0xc) + 1;
    if (*(uint *)(iVar3 + 8) < *(uint *)(*(int *)(iVar3 + 4) + 4)) {
      *(uint *)(iVar3 + 8) = *(uint *)(iVar3 + 8) + 1;
      FUN_00eaec14();
    }
    else {
      FUN_00ccd380();
    }
  }
  (*(code *)PTR_FUN_01c366c0)();
  if (iVar3 != 0) {
    FUN_00cb1880();
    FUN_00464440();
  }
  return;
}

