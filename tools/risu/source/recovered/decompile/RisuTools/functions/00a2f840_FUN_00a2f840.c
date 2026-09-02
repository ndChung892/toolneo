/* Address: 00a2f840 | Ghidra name: FUN_00a2f840 */

void __fastcall FUN_00a2f840(int param_1,int param_2)

{
  uint uVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  undefined4 uVar5;
  
  iVar3 = FUN_00a308a0();
  if (iVar3 == 0) {
    iVar3 = FUN_00a2ef70(0);
    uVar1 = *(uint *)(*(int *)(iVar3 + 4) + 4);
    iVar3 = FUN_00eae9a0();
    iVar4 = FUN_00a2e420();
    if (iVar4 == 0) {
                    /* WARNING: Subroutine does not return */
      FUN_00911740();
    }
    FUN_00a2d1e0(0);
    if (uVar1 == 0) {
      FUN_00a2d8a0();
      uVar5 = FUN_00eae9a0();
      if (PTR_FUN_01c22014 != (undefined *)0x0) {
        FUN_00e8ea44(uVar5);
      }
      uVar5 = FUN_0095bbb0();
      FUN_00a17be0(0,0,param_1,*(undefined4 *)(param_1 + 0x44),*(undefined4 *)(param_1 + 0x44),
                   &PTR_DAT_01be995c,uVar5);
      FUN_00a17da0();
      uVar5 = *(undefined4 *)(iVar3 + 4);
      uVar2 = *(undefined4 *)(iVar3 + 8);
      iVar3 = FUN_00eae9a0();
      *(undefined4 *)(iVar3 + 4) = uVar5;
      *(undefined4 *)(iVar3 + 8) = uVar2;
      uVar5 = FUN_009007a0();
      (*(code *)PTR_FUN_01c53cc8)(uVar5);
      *(int *)(param_2 + 0xc) = *(int *)(param_2 + 0xc) + 1;
      if (*(uint *)(param_2 + 8) < *(uint *)(*(int *)(param_2 + 4) + 4)) {
        *(uint *)(param_2 + 8) = *(uint *)(param_2 + 8) + 1;
        FUN_00eaec39();
      }
      else {
        FUN_00ccd380();
      }
    }
    else if ((uVar1 & 0x10) != 0) {
      FUN_00a2d8a0();
      FUN_00eae9a0();
      if (PTR_FUN_01c22014 != (undefined *)0x0) {
        FUN_00e8ea44();
      }
      uVar5 = FUN_0095bbb0();
      FUN_00a17be0(0,0,param_1,*(undefined4 *)(param_1 + 0x44),*(undefined4 *)(param_1 + 0x44),
                   &PTR_DAT_01be995c,uVar5);
      FUN_00a17da0();
      uVar5 = *(undefined4 *)(iVar3 + 4);
      uVar2 = *(undefined4 *)(iVar3 + 8);
      iVar3 = FUN_00eae9a0();
      *(undefined4 *)(iVar3 + 4) = uVar5;
      *(undefined4 *)(iVar3 + 8) = uVar2;
      uVar5 = FUN_009007a0();
      (*(code *)PTR_FUN_01c53cc8)(uVar5);
      *(int *)(param_2 + 0xc) = *(int *)(param_2 + 0xc) + 1;
      if (*(uint *)(param_2 + 8) < *(uint *)(*(int *)(param_2 + 4) + 4)) {
        *(uint *)(param_2 + 8) = *(uint *)(param_2 + 8) + 1;
        FUN_00eaec39();
      }
      else {
        FUN_00ccd380();
      }
    }
    FUN_009a2b60();
    FUN_009024f0();
  }
  return;
}

