/* Address: 008ad1d0 | Ghidra name: FUN_008ad1d0 */

undefined4 __fastcall FUN_008ad1d0(int param_1)

{
  int iVar1;
  int iVar2;
  undefined4 uVar3;
  
  if (*(int *)(param_1 + 0x10) == *(int *)(param_1 + 0x18) &&
      *(int *)(param_1 + 0xc) == *(int *)(param_1 + 0x14)) {
    *(undefined4 *)(param_1 + 8) = 0;
    if (PTR_FUN_01c22110 != (undefined *)0x0) {
      FUN_00e8eaee();
    }
    return *(undefined4 *)(DAT_01c28f00 + 0x10);
  }
  iVar1 = FUN_00eae9a0();
  uVar3 = *(undefined4 *)(param_1 + 0x10);
  *(undefined4 *)(iVar1 + 4) = *(undefined4 *)(param_1 + 0xc);
  *(undefined4 *)(iVar1 + 8) = uVar3;
  iVar1 = FUN_00eae9a0();
  uVar3 = *(undefined4 *)(param_1 + 0x18);
  *(undefined4 *)(iVar1 + 4) = *(undefined4 *)(param_1 + 0x14);
  *(undefined4 *)(iVar1 + 8) = uVar3;
  iVar2 = FUN_00eae9a0();
  FUN_00890cc0(iVar1);
  *(undefined4 *)(iVar2 + 0x24) = 0x80131500;
  FUN_00eaebca();
  FUN_0099bd80();
  uVar3 = FUN_00974db0();
  return uVar3;
}

