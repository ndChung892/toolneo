/* Address: 0089c070 | Ghidra name: FUN_0089c070 */

void __fastcall FUN_0089c070(int param_1,int param_2,int param_3)

{
  int iVar1;
  int iVar2;
  
  iVar1 = FUN_00eae9a0();
  *(undefined4 *)(iVar1 + 4) = *(undefined4 *)(param_1 + 0x20);
  iVar2 = FUN_00eae9a0();
  *(int *)(iVar2 + 4) = param_2;
  FUN_00907220(iVar2,iVar1);
  iVar1 = FUN_00eae9a0();
  *(undefined4 *)(iVar1 + 0x24) = 0x80131500;
  FUN_00eaec14(iVar1);
  iVar1 = FUN_00eaec14();
  if (param_3 != 0) {
    *(undefined4 *)(iVar1 + 0x24) = *(undefined4 *)(param_3 + 0x24);
  }
  *(undefined4 *)(iVar1 + 0x34) = 0;
  *(undefined4 *)(iVar1 + 0x38) = 0;
  *(undefined4 *)(iVar1 + 0x30) = 6;
  iVar1 = FUN_008992b0();
  if ((iVar1 != 0) && (param_2 == 2)) {
    iVar1 = FUN_00eae9a0();
    FUN_0090dac0();
    *(undefined1 *)(iVar1 + 4) = 0;
    (*(code *)PTR_FUN_01c3c898)(iVar1);
  }
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

