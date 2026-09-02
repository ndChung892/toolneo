/* Address: 00545410 | Ghidra name: FUN_00545410 */

void __fastcall FUN_00545410(int param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 in_stack_ffffffe4;
  
  if (*(int *)(param_1 + 0x14c) != 0) {
    uVar1 = FUN_00eae9a0();
    FUN_00e92e27(*(undefined4 *)(param_1 + 0x14c));
    if (PTR_FUN_01c21238 != (undefined *)0x0) {
      FUN_00e8d779();
    }
    FUN_00440600(uVar1);
  }
  if (*(int *)(param_1 + 0x150) != 0) {
    in_stack_ffffffe4 = FUN_00eae9a0();
    FUN_00e92e38(*(undefined4 *)(param_1 + 0x150));
    if (PTR_FUN_01c21238 != (undefined *)0x0) {
      FUN_00e8d779();
    }
    FUN_00440600(in_stack_ffffffe4);
  }
  uVar1 = in_stack_ffffffe4;
  if (*(int *)(param_1 + 0x154) != 0) {
    uVar1 = FUN_00eae9a0();
    uVar2 = *(undefined4 *)(param_1 + 0x154);
    FUN_00e92e49(in_stack_ffffffe4);
    if (PTR_FUN_01c21238 != (undefined *)0x0) {
      FUN_00e8d779(uVar2);
    }
    FUN_00440600(uVar1);
  }
  uVar2 = uVar1;
  if (*(int *)(param_1 + 0x158) != 0) {
    uVar2 = FUN_00eae9a0();
    FUN_00e92e5a(uVar1);
    if (PTR_FUN_01c21238 != (undefined *)0x0) {
      FUN_00e8d779();
    }
    FUN_00440600(uVar2);
  }
  FUN_00e49fb0(&PTR_DAT_0153c938);
  FUN_00eaebca();
  FUN_00e49fb0(&PTR_DAT_0153c938);
  FUN_00eaebca();
  FUN_00e49fb0(&PTR_DAT_0153c938);
  FUN_00eaebca();
  FUN_00e49fb0(&PTR_DAT_0153c938);
  FUN_00eaebca();
  uVar1 = uVar2;
  if (*(int *)(param_1 + 0x14c) != 0) {
    uVar1 = FUN_00eae9a0();
    FUN_00e92e27(uVar2);
    if (PTR_FUN_01c21238 != (undefined *)0x0) {
      FUN_00e8d779();
    }
    FUN_00e497a0(&PTR_DAT_01536048,0,5,uVar1);
  }
  uVar2 = uVar1;
  if (*(int *)(param_1 + 0x150) != 0) {
    uVar2 = FUN_00eae9a0();
    FUN_00e92e38(uVar1);
    if (PTR_FUN_01c21238 != (undefined *)0x0) {
      FUN_00e8d779();
    }
    FUN_00e497a0(&PTR_DAT_01536048,0,5,uVar2);
  }
  uVar1 = uVar2;
  if (*(int *)(param_1 + 0x154) != 0) {
    uVar1 = FUN_00eae9a0();
    FUN_00e92e49(uVar2);
    if (PTR_FUN_01c21238 != (undefined *)0x0) {
      FUN_00e8d779();
    }
    FUN_00e497a0(&PTR_DAT_01536048,0,5,uVar1);
  }
  if (*(int *)(param_1 + 0x158) != 0) {
    uVar2 = FUN_00eae9a0();
    FUN_00e92e5a(uVar1);
    if (PTR_FUN_01c21238 != (undefined *)0x0) {
      FUN_00e8d779();
    }
    FUN_00e497a0(&PTR_DAT_01536048,0,5,uVar2);
  }
  return;
}

