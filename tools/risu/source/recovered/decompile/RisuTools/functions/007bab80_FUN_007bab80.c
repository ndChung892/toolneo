/* Address: 007bab80 | Ghidra name: FUN_007bab80 */

void __fastcall FUN_007bab80(int *param_1)

{
  undefined1 uVar1;
  undefined4 *puVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  undefined4 uVar6;
  int iVar7;
  bool bVar8;
  int *extraout_ECX;
  int extraout_ECX_00;
  int extraout_ECX_01;
  int *piVar9;
  undefined4 in_stack_ffffff44;
  undefined4 in_stack_ffffff48;
  undefined4 in_stack_ffffff4c;
  undefined4 in_stack_ffffff50;
  char *local_68;
  undefined4 local_44;
  int iStack_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 local_34;
  int iStack_30;
  int iStack_2c;
  int iStack_28;
  int local_24;
  int iStack_20;
  int iStack_1c;
  int iStack_18;
  int local_14;
  
  local_44 = 0;
  iStack_40 = 0;
  uStack_3c = 0;
  uStack_38 = 0;
  local_34 = 0;
  iStack_30 = 0;
  iStack_2c = 0;
  iStack_28 = 0;
  local_24 = 0;
  iStack_20 = 0;
  iStack_1c = 0;
  iStack_18 = 0;
  local_14 = 0;
  iVar7 = *param_1;
  switch(param_1[6]) {
  case 0:
    local_14 = param_1[0x11];
    param_1[0x11] = 0;
    param_1[6] = -1;
    break;
  case 1:
    iStack_18 = param_1[0x12];
    param_1[0x12] = 0;
    param_1[6] = -1;
    goto LAB_007bbaa4;
  case 2:
    iStack_1c = param_1[0x13];
    param_1[0x13] = 0;
    param_1[6] = -1;
    goto LAB_007bba6a;
  case 3:
    iStack_20 = param_1[0x14];
    param_1[0x14] = 0;
    param_1[6] = -1;
    goto LAB_007bb9bd;
  case 4:
    local_24 = param_1[0x15];
    param_1[0x15] = 0;
    param_1[6] = -1;
    goto LAB_007bb8ae;
  case 5:
    iStack_28 = param_1[0x16];
    param_1[0x16] = 0;
    param_1[6] = -1;
    goto LAB_007bb786;
  case 6:
    iStack_2c = param_1[0x17];
    param_1[0x17] = 0;
    param_1[6] = -1;
    goto LAB_007bb6ef;
  case 7:
    iStack_1c = param_1[0x13];
    param_1[0x13] = 0;
    param_1[6] = -1;
    goto LAB_007bb6a5;
  case 8:
    iStack_1c = param_1[0x13];
    param_1[0x13] = 0;
    param_1[6] = -1;
    goto LAB_007bb65b;
  case 9:
    iStack_2c = param_1[0x17];
    param_1[0x17] = 0;
    param_1[6] = -1;
    goto LAB_007bb579;
  case 10:
    iStack_1c = param_1[0x13];
    param_1[0x13] = 0;
    param_1[6] = -1;
    goto LAB_007bb53a;
  case 0xb:
    iStack_1c = param_1[0x13];
    param_1[0x13] = 0;
    param_1[6] = -1;
    goto LAB_007bb4b3;
  case 0xc:
    iStack_30 = param_1[0x18];
    param_1[0x18] = 0;
    param_1[6] = -1;
    goto LAB_007babd6;
  default:
    FUN_00eae9a0();
    FUN_00eaeca8();
    *(undefined4 *)(*(int *)(extraout_ECX_00 + 4) + 8) = *(undefined4 *)(extraout_ECX_00 + 0x1c);
    *(undefined4 *)(*(int *)(extraout_ECX_00 + 4) + 0xc) = *(undefined4 *)(extraout_ECX_00 + 0x20);
    FUN_0077afa0(&PTR_DAT_01c0f488,&PTR_DAT_01be39d8);
    *(undefined2 *)(param_1 + 0xe) = 0;
    *(undefined1 *)((int)param_1 + 0x3a) = 0;
    FUN_00eae9a0();
    FUN_00e99bdb(in_stack_ffffff44);
    FUN_00e4e4a0(&PTR_DAT_01543634,&local_34);
    FUN_00eaeca8();
    if (*(int *)(extraout_ECX_01 + 0xc) == 0) {
      uVar6 = 0;
    }
    else {
      uVar6 = *(undefined4 *)(*(int *)(*(int *)(extraout_ECX_01 + 0xc) + 0x14c) + 0x34);
    }
    *(undefined4 *)(extraout_ECX_01 + 0x24) = uVar6;
    *(undefined4 *)(extraout_ECX_01 + 0x28) = 0;
    *(undefined4 *)(extraout_ECX_01 + 0x2c) = 0;
    goto LAB_007bbc97;
  }
  do {
    if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    FUN_00eaebca();
    if ((*(int *)(extraout_ECX[2] + 4) == 0) ||
       (*(char *)(*(int *)(extraout_ECX[2] + 4) + 0x69) == '\0')) {
      piVar9 = extraout_ECX;
      if ((char)extraout_ECX[0xe] != '\0') {
        while( true ) {
          iStack_30 = FUN_0077af00();
          if ((*(uint *)(iStack_30 + 0x1c) & 0x1600000) == 0) {
            param_1[6] = 0xc;
            FUN_00eaeca8();
            FUN_00d9bfc0();
            FUN_00dfc9c0();
            return;
          }
LAB_007babd6:
          if ((*(uint *)(iStack_30 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          piVar9 = param_1;
          if (*(char *)(iStack_30 + 0x20) == '\0') break;
          uVar6 = FUN_00906a20();
          FUN_00782420(uVar6);
          iStack_1c = FUN_00975000(*(undefined4 *)(iVar7 + 0x1c));
          if ((*(uint *)(iStack_1c + 0x1c) & 0x1600000) == 0) {
            param_1[6] = 0xb;
            FUN_00eaeca8();
            FUN_00d9bfc0();
            FUN_00dfc9c0();
            return;
          }
LAB_007bb4b3:
          if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
        }
      }
      piVar9[6] = -2;
      piVar9[1] = 0;
      piVar9[3] = 0;
      if (piVar9[0x10] != 0) {
        iVar7 = FUN_00c0a790(0);
        if (iVar7 != 0) {
          return;
        }
                    /* WARNING: Subroutine does not return */
        FUN_00931e50();
      }
      if (PTR_FUN_01c22110 != (undefined *)0x0) {
        FUN_00e8eaee();
      }
      FUN_00eaecdd();
      return;
    }
    iStack_18 = FUN_0077b200();
    if ((*(uint *)(iStack_18 + 0x1c) & 0x1600000) == 0) {
      param_1[6] = 1;
      FUN_00eaecdd();
      FUN_00d9bfc0();
      FUN_00dfca00(&PTR_DAT_01553a54);
      return;
    }
LAB_007bbaa4:
    if ((*(uint *)(iStack_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    FUN_00eaecdd();
    if (param_1[4] == 0) {
      iStack_1c = FUN_00975000(*(undefined4 *)(iVar7 + 0x1c));
      if ((*(uint *)(iStack_1c + 0x1c) & 0x1600000) == 0) {
        param_1[6] = 2;
        FUN_00eaecdd();
        FUN_00d9bfc0();
        FUN_00dfc9c0();
        return;
      }
LAB_007bba6a:
      if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
    }
    else {
      *(undefined1 *)((int)param_1 + 0x3b) = 0;
      FUN_00eae9a0();
      FUN_00e99bfd(in_stack_ffffff48);
      FUN_00e4e4a0(&PTR_DAT_01543ac4,&uStack_38);
      FUN_00eaebca();
      if (*(int *)(param_1[2] + 8) != 0) {
        FUN_00eae9a0();
        FUN_00e99c0e(in_stack_ffffff4c);
        uVar1 = FUN_00e4d760(&PTR_DAT_01543a30);
        *(undefined1 *)((int)param_1 + 0x3b) = uVar1;
      }
      if ((char)param_1[0xe] == '\0') {
        iStack_20 = FUN_0077af40(0,0);
        if ((*(uint *)(iStack_20 + 0x1c) & 0x1600000) == 0) {
          param_1[6] = 3;
          FUN_00eaecdd();
          FUN_00d9bfc0();
          FUN_00dfca00(&PTR_DAT_01557398);
          return;
        }
LAB_007bb9bd:
        if ((*(uint *)(iStack_20 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        if ((*(int *)(iStack_20 + 0x20) != 0) && (*(int *)(*(int *)(iStack_20 + 0x20) + 4) != 0)) {
          iVar5 = FUN_00909ad0();
          if (iVar5 == 0) {
            FUN_0094bfb0();
            in_stack_ffffff50 = FUN_0094c500();
            local_68 = &DAT_01c222d8;
            if (PTR_FUN_01c222d4 != (undefined *)0x0) {
              FUN_00e8cd95(in_stack_ffffff50);
            }
            if (DAT_01c222d8 == '\0') {
              uVar6 = FUN_00dfdf80();
            }
            else {
              uVar6 = FUN_00956500();
            }
            FUN_0094bfb0(in_stack_ffffff50,uVar6);
            FUN_0094c500();
            if (*local_68 == '\0') {
              FUN_00dfdf80();
            }
            else {
              FUN_00956500();
            }
            iVar5 = FUN_00909ad0();
            if (iVar5 == 0) goto LAB_007bae95;
          }
          FUN_00a51650();
          puVar2 = (undefined4 *)FUN_00a51200();
          if (puVar2[7] != 0) {
            if ((undefined *)*puVar2 == &DAT_01626e9c) {
              FUN_00a4fcf0();
            }
            else {
              FUN_00a502b0();
            }
            FUN_00a4f4a0();
            iVar5 = FUN_00a4f280();
            if (iVar5 == 0) {
                    /* WARNING: Subroutine does not return */
              FUN_00931d20();
            }
            iVar3 = iVar5 + 8;
            uVar6 = *(undefined4 *)(iVar5 + 4);
            iVar5 = iVar3;
            uStack_3c = uVar6;
            FUN_00958ea0(iVar3,uVar6);
            iVar5 = FUN_00dd21c0(&iStack_40,iVar5,uVar6);
            if (iVar5 != 0) {
              if (iVar5 == 1) {
                    /* WARNING: Subroutine does not return */
                FUN_00dca280(iVar3,uStack_3c);
              }
                    /* WARNING: Subroutine does not return */
              FUN_00de72e0();
            }
            iVar5 = 0;
            if ((0 < param_1[10]) && (iVar3 = param_1[9], 0 < iVar3)) {
              if (iVar3 == 0x315) {
                iVar5 = 1;
              }
              else if (iVar3 == 0x325) {
                iVar5 = 2;
              }
              else if (iVar3 == 0x316) {
                iVar5 = 3;
              }
            }
            iVar5 = iStack_40 - iVar5;
            if (iVar5 <= param_1[0xb]) {
              iVar5 = param_1[0xb];
            }
            param_1[0xb] = iVar5;
          }
        }
      }
LAB_007bae95:
      if ((char)param_1[0xe] == '\0') {
        if (*(int *)(param_1[1] + 4) == 0) {
          FUN_00eae9a0();
          FUN_00e99bec(in_stack_ffffff50);
          in_stack_ffffff50 = 0x7baeee;
          FUN_00eaebef();
        }
        FUN_00e4e4a0(&PTR_DAT_01543ac4,&local_44);
      }
      FUN_00eaeca8();
      *(undefined1 *)(param_1 + 0xf) = 0;
      param_1[0xc] = 0;
      if (((param_1[5] != 0) && (0 < param_1[0xb])) && (param_1[10] < 1)) {
        iVar5 = *(int *)(param_1[5] + 0x1c);
        if (iVar5 < 1) {
          iVar5 = 99;
        }
        if (param_1[0xb] < iVar5) {
          *(undefined1 *)(param_1 + 0xf) = 1;
          param_1[0xd] = iVar5 - param_1[0xb];
          if ((param_1[3] == 0) ||
             (iVar5 = *(int *)(*(int *)(param_1[3] + 0x14c) + 0x34), iVar5 < 1)) {
            local_24 = FUN_0077b0f0(&PTR_DAT_01b39360,&PTR_DAT_01b8d2bc);
            if ((*(uint *)(local_24 + 0x1c) & 0x1600000) == 0) {
              param_1[6] = 4;
              FUN_00eaecdd();
              FUN_00d9bfc0();
              FUN_00dfca00(&PTR_DAT_01568c60);
              return;
            }
LAB_007bb8ae:
            if ((*(uint *)(local_24 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            if (*(int *)(local_24 + 0x20) != 0) {
              if (param_1[0xd] < 2) {
                if (*(int *)(DAT_01c289c4 + 0x80) == 0) {
                  FUN_00eae9a0();
                  FUN_00e99a54(in_stack_ffffff50);
                  in_stack_ffffff50 = 0x7bb921;
                  FUN_00eaebef();
                }
                iVar5 = FUN_00e4d760(&PTR_DAT_01543ec4);
                if (iVar5 == 0) goto LAB_007bb938;
LAB_007bb128:
                param_1[0xc] = 0x315;
              }
              else {
LAB_007bb938:
                if (param_1[0xd] < 3) {
                  if (*(int *)(DAT_01c289c4 + 0x84) == 0) {
                    FUN_00eae9a0();
                    FUN_00e99a65(in_stack_ffffff50);
                    in_stack_ffffff50 = 0x7bb986;
                    FUN_00eaebef();
                  }
                  iVar5 = FUN_00e4d760(&PTR_DAT_01543ec4);
                  if (iVar5 == 0) goto LAB_007bafd0;
LAB_007bb99d:
                  param_1[0xc] = 0x325;
                }
                else {
LAB_007bafd0:
                  if (param_1[0xd] < 4) {
                    if (*(int *)(DAT_01c289c4 + 0x88) == 0) {
                      FUN_00eae9a0();
                      FUN_00e99a76(in_stack_ffffff50);
                      in_stack_ffffff50 = 0x7bb01a;
                      FUN_00eaebef();
                    }
                    iVar5 = FUN_00e4d760(&PTR_DAT_01543ec4);
                    if (iVar5 == 0) goto LAB_007bb031;
                  }
                  else {
LAB_007bb031:
                    iVar5 = DAT_01c289c4;
                    if (*(int *)(DAT_01c289c4 + 0x8c) == 0) {
                      FUN_00eae9a0();
                      FUN_00e99a87(in_stack_ffffff50);
                      in_stack_ffffff50 = 0x7bb075;
                      FUN_00eaebef();
                    }
                    iVar3 = FUN_00e4d760(&PTR_DAT_01543ec4);
                    if (iVar3 == 0) {
                      if (*(int *)(iVar5 + 0x90) == 0) {
                        FUN_00eae9a0();
                        FUN_00e99a98(in_stack_ffffff50);
                        in_stack_ffffff50 = 0x7bb0c5;
                        FUN_00eaebef();
                      }
                      iVar3 = FUN_00e4d760(&PTR_DAT_01543ec4);
                      if (iVar3 == 0) {
                        if (*(int *)(iVar5 + 0x94) == 0) {
                          FUN_00eae9a0();
                          FUN_00e99aa9(in_stack_ffffff50);
                          in_stack_ffffff50 = 0x7bb115;
                          FUN_00eaebef();
                        }
                        iVar5 = FUN_00e4d760(&PTR_DAT_01543ec4);
                        if (iVar5 == 0) goto LAB_007bb13d;
                        goto LAB_007bb128;
                      }
                      goto LAB_007bb99d;
                    }
                  }
                  param_1[0xc] = 0x316;
                }
              }
            }
          }
          else {
            param_1[0xc] = iVar5;
          }
        }
      }
LAB_007bb13d:
      if (*(char *)(param_1[4] + 8) == '\0') {
        *(undefined1 *)((int)param_1 + 0x39) = 0;
      }
      else {
        iStack_28 = FUN_0077b240();
        if ((*(uint *)(iStack_28 + 0x1c) & 0x1600000) == 0) {
          param_1[6] = 5;
          FUN_00eaecdd();
          FUN_00d9bfc0();
          FUN_00dfc9c0();
          return;
        }
LAB_007bb786:
        if ((*(uint *)(iStack_28 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        if ((0 < *(int *)(iStack_28 + 0x24)) &&
           (*(int *)(iStack_28 + 0x24) <= *(int *)(iStack_28 + 0x20))) {
          param_1[5] = 0;
          if ((char)param_1[0xe] == '\0') {
            iVar5 = FUN_00eaeae1();
            *(undefined ***)(iVar5 + 8) = &PTR_DAT_01b9dd54;
            *(undefined ***)(iVar5 + 0xc) = &PTR_DAT_01be2de4;
            FUN_0077a610(iVar5,&PTR_DAT_01be3a14);
            *(undefined1 *)(param_1 + 0xe) = 1;
          }
          *(undefined1 *)((int)param_1 + 0x39) = 1;
        }
        if ((*(char *)((int)param_1 + 0x39) == '\0') && (0 < param_1[10])) {
          param_1[10] = param_1[10] + -1;
        }
        if (param_1[5] == 0) {
          if (((char)param_1[0xe] == '\0') && (*(char *)((int)param_1 + 0x39) == '\0')) {
            iVar5 = FUN_00eaeae1();
            *(undefined ***)(iVar5 + 8) = &PTR_DAT_01b9dd54;
            *(undefined ***)(iVar5 + 0xc) = &PTR_DAT_01be2de4;
            FUN_0077a610(iVar5,&PTR_DAT_01be3a14);
            *(undefined1 *)(param_1 + 0xe) = 1;
            goto LAB_007bb322;
          }
        }
        else if (*(char *)((int)param_1 + 0x39) == '\0') {
          if ((((char)param_1[0xf] == '\0') || (param_1[0xc] < 1)) ||
             (*(char *)((int)param_1 + 0x3b) != '\0')) {
            iVar5 = FUN_00eaeae1();
            *(undefined ***)(iVar5 + 8) = &PTR_DAT_01b9dd54;
            *(undefined ***)(iVar5 + 0xc) = &PTR_DAT_01be2e00;
            FUN_0077a610(iVar5,&PTR_DAT_01be3a14);
            iStack_1c = FUN_00975000(*(undefined4 *)(iVar7 + 0x1c));
            if ((*(uint *)(iStack_1c + 0x1c) & 0x1600000) == 0) {
              param_1[6] = 8;
              FUN_00eaecdd();
              FUN_00d9bfc0();
              FUN_00dfc9c0();
              return;
            }
LAB_007bb65b:
            if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            FUN_0077b300(*(undefined4 *)(param_1[5] + 8));
          }
          else {
            param_1[9] = param_1[0xc];
            iStack_2c = FUN_007b6880(param_1[9]);
            if ((*(uint *)(iStack_2c + 0x1c) & 0x1600000) == 0) {
              param_1[6] = 6;
              FUN_00eaecdd();
              FUN_00d9bfc0();
              FUN_00dfc9c0();
              return;
            }
LAB_007bb6ef:
            if ((*(uint *)(iStack_2c + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            if ((*(int *)(iStack_2c + 0x28) < (int)(uint)(*(int *)(iStack_2c + 0x24) == 0)) ||
               (*(int *)(param_1[2] + 8) == 0)) {
              iVar5 = FUN_00eaeae1();
              *(undefined ***)(iVar5 + 8) = &PTR_DAT_01b9dd54;
              *(undefined ***)(iVar5 + 0xc) = &PTR_DAT_01be2e00;
              FUN_0077a610(iVar5,&PTR_DAT_01be3a14);
              iStack_1c = FUN_00975000(*(undefined4 *)(iVar7 + 0x1c));
              if ((*(uint *)(iStack_1c + 0x1c) & 0x1600000) == 0) {
                param_1[6] = 7;
                FUN_00eaecdd();
                FUN_00d9bfc0();
                FUN_00dfc9c0();
                return;
              }
LAB_007bb6a5:
              if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
              FUN_0077b300(*(undefined4 *)(param_1[5] + 8));
            }
            else {
              FUN_0077b350(*(int *)(iStack_2c + 0x24),*(int *)(iStack_2c + 0x28),
                           *(undefined4 *)(*(int *)(param_1[2] + 8) + 8));
              if ((param_1[9] == 0xd47) || (param_1[9] == 0xd48)) {
                iVar5 = 4;
              }
              else {
                iVar5 = 8;
              }
              param_1[10] = iVar5;
            }
          }
LAB_007bb322:
          *(undefined1 *)((int)param_1 + 0x39) = 1;
        }
      }
      if (*(char *)(param_1[4] + 9) == '\0') {
        *(undefined1 *)((int)param_1 + 0x3a) = 0;
      }
      else if (*(char *)((int)param_1 + 0x3a) == '\0') {
        if ((*(byte *)(param_1 + 0xf) & param_1[5] != 0) == 0) {
          bVar8 = false;
        }
        else {
          bVar8 = 0 < param_1[0xc];
        }
        if ((*(byte *)((int)param_1 + 0x3b) & bVar8) == 0) {
          iVar5 = FUN_00eaeae1();
          *(undefined ***)(iVar5 + 8) = &PTR_DAT_01b9b7c8;
          *(undefined ***)(iVar5 + 0xc) = &PTR_DAT_01be2e20;
          FUN_0077a610(iVar5,&PTR_DAT_01be3a14);
        }
        else {
          param_1[9] = param_1[0xc];
          iStack_2c = FUN_007b6880(param_1[9]);
          if ((*(uint *)(iStack_2c + 0x1c) & 0x1600000) == 0) {
            param_1[6] = 9;
            FUN_00eaecdd();
            FUN_00d9bfc0();
            FUN_00dfc9c0();
            return;
          }
LAB_007bb579:
          if ((*(uint *)(iStack_2c + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          iVar5 = *(int *)(iStack_2c + 0x24);
          iVar3 = *(int *)(iStack_2c + 0x28);
          if ((iVar3 < (int)(uint)(iVar5 == 0)) || (*(int *)(param_1[2] + 8) == 0)) {
            iVar5 = FUN_00eaeae1();
            *(undefined ***)(iVar5 + 8) = &PTR_DAT_01b9b7c8;
            *(undefined ***)(iVar5 + 0xc) = &PTR_DAT_01be2e20;
            FUN_0077a610(iVar5,&PTR_DAT_01be3a14);
          }
          else {
            iVar4 = FUN_00eaeae1();
            *(undefined ***)(iVar4 + 8) = &PTR_DAT_01b9b7c8;
            *(undefined ***)(iVar4 + 0xc) = &PTR_DAT_01be2e64;
            FUN_0077a610(iVar4,&PTR_DAT_01be3a14);
            FUN_0077b350(iVar5,iVar3,*(undefined4 *)(*(int *)(param_1[2] + 8) + 8));
            if ((param_1[9] == 0xd47) || (param_1[9] == 0xd48)) {
              iVar5 = 4;
            }
            else {
              iVar5 = 8;
            }
            param_1[10] = iVar5;
          }
        }
        *(undefined1 *)((int)param_1 + 0x3a) = 1;
      }
      in_stack_ffffff4c = *(undefined4 *)(iVar7 + 0x1c);
      in_stack_ffffff48 = 0x7bb461;
      iStack_1c = FUN_00975000(in_stack_ffffff4c);
      if ((*(uint *)(iStack_1c + 0x1c) & 0x1600000) == 0) {
        param_1[6] = 10;
        FUN_00eaecdd();
        FUN_00d9bfc0();
        FUN_00dfc9c0();
        return;
      }
LAB_007bb53a:
      if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      param_1[2] = 0;
      param_1[4] = 0;
      param_1[5] = 0;
    }
LAB_007bbc97:
    FUN_00eae9a0();
    FUN_00eaeca8();
    local_14 = FUN_0077abc0();
    if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
      param_1[6] = 0;
      FUN_00eaeca8();
      FUN_00d9bfc0();
      FUN_00dfca00(&PTR_DAT_01553fd0);
      return;
    }
  } while( true );
}

