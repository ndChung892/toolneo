/* Address: 006ed4e0 | Ghidra name: FUN_006ed4e0 */

void __fastcall FUN_006ed4e0(int param_1,int param_2,undefined4 param_3,undefined4 param_4)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 local_24;
  undefined4 local_20;
  int local_1c;
  undefined4 local_18;
  undefined4 local_14;
  
  if (*(int *)(param_2 + 4) != 0) {
    FUN_00eaebef();
    FUN_006eda30(param_3,param_4);
    FUN_006eda80(local_24,local_20);
    *(int *)(param_1 + 8) = local_1c;
    *(undefined4 *)(param_1 + 0xc) = local_18;
    *(undefined4 *)(param_1 + 0x10) = local_14;
    if (local_1c == 0) {
      FUN_00eae9a0();
      FUN_0098ce80(1);
      uVar1 = FUN_00eae9a0();
      FUN_00497c20();
      uVar2 = FUN_006ed5e0(0,0);
      *(undefined4 *)(param_1 + 8) = uVar2;
      (*(code *)PTR_FUN_01c370a8)(uVar1);
    }
    return;
  }
  FUN_00eae9a0();
  FUN_009115d0(&PTR_DAT_01bee050);
                    /* WARNING: Subroutine does not return */
  FUN_00eaeefb();
}

