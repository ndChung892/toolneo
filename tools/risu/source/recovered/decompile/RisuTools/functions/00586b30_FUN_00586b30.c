/* Address: 00586b30 | Ghidra name: FUN_00586b30 */

void FUN_00586b30(void)

{
  int iVar1;
  
  iVar1 = FUN_00eae9a0();
  *(undefined4 *)(iVar1 + 0x24) = 0x80131500;
  *(undefined ***)(iVar1 + 4) = &PTR_DAT_01b83074;
  *(undefined4 *)(iVar1 + 0x24) = 0x80131509;
  return;
}

