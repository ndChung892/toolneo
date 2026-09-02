/* Address: 0086a9e0 | Ghidra name: FUN_0086a9e0 */

int FUN_0086a9e0(void)

{
  int iVar1;
  
  iVar1 = FUN_00eae9a0();
  FUN_008603c0();
  *(undefined4 *)(iVar1 + 0x24) = 0x80131500;
  FUN_00eaebca();
  *(undefined4 *)(iVar1 + 0x24) = 0x80131509;
  return iVar1;
}

