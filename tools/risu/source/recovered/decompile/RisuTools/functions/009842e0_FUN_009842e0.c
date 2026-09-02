/* Address: 009842e0 | Ghidra name: FUN_009842e0 */

uint __fastcall FUN_009842e0(int param_1,uint param_2)

{
  int iVar1;
  uint uVar2;
  int iVar3;
  int iVar4;
  undefined8 uVar5;
  
  if ((int)param_2 < 0) {
                    /* WARNING: Subroutine does not return */
    FUN_00de6f20();
  }
  iVar4 = param_2 + 1;
  iVar3 = ((int)param_2 >> 0x1f) + (uint)(0xfffffffe < param_2);
  uVar5 = CONCAT44(iVar3,iVar4);
  if (((undefined *)**(undefined4 **)(param_1 + 8) == &DAT_01615aac) &&
     (iVar1 = (*(undefined4 **)(param_1 + 8))[1], uVar5 = CONCAT44(iVar3,iVar4),
     1 < *(int *)(iVar1 + 4))) {
    iVar1 = *(int *)(iVar1 + 4);
    uVar5 = __allmul(iVar1,iVar1 >> 0x1f,iVar4,iVar3);
  }
  uVar2 = (uint)uVar5 * 2;
  if ((int)((int)((ulonglong)uVar5 >> 0x20) << 1 | (uint)uVar5 >> 0x1f) <
      (int)(uint)(uVar2 < 0x80000000)) {
    return uVar2;
  }
  FUN_00eae9a0();
  FUN_009117c0(&PTR_DAT_01bcc2f0);
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

