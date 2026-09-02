/* Address: 00588c80 | Ghidra name: FUN_00588c80 */

void __fastcall FUN_00588c80(int param_1)

{
  int iVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  bool bVar4;
  undefined4 uVar5;
  
  FUN_00e49fb0(&PTR_DAT_0153dfdc);
  FUN_00eaebca();
  if (*(int *)(param_1 + 0x184) != 0) {
    FUN_00589070();
  }
  bVar4 = *(int *)(param_1 + 0x15c) != 0;
  if (bVar4) {
    FUN_00cb1290();
  }
  FUN_00e49fb0(&PTR_DAT_015415d8);
  FUN_00eaebca();
  if ((*(int *)(param_1 + 0x15c) != 0) &&
     (FUN_00eaec39(), 0 < *(int *)(*(int *)(*(int *)(param_1 + 0x180) + 4) + 8))) {
    FUN_0057d540();
    while (iVar1 = (*(code *)PTR_FUN_01c3a1e8)(), iVar1 != 0) {
      puVar2 = (undefined4 *)(*(code *)PTR_FUN_01c3c980)();
      if ((puVar2 != (undefined4 *)0x0) && ((undefined *)*puVar2 != &DAT_015eb848)) {
                    /* WARNING: Subroutine does not return */
        FUN_0099ace0();
      }
      FUN_00cb1210();
    }
    iVar1 = FUN_0099a9c0();
    if (iVar1 != 0) {
      (*(code *)PTR_FUN_01c36de0)();
    }
  }
  FUN_00e49fb0(&PTR_DAT_015415f4);
  FUN_00eaebca();
  if ((*(int *)(param_1 + 0x174) != 0) && (*(int *)(param_1 + 0x17c) != 0)) {
    FUN_00eaec39();
    iVar1 = FUN_00589660();
    if ((iVar1 != 0) && ((iVar1 = FUN_005895f0(), iVar1 != 0 && (*(int *)(param_1 + 0x178) == 0))))
    {
      FUN_00589660();
      FUN_00589d30(0,*(undefined1 *)(param_1 + 0x194));
      *(undefined1 *)(param_1 + 0x194) = 0;
    }
  }
  FUN_00e49fb0(&PTR_DAT_0153f224);
  FUN_00eaebca();
  FUN_00589220();
  FUN_00e49fb0(&PTR_DAT_015415b4);
  FUN_00eaebca();
  if (*(int *)(param_1 + 0x164) != 0) {
    FUN_00eaec39();
    if (PTR_FUN_01c214c4 != (undefined *)0x0) {
      FUN_00e8dff9();
    }
    iVar1 = FUN_00e46d60(&PTR_PTR_01548558);
    if (iVar1 != 0) {
      uVar5 = *(undefined4 *)(param_1 + 0x164);
      uVar3 = FUN_00e46d60(&PTR_PTR_01548558);
      if (PTR_FUN_01c21270 != (undefined *)0x0) {
        FUN_00e8d845(uVar5);
      }
      FUN_00e46ee0(&PTR_DAT_01548570,0,uVar3);
    }
    FUN_005893f0();
  }
  if (bVar4 && *(int *)(param_1 + 0x17c) != 0) {
    FUN_00568e30();
  }
  return;
}

