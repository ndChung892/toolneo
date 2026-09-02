/* Address: 00836470 | Ghidra name: FUN_00836470 */

void __fastcall FUN_00836470(int param_1,int param_2,undefined4 param_3)

{
  int iVar1;
  undefined4 uVar2;
  
  if (param_2 != 0) {
    iVar1 = FUN_009bfdf0();
    if (iVar1 != 1) {
      FUN_00eae9a0();
      FUN_009115d0(&PTR_DAT_01be18d4);
                    /* WARNING: Subroutine does not return */
      FUN_00eaeefb();
    }
  }
  if ((undefined *)**(undefined4 **)(param_1 + 4) == &DAT_015fffac) {
    uVar2 = (*(undefined4 **)(param_1 + 4))[6];
  }
  else {
    uVar2 = FUN_00835b40();
  }
  FUN_0090aa10(uVar2,param_3,param_2);
  return;
}

