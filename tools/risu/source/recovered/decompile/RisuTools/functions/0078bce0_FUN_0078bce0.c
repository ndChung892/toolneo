/* Address: 0078bce0 | Ghidra name: FUN_0078bce0 */

void __fastcall FUN_0078bce0(int *param_1)

{
  undefined **ppuVar1;
  undefined4 uVar2;
  int iVar3;
  int extraout_ECX;
  int extraout_ECX_00;
  int extraout_ECX_01;
  undefined4 extraout_ECX_02;
  undefined4 in_stack_ffffffd4;
  int in_stack_ffffffd8;
  int iVar4;
  int iVar5;
  int iVar6;
  
  iVar6 = 0;
  iVar5 = 0;
  iVar4 = 0;
  iVar3 = *param_1;
  switch(param_1[3]) {
  case 0:
    in_stack_ffffffd8 = param_1[6];
    param_1[6] = 0;
    param_1[3] = -1;
    break;
  case 1:
    iVar5 = param_1[7];
    param_1[7] = 0;
    param_1[3] = -1;
    goto LAB_0078be77;
  case 2:
    iVar5 = param_1[7];
    param_1[7] = 0;
    param_1[3] = -1;
    goto LAB_0078be44;
  case 3:
    iVar4 = param_1[8];
    param_1[8] = 0;
    param_1[3] = -1;
    goto LAB_0078bd64;
  case 4:
    iVar3 = param_1[9];
    param_1[9] = 0;
    param_1[3] = -1;
    goto LAB_0078bd2d;
  default:
    FUN_00eae9a0();
    FUN_00eaeca8();
    FUN_00eaebca();
    *(undefined1 *)(*(int *)(extraout_ECX_00 + 8) + 0x10) = *(undefined1 *)(extraout_ECX_00 + 0x10);
    *(undefined1 *)(*(int *)(extraout_ECX_00 + 8) + 0x11) = *(undefined1 *)(extraout_ECX_00 + 0x11);
    FUN_00eaebca();
    ppuVar1 = *(undefined ***)(*(int *)(extraout_ECX_01 + 8) + 4);
    if ((((ppuVar1 == (undefined **)0x0) || (ppuVar1[1] == (undefined *)0x0)) ||
        (ppuVar1 == &PTR_DAT_01b436a0)) ||
       ((ppuVar1[1] == (undefined *)0x1 && (*(short *)(ppuVar1 + 2) == 0x30)))) {
      FUN_007876b0();
      goto LAB_0078c150;
    }
    in_stack_ffffffd8 = FUN_0077abc0();
    if ((*(uint *)(in_stack_ffffffd8 + 0x1c) & 0x1600000) == 0) {
      param_1[3] = 0;
      FUN_00eaeca8();
      FUN_00d95ba0();
      FUN_00dfca00(&PTR_DAT_01553fd0);
      return;
    }
  }
  if ((*(uint *)(in_stack_ffffffd8 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  iVar6 = in_stack_ffffffd8;
  FUN_00eaebca();
  iVar4 = *(int *)(*(int *)(extraout_ECX + 8) + 0xc);
  if (iVar4 == 0) {
    FUN_007876b0();
  }
  else {
    if (*(char *)(iVar4 + 0x6b) != '\0') {
      in_stack_ffffffd4 = FUN_00eaeae1();
      iVar4 = FUN_00eae9a0(in_stack_ffffffd4,in_stack_ffffffd8);
      *(undefined4 *)(iVar4 + 4) = 0;
      FUN_00eaebca();
      FUN_0077a610(extraout_ECX_02,&PTR_DAT_01beaee0);
      iVar5 = FUN_00975000(*(undefined4 *)(iVar3 + 0x1c));
      if ((*(uint *)(iVar5 + 0x1c) & 0x1600000) == 0) {
        param_1[3] = 1;
        FUN_00eaeca8();
        FUN_00d95ba0();
        FUN_00dfc9c0();
        return;
      }
LAB_0078be77:
      if ((*(uint *)(iVar5 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
    }
    while( true ) {
      iVar4 = FUN_0077af00();
      if ((*(uint *)(iVar4 + 0x1c) & 0x1600000) == 0) {
        param_1[3] = 3;
        FUN_00eaeca8();
        FUN_00d95ba0();
        FUN_00dfc9c0();
        return;
      }
LAB_0078bd64:
      if ((*(uint *)(iVar4 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      if (*(char *)(iVar4 + 0x20) != '\0') break;
      uVar2 = FUN_00906a20();
      FUN_00782420(uVar2);
      iVar5 = FUN_00975000(*(undefined4 *)(iVar3 + 0x1c));
      if ((*(uint *)(iVar5 + 0x1c) & 0x1600000) == 0) {
        param_1[3] = 2;
        FUN_00eaeca8();
        FUN_00d95ba0();
        FUN_00dfc9c0();
        return;
      }
LAB_0078be44:
      if ((*(uint *)(iVar5 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
    }
    FUN_00eae9a0();
    FUN_00e98f3d(in_stack_ffffffd4);
    FUN_00eae9a0();
    FUN_00e4ee90(&PTR_DAT_01543690);
    FUN_00e98f4e(in_stack_ffffffd8);
    FUN_00e44450(&PTR_DAT_01543854);
    iVar3 = FUN_00e17500();
    if ((*(uint *)(iVar3 + 0x1c) & 0x1600000) == 0) {
      param_1[3] = 4;
      FUN_00eaeca8();
      FUN_00d95ba0();
      FUN_00dfca00(&PTR_DAT_0156ed9c);
      return;
    }
LAB_0078bd2d:
    if ((*(uint *)(iVar3 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0(param_1,iVar3,iVar4,iVar5,iVar6);
    }
  }
LAB_0078c150:
  param_1[3] = -2;
  param_1[2] = 0;
  if (param_1[5] == 0) {
    if (PTR_FUN_01c22110 != (undefined *)0x0) {
      FUN_00e8eaee();
    }
    FUN_00eaeca8();
  }
  else {
    iVar3 = FUN_00c0a790(0);
    if (iVar3 == 0) {
                    /* WARNING: Subroutine does not return */
      FUN_00931e50();
    }
  }
  return;
}

