/* Address: 00910120 | Ghidra name: FUN_00910120 */

void __fastcall FUN_00910120(int param_1,undefined4 param_2)

{
  int iVar1;
  
  iVar1 = FUN_00eae9a0();
  *(undefined4 *)(iVar1 + 0x14) = 0x7fffffff;
  FUN_00eaea6e();
  FUN_00eaebca();
  FUN_00eaec14();
  *(undefined4 *)(param_1 + 8) = param_2;
  iVar1 = FUN_009019a0();
  FUN_00978480(0xd);
  if (iVar1 == 0) {
    FUN_00977790();
  }
  else {
    FUN_0098e020();
    FUN_00977790();
  }
  FUN_00978480(0x11);
  FUN_00eb6900();
  FUN_00905e60();
  FUN_00977790();
  switch(*(undefined4 *)(param_1 + 8)) {
  case 1:
    FUN_00977790();
    break;
  case 2:
  case 3:
    FUN_00977790();
    break;
  case 4:
  case 5:
    FUN_00977790();
  }
  return;
}

