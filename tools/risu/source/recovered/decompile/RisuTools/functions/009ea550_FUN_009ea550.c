/* Address: 009ea550 | Ghidra name: FUN_009ea550 */

undefined4 __fastcall FUN_009ea550(int param_1,int param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  
  iVar3 = FUN_009052e0(5);
  if (iVar3 == 0) {
    return 0;
  }
  if ((*(int *)(param_1 + 8) != 0) && (iVar3 = FUN_009ea600(), iVar3 == 0)) {
    FUN_009a36b0();
    uVar1 = *(undefined4 *)(param_2 + 8);
    uVar2 = *(undefined4 *)(param_1 + 8);
    iVar3 = FUN_00eae9a0();
    FUN_00907220(uVar2,uVar1);
    *(undefined4 *)(iVar3 + 0x24) = 0x80131500;
    FUN_00eaebca();
    *(undefined4 *)(iVar3 + 0x24) = 0x80131621;
    FUN_00eaed47();
    return 0;
  }
  if ((*(int *)(param_1 + 0xc) != 0) && (iVar3 = FUN_009052b0(), iVar3 == 0)) {
    return 0;
  }
  return 1;
}

