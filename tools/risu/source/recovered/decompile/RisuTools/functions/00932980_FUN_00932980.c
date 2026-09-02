/* Address: 00932980 | Ghidra name: FUN_00932980 */

void __fastcall FUN_00932980(int param_1)

{
  int iVar1;
  undefined **ppuVar2;
  
  ppuVar2 = &PTR_DAT_01b6f220;
  if (-1 < param_1) {
    ppuVar2 = &PTR_DAT_01b6f154;
  }
  iVar1 = FUN_00eae9a0();
  *(undefined4 *)(iVar1 + 0x24) = 0x80131500;
  *(undefined ***)(iVar1 + 4) = ppuVar2;
  *(undefined4 *)(iVar1 + 0x24) = 0x80131509;
  return;
}

