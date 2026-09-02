/* Address: 00498120 | Ghidra name: FUN_00498120 */

void FUN_00498120(undefined4 *param_1,int param_2,int param_3,int param_4,undefined4 param_5,
                 int param_6,int param_7)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  undefined *puVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  undefined4 uVar9;
  undefined4 uVar10;
  undefined4 uVar11;
  undefined4 uVar12;
  undefined4 uVar13;
  undefined4 uVar14;
  char local_20;
  
  uVar6 = 0;
  uVar7 = 0;
  uVar8 = 0;
  uVar9 = 0;
  uVar10 = 0;
  uVar11 = 0;
  uVar12 = 0;
  uVar13 = 0;
  uVar14 = 0;
  FUN_00497f30();
  if (local_20 == '\0') {
    FUN_00eae9a0();
    FUN_0092a0e0();
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  FUN_00497ff0(param_4,param_5,param_6,param_7);
  puVar5 = (undefined *)*param_1;
  if (puVar5 == &DAT_015cd24c) {
    uVar1 = param_1[0xb];
  }
  else {
    FUN_0082a470();
    if (PTR_FUN_01c21c08 != (undefined *)0x0) {
      FUN_00e8c9f3();
    }
    uVar1 = FUN_005b5350();
  }
  iVar2 = FUN_00439ba0();
  iVar3 = (int)((longlong)iVar2 * (longlong)param_6);
  if (((longlong)iVar3 == (longlong)iVar2 * (longlong)param_6) && (!SCARRY4(iVar3,7))) {
    iVar2 = (int)(iVar3 + 7 + (iVar3 + 7 >> 0x1f & 7U)) >> 3;
    if (param_2 < iVar2) {
      FUN_00eae9a0();
      FUN_00911790();
                    /* WARNING: Subroutine does not return */
      FUN_00eaeefb();
    }
    if (param_2 * param_7 - param_3 != 0 && param_3 <= param_2 * param_7) {
      FUN_00eae9a0(param_7,puVar5,uVar6,uVar7,uVar8,uVar9,uVar10,uVar11,uVar12,uVar13,param_6,uVar14
                   ,uVar1);
      FUN_00911790();
                    /* WARNING: Subroutine does not return */
      FUN_00eaeefb();
    }
    FUN_00497f30();
    if (local_20 == '\0') {
                    /* WARNING: Subroutine does not return */
      FUN_009322f0();
    }
    iVar3 = FUN_00439ba0();
    iVar4 = (int)((longlong)iVar3 * (longlong)param_4);
    if (((longlong)iVar4 == (longlong)iVar3 * (longlong)param_4) && (!SCARRY4(iVar4,7))) {
      iVar3 = 0;
      if (0 < param_7) {
        do {
          if (puVar5 != &DAT_015cd24c) {
            FUN_0082c5c0(param_7,puVar5,0);
            FUN_0082c600();
          }
          FUN_00930280(iVar2);
          iVar3 = iVar3 + 1;
        } while (iVar3 < param_7);
      }
      return;
    }
  }
                    /* WARNING: Subroutine does not return */
  FUN_009c2c10();
}

