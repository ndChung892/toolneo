/* Address: 0049f690 | Ghidra name: FUN_0049f690 */

void FUN_0049f690(void)

{
  int iVar1;
  
  iVar1 = FUN_00eae9a0();
  *(undefined4 *)(iVar1 + 0x14) = 0x7fffffff;
  FUN_00eaea6e();
  FUN_00eaebca();
  FUN_00978480(0x11);
  FUN_00978480(3);
  iVar1 = FUN_0049f720();
  if (iVar1 != 0) {
    FUN_009779b0();
  }
  FUN_009779b0();
  FUN_00977000();
  return;
}

