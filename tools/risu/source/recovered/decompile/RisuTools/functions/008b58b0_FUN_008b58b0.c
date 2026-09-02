/* Address: 008b58b0 | Ghidra name: FUN_008b58b0 */

void FUN_008b58b0(void)

{
  int iVar1;
  
  iVar1 = FUN_0099aa80();
  if (iVar1 == 0) {
    iVar1 = FUN_00eae9a0();
    *(undefined4 *)(iVar1 + 0x24) = 0x80131500;
    *(undefined ***)(iVar1 + 4) = &PTR_DAT_01bc158c;
    iVar1 = FUN_00eaec39();
    *(undefined4 *)(iVar1 + 0x24) = 0x80131620;
    FUN_0099bd80();
  }
  return;
}

