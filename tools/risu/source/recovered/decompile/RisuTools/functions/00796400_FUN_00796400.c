/* Address: 00796400 | Ghidra name: FUN_00796400 */

void __fastcall FUN_00796400(int *param_1)

{
  undefined **ppuVar1;
  byte bVar2;
  int iVar3;
  int iVar4;
  bool bVar5;
  int iVar6;
  int iVar7;
  
  iVar7 = 0;
  iVar4 = *param_1;
  iVar6 = iVar4;
  switch(param_1[1]) {
  case 0:
    iVar7 = param_1[4];
    param_1[4] = 0;
    param_1[1] = -1;
    break;
  case 1:
    iVar3 = param_1[5];
    param_1[5] = 0;
    param_1[1] = -1;
    goto LAB_00796603;
  case 2:
    iVar7 = param_1[5];
    param_1[5] = 0;
    param_1[1] = -1;
    goto LAB_00796577;
  case 3:
    iVar7 = param_1[4];
    param_1[4] = 0;
    param_1[1] = -1;
    goto LAB_00796541;
  case 4:
    iVar7 = param_1[5];
    param_1[5] = 0;
    param_1[1] = -1;
    goto LAB_007964b5;
  case 5:
    iVar7 = param_1[4];
    param_1[4] = 0;
    param_1[1] = -1;
    goto LAB_0079647f;
  case 6:
    iVar7 = param_1[4];
    param_1[4] = 0;
    param_1[1] = -1;
    goto LAB_00796449;
  default:
    FUN_007876b0(iVar4,param_1,0,0);
    *(undefined2 *)(param_1 + 2) = 0;
    FUN_00787780();
    FUN_0077b520(&PTR_DAT_01bde778,&PTR_DAT_01b8f9bc);
    iVar7 = FUN_00975000(*(undefined4 *)(iVar4 + 0x1c));
    if ((*(uint *)(iVar7 + 0x1c) & 0x1600000) == 0) {
      param_1[1] = 0;
      FUN_00eaeca8();
      FUN_00d96bc0();
      FUN_00dfc9c0();
      return;
    }
  }
  if ((*(uint *)(iVar7 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
LAB_00796718:
  do {
    if ((*(int *)(iVar4 + 0x1c) != 0) && (*(int *)(*(int *)(iVar4 + 0x1c) + 0x10) != 0)) {
LAB_00796981:
      param_1[1] = -2;
      if (param_1[3] == 0) {
        if (PTR_FUN_01c22110 != (undefined *)0x0) {
          FUN_00e8eaee();
        }
        FUN_00eaecdd();
        return;
      }
      iVar4 = FUN_00c0a790(0);
      if (iVar4 != 0) {
        return;
      }
                    /* WARNING: Subroutine does not return */
      FUN_00931e50();
    }
    iVar3 = FUN_0077b3b0();
    if ((*(uint *)(iVar3 + 0x1c) & 0x1600000) == 0) {
      param_1[1] = 1;
      FUN_00eaeca8();
      FUN_00d96bc0();
      FUN_00dfca00(&PTR_DAT_01557398);
      return;
    }
LAB_00796603:
    if ((*(uint *)(iVar3 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    ppuVar1 = *(undefined ***)(iVar3 + 0x20);
    if (((ppuVar1 == &PTR_DAT_01b7bda8) ||
        (((ppuVar1 != (undefined **)0x0 && (ppuVar1[1] == (undefined *)0x7)) &&
         (((ppuVar1[2] == (undefined *)0x4e0049 && ppuVar1[3] == (undefined *)0x47005f) &&
          ppuVar1[4] == (undefined *)0x4d0041) && *(short *)(ppuVar1 + 5) == 0x45)))) &&
       ((char)param_1[2] == '\0')) {
      FUN_007876b0(iVar6,param_1,iVar3,iVar7);
      iVar7 = FUN_0077b4c0(&PTR_DAT_01be2e9c,&PTR_DAT_01bd406c);
      if ((*(uint *)(iVar7 + 0x1c) & 0x1600000) == 0) {
        param_1[1] = 2;
        FUN_00eaeca8();
        FUN_00d96bc0();
        FUN_00dfca00(&PTR_DAT_01557398);
        return;
      }
LAB_00796577:
      if ((*(uint *)(iVar7 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      *(undefined1 *)(param_1 + 2) = 1;
      iVar7 = FUN_00975000(*(undefined4 *)(iVar4 + 0x1c));
      if ((*(uint *)(iVar7 + 0x1c) & 0x1600000) == 0) {
        param_1[1] = 3;
        FUN_00eaeca8();
        FUN_00d96bc0();
        FUN_00dfc9c0();
        return;
      }
LAB_00796541:
      if ((*(uint *)(iVar7 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      goto LAB_00796718;
    }
    bVar2 = FUN_00905410();
    if (((*(byte *)(param_1 + 2) & bVar2) == 0) || (*(char *)((int)param_1 + 9) != '\0')) {
      if (ppuVar1 == &PTR_DAT_01bd64cc) {
        bVar5 = true;
      }
      else if ((ppuVar1 == (undefined **)0x0) || (ppuVar1[1] != (undefined *)0x7)) {
        bVar5 = false;
      }
      else {
        bVar5 = ((ppuVar1[2] == &DAT_00410057 && ppuVar1[3] == (undefined *)0x540049) &&
                ppuVar1[4] == (undefined *)0x4e0049) && *(short *)(ppuVar1 + 5) == 0x47;
      }
      if ((*(byte *)((int)param_1 + 9) & bVar5) != 0) {
        FUN_007876b0();
        FUN_00850970();
        FUN_00850f60();
        FUN_007876b0();
        goto LAB_00796981;
      }
      iVar7 = FUN_00975000(*(undefined4 *)(iVar4 + 0x1c));
      if ((*(uint *)(iVar7 + 0x1c) & 0x1600000) == 0) {
        param_1[1] = 6;
        FUN_00eaeca8();
        FUN_00d96bc0();
        FUN_00dfc9c0();
        return;
      }
LAB_00796449:
      if ((*(uint *)(iVar7 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
    }
    else {
      FUN_007876b0();
      iVar7 = FUN_0077b4c0(&PTR_DAT_01be2f9c,&PTR_DAT_01b5b1e0);
      if ((*(uint *)(iVar7 + 0x1c) & 0x1600000) == 0) {
        param_1[1] = 4;
        FUN_00eaeca8();
        FUN_00d96bc0();
        FUN_00dfca00(&PTR_DAT_01557398);
        return;
      }
LAB_007964b5:
      if ((*(uint *)(iVar7 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      *(undefined1 *)((int)param_1 + 9) = 1;
      iVar7 = FUN_00975000(*(undefined4 *)(iVar4 + 0x1c));
      if ((*(uint *)(iVar7 + 0x1c) & 0x1600000) == 0) {
        param_1[1] = 5;
        FUN_00eaeca8();
        FUN_00d96bc0();
        FUN_00dfc9c0();
        return;
      }
LAB_0079647f:
      if ((*(uint *)(iVar7 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
    }
  } while( true );
}

