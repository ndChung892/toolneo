/* Address: 00764ec0 | Ghidra name: FUN_00764ec0 */

void __fastcall FUN_00764ec0(int param_1)

{
  int iVar1;
  int iVar2;
  undefined4 uVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  uint uVar7;
  
  iVar6 = *(int *)(param_1 + 4);
  iVar1 = FUN_00eae9a0();
  FUN_00eaec39();
  iVar2 = FUN_009097a0();
  if ((iVar2 == 0) || (*(int *)(iVar2 + 4) == 0)) {
    iVar6 = 0;
  }
  else {
    FUN_00916ec0();
    FUN_0092b430(0,0);
    uVar3 = FUN_00906a20();
    iVar2 = FUN_00909ad0();
    if (iVar2 == 0) {
      iVar2 = FUN_00906aa0(uVar3);
    }
    else {
      iVar2 = FUN_00906aa0(uVar3);
    }
    iVar4 = FUN_00eae9a0();
    *(undefined ***)(iVar4 + 4) = &PTR_DAT_01bef600;
    *(undefined ***)(iVar4 + 8) = &PTR_DAT_01b7d548;
    *(undefined1 *)(iVar4 + 0x40) = 1;
    *(undefined1 *)(iVar4 + 0x48) = 0;
    iVar4 = FUN_00850d90();
    if (((iVar4 != 0) && (iVar5 = FUN_00851170(), iVar5 != 0)) && (*(char *)(iVar4 + 0x82) != '\0'))
    {
      FUN_00850a70();
    }
    *(undefined4 *)(iVar1 + 8) = 0;
    FUN_009019a0();
    iVar4 = FUN_0098def0();
    if (iVar4 == 0) {
      FUN_00911390();
      FUN_008feb40();
    }
    FUN_0098e190(&PTR_DAT_01be709c);
    iVar4 = FUN_0098b370();
    if (iVar4 == 0) {
      FUN_00e393a0(&PTR_PTR_015572f4,6);
      FUN_0098e1e0(0,0);
    }
    iVar4 = FUN_0098b370();
    if (iVar4 == 0) {
      iVar6 = 0;
    }
    else {
      iVar4 = FUN_00909bb0(5,*(undefined4 *)(iVar2 + 4),0);
      if (iVar4 < 0) {
        uVar7 = FUN_00909bb0(5,*(undefined4 *)(iVar2 + 4),0);
        uVar7 = ~uVar7 >> 0x1f;
      }
      else {
        uVar7 = 1;
      }
      if (*(int *)(iVar6 + 0xc) == 0) {
        iVar6 = FUN_00eae9a0();
        FUN_00eaec5e();
        FUN_00906aa0(&PTR_DAT_01b3c82c);
        FUN_00eaebca();
        *(undefined1 *)(iVar6 + 0x48) = 0;
        iVar6 = FUN_00850d90();
        if (iVar6 != 0) {
          FUN_008507c0();
          *(undefined4 *)(iVar1 + 8) = *(undefined4 *)(iVar6 + 0x58);
        }
      }
      else {
        uVar3 = FUN_007804a0(uVar7,iVar2);
        *(undefined4 *)(iVar1 + 8) = uVar3;
      }
      if (0 < *(int *)(iVar1 + 8)) {
        FUN_00eae9a0();
        FUN_00e987ef(iVar2);
        FUN_00974ef0(0);
      }
      iVar6 = *(int *)(iVar1 + 8);
    }
  }
  *(undefined4 *)(param_1 + 8) = 0xfffffffe;
  if (*(int *)(param_1 + 0xc) == 0) {
    if (iVar6 + 1U < 10) {
      if (PTR_FUN_01c2211c != (undefined *)0x0) {
        FUN_00e8eaff();
      }
      if (*(uint *)(*(int *)(DAT_01c28f04 + 0xc) + 4) <= iVar6 + 1U) {
                    /* WARNING: Subroutine does not return */
        FUN_009c2bf0();
      }
    }
    else {
      iVar1 = FUN_00eae9a0();
      *(undefined4 *)(iVar1 + 0x1c) = 0x1000000;
      *(int *)(iVar1 + 0x20) = iVar6;
    }
    FUN_00eaeca8();
  }
  else {
    iVar6 = FUN_00af0320();
    if (iVar6 == 0) {
                    /* WARNING: Subroutine does not return */
      FUN_00931e50();
    }
  }
  return;
}

