/* Address: 0097f740 | Ghidra name: FUN_0097f740 */

uint __fastcall FUN_0097f740(int param_1,uint param_2)

{
  int iVar1;
  int iVar2;
  int iVar3;
  undefined8 uVar4;
  
  if ((int)param_2 < 0) {
                    /* WARNING: Subroutine does not return */
    FUN_00de6f20();
  }
  iVar3 = param_2 + 1;
  iVar2 = ((int)param_2 >> 0x1f) + (uint)(0xfffffffe < param_2);
  uVar4 = CONCAT44(iVar2,iVar3);
  if (((undefined *)**(undefined4 **)(param_1 + 8) == &DAT_01615aac) &&
     (iVar1 = (*(undefined4 **)(param_1 + 8))[1], uVar4 = CONCAT44(iVar2,iVar3),
     1 < *(int *)(iVar1 + 4))) {
    iVar1 = *(int *)(iVar1 + 4);
    uVar4 = __allmul(iVar1,iVar1 >> 0x1f,iVar3,iVar2);
  }
  if ((int)((ulonglong)uVar4 >> 0x20) < (int)(uint)((uint)uVar4 < 0x80000000)) {
    return (uint)uVar4;
  }
  FUN_00eae9a0();
  FUN_009117c0(&PTR_DAT_01bcc2f0);
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

