/* Address: 004423c0 | Ghidra name: FUN_004423c0 */

void FUN_004423c0(void)

{
  int iVar1;
  
  iVar1 = FUN_00eae9a0();
  *(undefined4 *)(iVar1 + 8) = 2;
  *(undefined ***)(iVar1 + 4) = &PTR_DAT_01bb5a80;
  if (PTR_FUN_01c2104c != (undefined *)0x0) {
    FUN_00e8d119();
  }
  FUN_00eaec39();
  iVar1 = FUN_00eae9a0();
  *(undefined4 *)(iVar1 + 8) = 2;
  *(undefined ***)(iVar1 + 4) = &PTR_DAT_01b531f8;
  FUN_00eaebca();
  iVar1 = FUN_00eae9a0();
  *(undefined4 *)(iVar1 + 8) = 2;
  *(undefined ***)(iVar1 + 4) = &PTR_DAT_01b72c3c;
  FUN_00eaebca();
  return;
}

