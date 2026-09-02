/* Address: 00454c40 | Ghidra name: FUN_00454c40 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void FUN_00454c40(void)

{
  bool bVar1;
  undefined4 *puVar2;
  double dVar3;
  double dVar4;
  undefined4 uVar5;
  undefined4 in_stack_ffffffd4;
  undefined4 in_stack_ffffffe0;
  undefined4 in_stack_ffffffe4;
  undefined4 in_stack_ffffffe8;
  undefined4 in_stack_ffffffec;
  
  uVar5 = 0;
  if (PTR_FUN_01c20f90 != (undefined *)0x0) {
    FUN_00e8c0c0(0);
  }
  if (PTR_FUN_01c20f90 != (undefined *)0x0) {
    FUN_00e8cf1b();
  }
  if ((*(int *)(DAT_01c27e7c + 4) == 0) ||
     (puVar2 = (undefined4 *)FUN_00e469f0(), puVar2 == (undefined4 *)0x0)) {
    bVar1 = false;
    dVar3 = 0.0;
  }
  else {
    if ((undefined *)*puVar2 == &DAT_015f1400) {
      FUN_006bb540(1);
    }
    else {
      FUN_00439220(1);
    }
    dVar3 = (double)CONCAT44(in_stack_ffffffec,in_stack_ffffffe8);
    bVar1 = true;
  }
  dVar4 = DAT_018ccf08;
  if (bVar1) {
    dVar4 = dVar3;
  }
  if (PTR_FUN_01c210a4 != (undefined *)0x0) {
    FUN_00e8c165();
  }
  dVar4 = dVar4 * _DAT_018ccf10;
  DAT_01c210a8 = 0x7fffffff;
  if (dVar4 < _DAT_018ccf18) {
    DAT_01c210a8 = (int)(double)(-(ulonglong)(!NAN(dVar4) && !NAN(dVar4)) & (ulonglong)dVar4);
  }
  FUN_00eae9a0();
  FUN_00e91595(uVar5);
  uVar5 = FUN_00eae9a0();
  FUN_00e915a6(in_stack_ffffffd4);
  if (PTR_FUN_01c210a4 != (undefined *)0x0) {
    FUN_00e8d207();
  }
  FUN_00e675e0(&PTR_DAT_015377b8,0,1,0,uVar5);
  FUN_00eaebca();
  FUN_00eae9a0();
  FUN_00e915b7();
  uVar5 = FUN_00eae9a0();
  FUN_00e915c8();
  FUN_00e675e0(&PTR_DAT_015377b8,0,1,0,uVar5);
  FUN_00eaebca();
  FUN_00eae9a0();
  FUN_00e915d9(in_stack_ffffffe0);
  uVar5 = FUN_00eae9a0();
  FUN_00e915ea(in_stack_ffffffe4);
  FUN_00e675e0(&PTR_DAT_015377b8,0,1,0,uVar5);
  FUN_00eaebca();
  FUN_00eae9a0();
  FUN_00e915fb(in_stack_ffffffe8);
  FUN_00eae9a0();
  FUN_00e9160c(in_stack_ffffffec);
  FUN_00e68520();
  FUN_00eaebca();
  return;
}

