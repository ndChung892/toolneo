/* Address: 0078b540 | Ghidra name: FUN_0078b540 */

void __fastcall FUN_0078b540(int *param_1)

{
  undefined **ppuVar1;
  int iVar2;
  int iVar3;
  int extraout_ECX;
  int *piVar4;
  
  iVar3 = *param_1;
  switch(param_1[2]) {
  case 0:
    iVar2 = param_1[5];
    param_1[5] = 0;
    param_1[2] = -1;
    goto LAB_0078b7c8;
  case 1:
    iVar2 = param_1[6];
    param_1[6] = 0;
    param_1[2] = -1;
    piVar4 = param_1;
    goto LAB_0078b731;
  case 2:
    iVar2 = param_1[6];
    param_1[6] = 0;
    param_1[2] = -1;
    goto LAB_0078bb2c;
  case 3:
    iVar2 = param_1[7];
    param_1[7] = 0;
    param_1[2] = -1;
    goto LAB_0078ba9a;
  case 4:
    iVar2 = param_1[8];
    param_1[8] = 0;
    param_1[2] = -1;
    goto LAB_0078b9fc;
  case 5:
    iVar2 = param_1[6];
    param_1[6] = 0;
    param_1[2] = -1;
LAB_0078b969:
    if ((*(uint *)(iVar2 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    FUN_007876b0();
    FUN_00787780();
    iVar2 = FUN_00975000(*(undefined4 *)(iVar3 + 0x1c));
    if ((*(uint *)(iVar2 + 0x1c) & 0x1600000) == 0) {
      param_1[2] = 6;
      FUN_00eaeca8();
      FUN_00d95a80();
      FUN_00dfc9c0();
      return;
    }
    break;
  case 6:
    iVar2 = param_1[6];
    param_1[6] = 0;
    param_1[2] = -1;
    break;
  case 7:
    iVar3 = param_1[6];
    param_1[6] = 0;
    param_1[2] = -1;
    goto LAB_0078b6f1;
  case 8:
    iVar2 = param_1[6];
    param_1[6] = 0;
    param_1[2] = -1;
    goto LAB_0078b5c7;
  case 9:
    iVar2 = param_1[6];
    param_1[6] = 0;
    param_1[2] = -1;
    goto LAB_0078b58d;
  default:
    if (7 < param_1[3] - 1U) goto LAB_0078bc55;
    iVar2 = FUN_0077b430(param_1,0,0,0,0);
    if ((*(uint *)(iVar2 + 0x1c) & 0x1600000) == 0) {
      param_1[2] = 0;
      FUN_00eaecdd();
      FUN_00d95a80();
      FUN_00dfca00(&PTR_DAT_0156b038);
      return;
    }
LAB_0078b7c8:
    if ((*(uint *)(iVar2 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if (*(int *)(iVar2 + 0x24) != param_1[3] + -1) {
      piVar4 = param_1;
      FUN_0077b520(&PTR_DAT_01be2e80,&PTR_DAT_01b8f9bc);
      iVar2 = FUN_00975000(*(undefined4 *)(iVar3 + 0x1c));
      if ((*(uint *)(iVar2 + 0x1c) & 0x1600000) == 0) {
        param_1[2] = 1;
        FUN_00eaecdd();
        FUN_00d95a80();
        FUN_00dfc9c0();
        return;
      }
LAB_0078b731:
      if ((*(uint *)(iVar2 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      FUN_0077b470(param_1[3]);
      iVar2 = FUN_00975000(*(undefined4 *)(iVar3 + 0x1c));
      param_1 = piVar4;
      if ((*(uint *)(iVar2 + 0x1c) & 0x1600000) == 0) {
        piVar4[2] = 2;
        FUN_00eaeca8();
        FUN_00d95a80();
        FUN_00dfc9c0();
        return;
      }
LAB_0078bb2c:
      if ((*(uint *)(iVar2 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      while ((*(int *)(iVar3 + 0x1c) == 0 || (*(int *)(*(int *)(iVar3 + 0x1c) + 0x10) == 0))) {
        iVar2 = FUN_0077b3b0();
        if ((*(uint *)(iVar2 + 0x1c) & 0x1600000) == 0) {
          param_1[2] = 3;
          FUN_00eaeca8();
          FUN_00d95a80();
          FUN_00dfca00(&PTR_DAT_01557398);
          return;
        }
LAB_0078ba9a:
        if ((*(uint *)(iVar2 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        FUN_00eaeca8();
        ppuVar1 = *(undefined ***)(extraout_ECX + 4);
        if ((ppuVar1 == &PTR_DAT_01b7bda8) ||
           (((ppuVar1 != (undefined **)0x0 && (ppuVar1[1] == (undefined *)0x7)) &&
            (*(short *)(ppuVar1 + 5) == 0x45 &&
             ((ppuVar1[2] == (undefined *)0x4e0049 && ppuVar1[3] == (undefined *)0x47005f) &&
             ppuVar1[4] == (undefined *)0x4d0041))))) {
          while ((*(int *)(iVar3 + 0x1c) == 0 || (*(int *)(*(int *)(iVar3 + 0x1c) + 0x10) == 0))) {
            iVar2 = FUN_0077b3f0();
            if ((*(uint *)(iVar2 + 0x1c) & 0x1600000) == 0) {
              param_1[2] = 4;
              FUN_00eaeca8();
              FUN_00d95a80();
              FUN_00dfc9c0();
              return;
            }
LAB_0078b9fc:
            if ((*(uint *)(iVar2 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            if (*(char *)(iVar2 + 0x20) != '\0') {
              FUN_007876b0();
              iVar2 = FUN_00975000(*(undefined4 *)(iVar3 + 0x1c));
              if ((*(uint *)(iVar2 + 0x1c) & 0x1600000) == 0) {
                param_1[2] = 5;
                FUN_00eaecdd();
                FUN_00d95a80();
                FUN_00dfc9c0();
                return;
              }
              goto LAB_0078b969;
            }
            iVar2 = FUN_00975000(*(undefined4 *)(iVar3 + 0x1c));
            if ((*(uint *)(iVar2 + 0x1c) & 0x1600000) == 0) {
              param_1[2] = 8;
              FUN_00eaecdd();
              FUN_00d95a80();
              FUN_00dfc9c0();
              return;
            }
LAB_0078b5c7:
            if ((*(uint *)(iVar2 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
          }
        }
        ppuVar1 = (undefined **)param_1[1];
        if ((ppuVar1 == &PTR_DAT_01bd64cc) ||
           ((((ppuVar1 != (undefined **)0x0 && (ppuVar1[1] == (undefined *)0x7)) &&
             (*(short *)(ppuVar1 + 5) == 0x47 &&
              ((ppuVar1[2] == &DAT_00410057 && ppuVar1[3] == (undefined *)0x540049) &&
              ppuVar1[4] == (undefined *)0x4e0049))) ||
            ((ppuVar1 == &PTR_DAT_01bd01d4 ||
             (((ppuVar1 != (undefined **)0x0 && (ppuVar1[1] == (undefined *)0x7)) &&
              (*(short *)(ppuVar1 + 5) == 0x4e &&
               ((ppuVar1[2] == (undefined *)0x4e0055 && ppuVar1[3] == (undefined *)0x4e004b) &&
               ppuVar1[4] == (undefined *)0x57004f))))))))) {
          iVar2 = FUN_00975000(*(undefined4 *)(iVar3 + 0x1c));
          if ((*(uint *)(iVar2 + 0x1c) & 0x1600000) == 0) {
            param_1[2] = 9;
            FUN_00eaeca8();
            FUN_00d95a80();
            FUN_00dfc9c0();
            return;
          }
LAB_0078b58d:
          if ((*(uint *)(iVar2 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
        }
        param_1[1] = 0;
      }
    }
    goto LAB_0078bc55;
  }
  if ((*(uint *)(iVar2 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  FUN_00787780();
  iVar3 = FUN_00975000(*(undefined4 *)(iVar3 + 0x1c));
  if ((*(uint *)(iVar3 + 0x1c) & 0x1600000) == 0) {
    param_1[2] = 7;
    FUN_00eaeca8();
    FUN_00d95a80();
    FUN_00dfc9c0();
    return;
  }
LAB_0078b6f1:
  if ((*(uint *)(iVar3 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  FUN_007876b0();
LAB_0078bc55:
  param_1[2] = -2;
  if (param_1[4] == 0) {
    if (PTR_FUN_01c22110 != (undefined *)0x0) {
      FUN_00e8eaee();
    }
    FUN_00eaecdd();
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

