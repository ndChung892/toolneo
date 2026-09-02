/* Address: 00793ec0 | Ghidra name: FUN_00793ec0 */

void __fastcall FUN_00793ec0(int *param_1)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  
  iVar4 = 0;
  iVar3 = 0;
  iVar2 = *param_1;
  switch(param_1[2]) {
  case 0:
    iVar4 = param_1[5];
    param_1[5] = 0;
    param_1[2] = -1;
    break;
  case 1:
    iVar3 = param_1[6];
    param_1[6] = 0;
    param_1[2] = -1;
    goto LAB_00793fdd;
  case 2:
    iVar4 = param_1[5];
    param_1[5] = 0;
    param_1[2] = -1;
    goto LAB_00793f07;
  default:
    if ((*(int *)(iVar2 + 0x1c) != 0) && (*(int *)(*(int *)(iVar2 + 0x1c) + 0x10) != 0))
    goto LAB_00794125;
    iVar4 = FUN_0077af00(param_1,0,0);
    if ((*(uint *)(iVar4 + 0x1c) & 0x1600000) == 0) {
      param_1[2] = 0;
      FUN_00eaeca8();
      FUN_00d96840();
      FUN_00dfc9c0();
      return;
    }
  }
  if ((*(uint *)(iVar4 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  if (*(char *)(iVar4 + 0x20) == '\0') {
    param_1[3] = 0;
    while( true ) {
      iVar4 = FUN_0077af00(param_1,iVar3,iVar4);
      if ((*(uint *)(iVar4 + 0x1c) & 0x1600000) == 0) {
        param_1[2] = 2;
        FUN_00eaeca8();
        FUN_00d96840();
        FUN_00dfc9c0();
        return;
      }
LAB_00793f07:
      if ((*(uint *)(iVar4 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      if (((*(char *)(iVar4 + 0x20) != '\0') || (2 < param_1[3])) ||
         ((*(int *)(iVar2 + 0x1c) != 0 && (*(int *)(*(int *)(iVar2 + 0x1c) + 0x10) != 0)))) break;
      uVar1 = FUN_00906a20();
      FUN_00782420(uVar1);
      iVar3 = FUN_00975000(*(undefined4 *)(iVar2 + 0x1c));
      if ((*(uint *)(iVar3 + 0x1c) & 0x1600000) == 0) {
        param_1[2] = 1;
        FUN_00eaeca8();
        FUN_00d96840();
        FUN_00dfc9c0();
        return;
      }
LAB_00793fdd:
      if ((*(uint *)(iVar3 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      param_1[3] = param_1[3] + 1;
    }
  }
  else {
    FUN_0077ae70(0x96);
  }
LAB_00794125:
  param_1[2] = -2;
  if (param_1[4] == 0) {
    if (PTR_FUN_01c22110 != (undefined *)0x0) {
      FUN_00e8eaee();
    }
    FUN_00eaecdd();
  }
  else {
    iVar2 = FUN_00c0a790(0);
    if (iVar2 == 0) {
                    /* WARNING: Subroutine does not return */
      FUN_00931e50();
    }
  }
  return;
}

