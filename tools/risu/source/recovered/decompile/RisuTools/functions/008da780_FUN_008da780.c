/* Address: 008da780 | Ghidra name: FUN_008da780 */

void __thiscall FUN_008da780(undefined4 *param_1,undefined4 param_2,undefined4 param_3)

{
  undefined4 uVar1;
  int iVar2;
  
  *param_1 = param_2;
  param_1[1] = param_3;
  if (PTR_FUN_01c21e7c != (undefined *)0x0) {
    FUN_00e8e7be();
  }
  FUN_00849770(0);
  FUN_00eaeca8();
  if (param_1[2] != 0) {
    uVar1 = FUN_008da680();
    iVar2 = FUN_0099aa80(param_1[2]);
    if (iVar2 == 0) {
      FUN_00906a20();
    }
    else {
      FUN_00906a20();
    }
    FUN_008469f0();
    if (*(char *)(param_1[2] + 0x5c) != '\0') {
      FUN_008470d0(uVar1);
    }
  }
  return;
}

