/* Address: 009fd1c0 | Ghidra name: FUN_009fd1c0 */

void __fastcall FUN_009fd1c0(int param_1)

{
  int iVar1;
  
  if ((undefined *)**(undefined4 **)(param_1 + 4) == &DAT_01620e70) {
    iVar1 = FUN_009ee770();
  }
  else {
    iVar1 = FUN_009eafe0();
  }
  if (iVar1 != 0) {
    FUN_0090e2c0(0,0,4,0);
  }
  if (((undefined *)**(undefined4 **)(param_1 + 4) != &DAT_01620e70) &&
     (*(undefined **)(*(undefined4 **)(param_1 + 4))[6] != &DAT_01620e70)) {
    FUN_009eb120();
  }
  FUN_009f2b90();
  if ((undefined *)**(undefined4 **)(param_1 + 4) == &DAT_01620e70) {
    iVar1 = FUN_009ee840();
  }
  else {
    iVar1 = (*(undefined4 **)(param_1 + 4))[10];
  }
  iVar1 = *(int *)(iVar1 + 4);
  if (0 < iVar1) {
    do {
      FUN_009f2b90();
      iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
  }
  return;
}

