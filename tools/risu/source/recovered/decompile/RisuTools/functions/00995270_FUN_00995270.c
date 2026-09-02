/* Address: 00995270 | Ghidra name: FUN_00995270 */

undefined4 __fastcall FUN_00995270(int *param_1,int *param_2,int param_3)

{
  undefined **ppuVar1;
  int iVar2;
  undefined4 uVar3;
  int iVar4;
  int local_14;
  
  iVar2 = *param_2;
  if ((iVar2 != 0) && (iVar2 = FUN_0098e8d0(iVar2 + 8,*(undefined4 *)(iVar2 + 4)), iVar2 != 0)) {
    FUN_00eae9a0();
    FUN_009115d0(&PTR_DAT_01be6c00);
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  iVar2 = FUN_00909b10();
  if (iVar2 != 0) {
    FUN_00eae9a0();
    FUN_009115d0(*param_2);
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  iVar2 = FUN_00909b10();
  if (iVar2 == 0) {
    iVar2 = *param_2;
    if (iVar2 == 0) {
      iVar4 = 0;
      uVar3 = 0;
    }
    else {
      iVar4 = iVar2 + 8;
      uVar3 = *(undefined4 *)(iVar2 + 4);
    }
    FUN_0098df40(iVar4,uVar3);
    uVar3 = 1;
    if (local_14 != 0) {
      iVar2 = *param_1;
      if (iVar2 == 0) {
        iVar4 = 0;
        uVar3 = 0;
      }
      else {
        iVar4 = iVar2 + 8;
        uVar3 = *(undefined4 *)(iVar2 + 4);
      }
      FUN_0098e3e0(0,local_14,iVar4,uVar3);
      FUN_00eaeca8();
      FUN_00909650();
      FUN_00eaeca8();
      uVar3 = 0;
    }
    if (param_3 != 0) {
      if (param_3 != 1) {
        FUN_00eae9a0();
        FUN_00911790();
                    /* WARNING: Subroutine does not return */
        FUN_00eaeefb();
      }
      ppuVar1 = (undefined **)*param_2;
      if ((ppuVar1 != &PTR_DAT_01b40f7c) &&
         (((ppuVar1 == (undefined **)0x0 || (ppuVar1[1] != (undefined *)0x1)) ||
          (*(short *)(ppuVar1 + 2) != 0x2a)))) {
        if (((((ppuVar1 == (undefined **)0x0) || (ppuVar1[1] == (undefined *)0x0)) ||
             (ppuVar1 == &PTR_DAT_01b42d2c)) ||
            ((ppuVar1[1] == (undefined *)0x1 && (*(short *)(ppuVar1 + 2) == 0x2e)))) ||
           ((ppuVar1 == &PTR_DAT_01b41028 ||
            ((ppuVar1[1] == (undefined *)0x3 &&
             (*(short *)(ppuVar1 + 3) == 0x2a && ppuVar1[2] == (undefined *)0x2e002a)))))) {
          *param_2 = (int)&PTR_DAT_01b40f7c;
        }
        else {
          FUN_009956e0();
          FUN_00eaeca8();
        }
      }
    }
    return uVar3;
  }
  FUN_00eae9a0();
  FUN_009115d0(*param_1);
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

