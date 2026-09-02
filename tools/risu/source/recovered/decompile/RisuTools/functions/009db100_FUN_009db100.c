/* Address: 009db100 | Ghidra name: FUN_009db100 */

void __fastcall FUN_009db100(undefined4 param_1,int param_2)

{
  int iVar1;
  
  if (param_2 != -1) {
    iVar1 = FUN_00eae9a0();
    *(undefined4 *)(iVar1 + 0x24) = 0x80131500;
    *(undefined ***)(iVar1 + 4) = &PTR_DAT_01b6f154;
    *(undefined4 *)(iVar1 + 0x24) = 0x80131509;
    return;
  }
  iVar1 = FUN_00eae9a0();
  *(undefined4 *)(iVar1 + 0x24) = 0x80131500;
  *(undefined ***)(iVar1 + 4) = &PTR_DAT_01b6f220;
  *(undefined4 *)(iVar1 + 0x24) = 0x80131509;
  return;
}

