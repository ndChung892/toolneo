/* Address: 00894b80 | Ghidra name: FUN_00894b80 */

undefined4 __fastcall FUN_00894b80(int param_1,undefined4 *param_2,undefined4 *param_3)

{
  int iVar1;
  int *piVar2;
  undefined4 *puVar3;
  
  if ((param_1 != 0) && (*(int *)(param_1 + 0x1c) - 400U < 200)) {
    FUN_00894d40();
    FUN_00eaeca8();
    return 1;
  }
  if (param_2 == (undefined4 *)0x0) {
    *param_3 = 0;
    return 0;
  }
  puVar3 = (undefined4 *)0x0;
  if ((undefined *)*param_2 == &DAT_0160ae9c) {
    puVar3 = param_2;
  }
  if (puVar3 == (undefined4 *)0x0) {
switchD_00894be4_default:
    iVar1 = FUN_00902fd0();
    if ((*(int **)(iVar1 + 8) == (int *)0x0) ||
       (piVar2 = (int *)**(int **)(iVar1 + 8), piVar2 == (int *)0x0)) {
      piVar2 = (int *)FUN_00903100();
    }
    (**(code **)(*piVar2 + 0x60))();
  }
  else {
    switch(puVar3[0xc]) {
    case 1:
      break;
    case 2:
      break;
    case 3:
      break;
    case 4:
      break;
    case 5:
      break;
    case 6:
      break;
    case 7:
      break;
    case 8:
      break;
    case 9:
      break;
    case 10:
      break;
    case 0xb:
      break;
    default:
      goto switchD_00894be4_default;
    }
  }
  FUN_00eaed7c();
  return 1;
}

