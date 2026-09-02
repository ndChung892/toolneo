/* Address: 00a2ed60 | Ghidra name: FUN_00a2ed60 */

int __fastcall FUN_00a2ed60(int param_1)

{
  int iVar1;
  
  if (param_1 == -0x3fffffde) {
    iVar1 = FUN_00eae9a0();
    *(undefined4 *)(iVar1 + 0x24) = 0x80131500;
    *(undefined ***)(iVar1 + 4) = &PTR_DAT_01b51008;
    *(undefined4 *)(iVar1 + 0x24) = 0x80070005;
    return iVar1;
  }
  if ((param_1 != -0x3fffff66) && (param_1 != -0x3fffffe9)) {
    FUN_00a2c060();
    iVar1 = FUN_00eae9a0();
    FUN_009c47d0();
    *(undefined4 *)(iVar1 + 0x24) = 0x80131500;
    FUN_00eaebca();
    *(undefined4 *)(iVar1 + 0x24) = 0x8013150a;
    return iVar1;
  }
  iVar1 = FUN_00eae9a0();
  *(undefined4 *)(iVar1 + 0x24) = 0x80131500;
  *(undefined ***)(iVar1 + 4) = &PTR_DAT_01b7e23c;
  *(undefined4 *)(iVar1 + 0x24) = 0x8007000e;
  return iVar1;
}

