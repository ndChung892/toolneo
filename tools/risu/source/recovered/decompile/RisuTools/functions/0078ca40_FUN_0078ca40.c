/* Address: 0078ca40 | Ghidra name: FUN_0078ca40 */

/* WARNING: Type propagation algorithm not settling */

void __fastcall FUN_0078ca40(int param_1)

{
  undefined1 uVar1;
  int iVar2;
  int iVar3;
  undefined4 *puVar4;
  int iVar5;
  int iVar6;
  bool bVar7;
  int extraout_ECX;
  int extraout_ECX_00;
  int extraout_ECX_01;
  int extraout_ECX_02;
  undefined4 uVar8;
  undefined4 uVar9;
  undefined **in_stack_ffffff20;
  undefined **in_stack_ffffff24;
  int local_b8;
  int local_90;
  undefined **local_74;
  undefined *local_60;
  undefined4 uStack_5c;
  undefined4 uStack_58;
  undefined4 uStack_54;
  undefined *local_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  int local_40 [12];
  
  local_60 = (undefined *)0x0;
  uStack_5c = 0;
  uStack_58 = 0;
  uStack_54 = 0;
  local_50 = (undefined *)0x0;
  uStack_4c = 0;
  uStack_48 = 0;
  uStack_44 = 0;
  local_40[0] = 0;
  local_40[1] = 0;
  local_40[2] = 0;
  local_40[3] = 0;
  local_40[4] = 0;
  local_40[5] = 0;
  local_40[6] = 0;
  local_40[7] = 0;
  local_40[8] = 0;
  local_40[9] = 0;
  local_40[10] = 0;
  local_40[0xb] = 0;
  iVar6 = *(int *)(param_1 + 4);
  local_74 = in_stack_ffffff20;
  switch(*(undefined4 *)(param_1 + 0x1c)) {
  case 0:
    local_40[10] = *(int *)(param_1 + 0x3c);
    *(undefined4 *)(param_1 + 0x3c) = 0;
    *(undefined4 *)(param_1 + 0x1c) = 0xffffffff;
    break;
  case 1:
    local_40[9] = *(int *)(param_1 + 0x40);
    *(undefined4 *)(param_1 + 0x40) = 0;
    *(undefined4 *)(param_1 + 0x1c) = 0xffffffff;
    goto LAB_0078d0aa;
  case 2:
    local_40[8] = *(int *)(param_1 + 0x44);
    *(undefined4 *)(param_1 + 0x44) = 0;
    *(undefined4 *)(param_1 + 0x1c) = 0xffffffff;
    goto LAB_0078d00d;
  case 3:
    local_40[7] = *(int *)(param_1 + 0x48);
    *(undefined4 *)(param_1 + 0x48) = 0;
    *(undefined4 *)(param_1 + 0x1c) = 0xffffffff;
    goto LAB_0078cfd3;
  case 4:
    local_40[9] = *(int *)(param_1 + 0x40);
    *(undefined4 *)(param_1 + 0x40) = 0;
    *(undefined4 *)(param_1 + 0x1c) = 0xffffffff;
    goto LAB_0078cf36;
  case 5:
    local_40[6] = *(int *)(param_1 + 0x4c);
    *(undefined4 *)(param_1 + 0x4c) = 0;
    *(undefined4 *)(param_1 + 0x1c) = 0xffffffff;
    goto LAB_0078ce2f;
  case 6:
    local_40[5] = *(int *)(param_1 + 0x50);
    *(undefined4 *)(param_1 + 0x50) = 0;
    *(undefined4 *)(param_1 + 0x1c) = 0xffffffff;
    goto LAB_0078cd09;
  case 7:
    local_40[4] = *(int *)(param_1 + 0x54);
    *(undefined4 *)(param_1 + 0x54) = 0;
    *(undefined4 *)(param_1 + 0x1c) = 0xffffffff;
    goto LAB_0078cca8;
  case 8:
    local_40[7] = *(int *)(param_1 + 0x48);
    *(undefined4 *)(param_1 + 0x48) = 0;
    *(undefined4 *)(param_1 + 0x1c) = 0xffffffff;
    goto LAB_0078cc5a;
  case 9:
    local_40[7] = *(int *)(param_1 + 0x48);
    *(undefined4 *)(param_1 + 0x48) = 0;
    *(undefined4 *)(param_1 + 0x1c) = 0xffffffff;
    goto LAB_0078cc0c;
  case 10:
    local_40[4] = *(int *)(param_1 + 0x54);
    *(undefined4 *)(param_1 + 0x54) = 0;
    *(undefined4 *)(param_1 + 0x1c) = 0xffffffff;
    goto LAB_0078cba6;
  case 0xb:
    local_40[7] = *(int *)(param_1 + 0x48);
    *(undefined4 *)(param_1 + 0x48) = 0;
    *(undefined4 *)(param_1 + 0x1c) = 0xffffffff;
    goto LAB_0078cb67;
  case 0xc:
    local_40[7] = *(int *)(param_1 + 0x48);
    *(undefined4 *)(param_1 + 0x48) = 0;
    *(undefined4 *)(param_1 + 0x1c) = 0xffffffff;
    goto LAB_0078cae3;
  case 0xd:
    local_40[3] = *(int *)(param_1 + 0x58);
    *(undefined4 *)(param_1 + 0x58) = 0;
    *(undefined4 *)(param_1 + 0x1c) = 0xffffffff;
    goto LAB_0078ca9a;
  default:
    FUN_00eae9a0();
    FUN_00eaeca8();
    FUN_00eaebca();
    FUN_0077afa0(&PTR_DAT_01c0f488,&PTR_DAT_01be39d8);
    *(undefined2 *)(param_1 + 0x32) = 0;
    *(undefined4 *)(param_1 + 0x20) = *(undefined4 *)(*(int *)(*(int *)(iVar6 + 4) + 0x14c) + 0x34);
    *(undefined2 *)(param_1 + 0x34) = 0;
    *(undefined4 *)(param_1 + 0x24) = 0;
    goto LAB_0078d30a;
  }
  do {
    if ((*(uint *)(local_40[10] + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    FUN_00eaebca();
    iVar2 = *(int *)(*(int *)(extraout_ECX_00 + 0xc) + 4);
    if ((iVar2 == 0) || (*(char *)(iVar2 + 0x69) == '\0')) {
      if (*(char *)(extraout_ECX_00 + 0x32) != '\0') {
        while( true ) {
          local_40[3] = FUN_0077af00();
          if ((*(uint *)(local_40[3] + 0x1c) & 0x1600000) == 0) {
            *(undefined4 *)(param_1 + 0x1c) = 0xd;
            FUN_00eaeca8();
            FUN_00d95f00();
            FUN_00dfc9c0();
            return;
          }
LAB_0078ca9a:
          if ((*(uint *)(local_40[3] + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          if (*(char *)(local_40[3] + 0x20) == '\0') break;
          uVar8 = FUN_00906a20();
          FUN_00782420(uVar8);
          local_40[7] = FUN_00975000(*(undefined4 *)(iVar6 + 0x1c));
          if ((*(uint *)(local_40[7] + 0x1c) & 0x1600000) == 0) {
            *(undefined4 *)(param_1 + 0x1c) = 0xc;
            FUN_00eaeca8();
            FUN_00d95f00();
            FUN_00dfc9c0();
            return;
          }
LAB_0078cae3:
          if ((*(uint *)(local_40[7] + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
        }
      }
      *(undefined4 *)(param_1 + 0x1c) = 0xfffffffe;
      *(undefined4 *)(param_1 + 8) = 0;
      if (*(int *)(param_1 + 0x38) != 0) {
        iVar6 = FUN_00b6e080();
        if (iVar6 != 0) {
          return;
        }
                    /* WARNING: Subroutine does not return */
        FUN_00931e50();
      }
      if (*(char *)(param_1 + 0x33) == '\0') {
        if (PTR_FUN_01c2211c != (undefined *)0x0) {
          FUN_00e8eaff();
        }
      }
      else if (PTR_FUN_01c2211c != (undefined *)0x0) {
        FUN_00e8eaff();
      }
      FUN_00eaed7c();
      return;
    }
    *(undefined1 *)(extraout_ECX_00 + 0x36) = 0;
    if ((*(char *)(extraout_ECX_00 + 0x30) != '\0') && (*(char *)(extraout_ECX_00 + 0x33) == '\0'))
    {
      local_40[9] = FUN_0077af40(0,0);
      if ((*(uint *)(local_40[9] + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)(param_1 + 0x1c) = 1;
        FUN_00eaecdd();
        FUN_00d95f00();
        FUN_00dfca00(&PTR_DAT_01557380);
        return;
      }
LAB_0078d0aa:
      if ((*(uint *)(local_40[9] + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      if ((*(int *)(param_1 + 0x10) != 0) && (*(int *)(*(int *)(param_1 + 0x10) + 4) != 0)) {
        FUN_00906aa0(&PTR_DAT_01bdd8c8);
        iVar2 = FUN_00909ad0();
        if (iVar2 == 0) {
          FUN_00906aa0(&PTR_DAT_01bdd8c8);
          iVar2 = FUN_00909ad0();
          if (iVar2 == 0) goto LAB_0078d174;
        }
        *(undefined1 *)(param_1 + 0x33) = 1;
        if (*(char *)(param_1 + 0x32) == '\0') {
          local_40[2] = *(undefined4 *)(*(int *)(iVar6 + 0x14) + 8);
          iVar2 = FUN_00eaeae1();
          *(undefined ***)(iVar2 + 8) = &PTR_DAT_01b9dd54;
          *(undefined ***)(iVar2 + 0xc) = &PTR_DAT_01be2de4;
          FUN_0077a610(iVar2,&PTR_DAT_01be3a14);
          *(undefined1 *)(param_1 + 0x32) = 1;
        }
      }
    }
LAB_0078d174:
    local_40[8] = FUN_0077b200();
    local_74 = in_stack_ffffff20;
    if ((*(uint *)(local_40[8] + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 0x1c) = 2;
      FUN_00eaeca8();
      FUN_00d95f00();
      FUN_00dfca00(&PTR_DAT_01553a48);
      return;
    }
LAB_0078d00d:
    if ((*(uint *)(local_40[8] + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    FUN_00eaeca8();
    if (*(int *)(extraout_ECX + 0x14) == 0) {
      local_40[7] = FUN_00975000(*(undefined4 *)(iVar6 + 0x1c));
      if ((*(uint *)(local_40[7] + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)(param_1 + 0x1c) = 3;
        FUN_00eaecdd();
        FUN_00d95f00();
        FUN_00dfc9c0();
        return;
      }
LAB_0078cfd3:
      in_stack_ffffff20 = local_74;
      if ((*(uint *)(local_40[7] + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
        in_stack_ffffff20 = local_74;
      }
    }
    else {
      *(undefined1 *)(extraout_ECX + 0x36) = 0;
      if (*(int *)(extraout_ECX + 0x14) != 0) {
        iVar2 = FUN_00eae9a0();
        FUN_00eae9a0();
        FUN_00e98ed7(local_74);
        FUN_00e4e4a0(&PTR_DAT_01543ac4,local_40 + 1);
        local_74 = (undefined **)0x78d498;
        FUN_00eaebca();
        if (*(int *)(iVar2 + 4) != 0) {
          FUN_00eae9a0();
          FUN_00e98f2c(in_stack_ffffff24);
          in_stack_ffffff24 = &PTR_DAT_01543a30;
          local_74 = (undefined **)0x78d4e6;
          uVar1 = FUN_00e4d760(&PTR_DAT_01543a30);
          *(undefined1 *)(param_1 + 0x36) = uVar1;
        }
      }
      iVar2 = DAT_01c21b20;
      if (*(char *)(param_1 + 0x32) == '\0') {
        local_40[9] = FUN_0077af40(0,0);
        if ((*(uint *)(local_40[9] + 0x1c) & 0x1600000) == 0) {
          *(undefined4 *)(param_1 + 0x1c) = 4;
          FUN_00eaecdd();
          FUN_00d95f00();
          FUN_00dfca00(&PTR_DAT_01557380);
          return;
        }
LAB_0078cf36:
        if ((*(uint *)(local_40[9] + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        iVar2 = DAT_01c21b20;
        if ((*(int *)(local_40[9] + 0x20) != 0) && (*(int *)(*(int *)(local_40[9] + 0x20) + 4) != 0)
           ) {
          iVar2 = FUN_00909ad0();
          if (iVar2 == 0) {
            FUN_0094bfb0();
            FUN_0094c500();
            local_74 = (undefined **)&DAT_01c222d8;
            if (PTR_FUN_01c222d4 != (undefined *)0x0) {
              FUN_00e8cd95();
            }
            if (DAT_01c222d8 == '\0') {
              FUN_00dfdf80();
            }
            else {
              FUN_00956500();
            }
            FUN_0094bfb0();
            FUN_0094c500();
            if (*(char *)local_74 == '\0') {
              FUN_00dfdf80();
            }
            else {
              FUN_00956500();
            }
            iVar3 = FUN_00909ad0();
            iVar2 = DAT_01c21b20;
            if (iVar3 == 0) goto LAB_0078d678;
          }
          FUN_00a51650();
          puVar4 = (undefined4 *)FUN_00a51200();
          iVar2 = DAT_01c21b20;
          if (puVar4[7] != 0) {
            if ((undefined *)*puVar4 == &DAT_01626e9c) {
              FUN_00a4fcf0();
            }
            else {
              FUN_00a502b0();
            }
            FUN_00a4f4a0();
            iVar2 = FUN_00a4f280();
            if (iVar2 == 0) {
                    /* WARNING: Subroutine does not return */
              FUN_00931d20();
            }
            iVar3 = iVar2 + 8;
            uVar8 = *(undefined4 *)(iVar2 + 4);
            iVar2 = iVar3;
            uVar9 = uVar8;
            FUN_00958ea0(iVar3,uVar8);
            iVar2 = FUN_00dd21c0(local_40,iVar2,uVar9);
            if (iVar2 != 0) {
              if (iVar2 == 1) {
                    /* WARNING: Subroutine does not return */
                FUN_00dca280(iVar3,uVar8);
              }
                    /* WARNING: Subroutine does not return */
              FUN_00de72e0();
            }
            iVar3 = 0;
            if ((0 < *(int *)(param_1 + 0x24)) && (iVar2 = *(int *)(param_1 + 0x20), 0 < iVar2)) {
              if (iVar2 == 0x315) {
                iVar3 = 1;
              }
              else if (iVar2 == 0x325) {
                iVar3 = 2;
              }
              else if (iVar2 == 0x316) {
                iVar3 = 3;
              }
            }
            iVar2 = local_40[0] - iVar3;
            if (local_40[0] - iVar3 <= DAT_01c21b20) {
              iVar2 = DAT_01c21b20;
            }
          }
        }
      }
LAB_0078d678:
      DAT_01c21b20 = iVar2;
      *(undefined4 *)(param_1 + 0x18) = 0;
      iVar2 = param_1;
      in_stack_ffffff20 = local_74;
      if ((*(char *)(param_1 + 0x32) == '\0') &&
         ((*(char *)(param_1 + 0x30) == '\0' || (*(char *)(param_1 + 0x33) == '\0')))) {
        if (*(char *)(param_1 + 0x31) != '\0') {
          if (*(int *)(param_1 + 0x14) != 0) {
            FUN_00eae9a0();
            FUN_00e98ee8(local_74);
            FUN_00e4ee90(&PTR_DAT_01543b14);
            in_stack_ffffff20 = &PTR_PTR_01543aa4;
            FUN_00e4e3a0(&PTR_PTR_01543aa4);
          }
          FUN_00eaeca8();
          iVar2 = extraout_ECX_01;
        }
        if (*(int *)(iVar2 + 0x18) == 0) {
          if (*(int *)(iVar2 + 0x14) != 0) {
            FUN_00eae9a0();
            FUN_00e98ef9(in_stack_ffffff20);
            in_stack_ffffff20 = &PTR_DAT_01543b14;
            FUN_00e4ee90(&PTR_DAT_01543b14);
            local_b8 = *(int *)(DAT_01c28974 + 0x1c);
            if (local_b8 == 0) {
              local_b8 = FUN_00eae9a0();
              FUN_00e98dd8(in_stack_ffffff24);
              in_stack_ffffff20 = (undefined **)0x78d770;
              FUN_00eaec14();
            }
            FUN_00eae9a0();
            FUN_00cf65d0(0,0,0,local_b8);
            FUN_00e4e3a0(&PTR_PTR_01543aa4);
          }
          FUN_00eaeca8();
          iVar2 = extraout_ECX_02;
        }
      }
      *(undefined1 *)(iVar2 + 0x37) = 0;
      *(undefined4 *)(iVar2 + 0x28) = 0;
      if (((*(int *)(iVar2 + 0x18) != 0) && (0 < DAT_01c21b20)) && (*(int *)(iVar2 + 0x24) < 1)) {
        iVar3 = *(int *)(*(int *)(iVar2 + 0x18) + 0x1c);
        if (iVar3 < 1) {
          iVar3 = 99;
        }
        if (DAT_01c21b20 < iVar3) {
          *(undefined1 *)(iVar2 + 0x37) = 1;
          *(int *)(iVar2 + 0x2c) = iVar3 - DAT_01c21b20;
          iVar2 = *(int *)(*(int *)(*(int *)(iVar6 + 4) + 0x14c) + 0x34);
          if (iVar2 < 1) {
            local_40[6] = FUN_0077b0f0(&PTR_DAT_01b39360,&PTR_DAT_01b8d2bc);
            if ((*(uint *)(local_40[6] + 0x1c) & 0x1600000) == 0) {
              *(undefined4 *)(param_1 + 0x1c) = 5;
              FUN_00eaecdd();
              FUN_00d95f00();
              FUN_00dfca00(&PTR_DAT_01568c48);
              return;
            }
LAB_0078ce2f:
            if ((*(uint *)(local_40[6] + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            if (*(int *)(local_40[6] + 0x20) != 0) {
              if (*(int *)(param_1 + 0x2c) < 2) {
                if (*(int *)(DAT_01c28974 + 0x20) == 0) {
                  FUN_00eae9a0();
                  FUN_00e98de9(in_stack_ffffff20);
                  in_stack_ffffff20 = (undefined **)0x78cea2;
                  FUN_00eaebef();
                }
                iVar2 = FUN_00e4d760(&PTR_DAT_01543ec4);
                if (iVar2 == 0) goto LAB_0078ceb9;
LAB_0078d9cd:
                *(undefined4 *)(param_1 + 0x28) = 0x315;
              }
              else {
LAB_0078ceb9:
                if (*(int *)(param_1 + 0x2c) < 3) {
                  if (*(int *)(DAT_01c28974 + 0x24) == 0) {
                    FUN_00eae9a0();
                    FUN_00e98dfa(in_stack_ffffff20);
                    in_stack_ffffff20 = (undefined **)0x78cf01;
                    FUN_00eaebef();
                  }
                  iVar2 = FUN_00e4d760(&PTR_DAT_01543ec4);
                  if (iVar2 == 0) goto LAB_0078d881;
LAB_0078cf18:
                  *(undefined4 *)(param_1 + 0x28) = 0x325;
                }
                else {
LAB_0078d881:
                  if (*(int *)(param_1 + 0x2c) < 4) {
                    if (*(int *)(DAT_01c28974 + 0x28) == 0) {
                      FUN_00eae9a0();
                      FUN_00e98e0b(in_stack_ffffff20);
                      in_stack_ffffff20 = (undefined **)0x78d8c5;
                      FUN_00eaebef();
                    }
                    iVar2 = FUN_00e4d760(&PTR_DAT_01543ec4);
                    if (iVar2 == 0) goto LAB_0078d8dc;
                  }
                  else {
LAB_0078d8dc:
                    iVar2 = DAT_01c28974;
                    if (*(int *)(DAT_01c28974 + 0x2c) == 0) {
                      FUN_00eae9a0();
                      FUN_00e98e1c(in_stack_ffffff20);
                      in_stack_ffffff20 = (undefined **)0x78d91a;
                      FUN_00eaebef();
                    }
                    iVar3 = FUN_00e4d760(&PTR_DAT_01543ec4);
                    if (iVar3 == 0) {
                      if (*(int *)(iVar2 + 0x30) == 0) {
                        FUN_00eae9a0();
                        FUN_00e98e2d(in_stack_ffffff20);
                        in_stack_ffffff20 = (undefined **)0x78d96a;
                        FUN_00eaebef();
                      }
                      iVar3 = FUN_00e4d760(&PTR_DAT_01543ec4);
                      if (iVar3 == 0) {
                        if (*(int *)(iVar2 + 0x34) == 0) {
                          FUN_00eae9a0();
                          FUN_00e98e3e(in_stack_ffffff20);
                          in_stack_ffffff20 = (undefined **)0x78d9ba;
                          FUN_00eaebef();
                        }
                        iVar2 = FUN_00e4d760(&PTR_DAT_01543ec4);
                        if (iVar2 == 0) goto LAB_0078d9e5;
                        goto LAB_0078d9cd;
                      }
                      goto LAB_0078cf18;
                    }
                  }
                  *(undefined4 *)(param_1 + 0x28) = 0x316;
                }
              }
            }
          }
          else {
            *(int *)(param_1 + 0x28) = iVar2;
          }
        }
      }
LAB_0078d9e5:
      if (*(char *)(*(int *)(param_1 + 0x14) + 8) == '\0') {
        *(undefined1 *)(param_1 + 0x34) = 0;
      }
      else {
        local_40[5] = FUN_0077b240();
        if ((*(uint *)(local_40[5] + 0x1c) & 0x1600000) == 0) {
          *(undefined4 *)(param_1 + 0x1c) = 6;
          FUN_00eaecdd();
          FUN_00d95f00();
          FUN_00dfc9c0();
          return;
        }
LAB_0078cd09:
        if ((*(uint *)(local_40[5] + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        if ((0 < *(int *)(local_40[5] + 0x24)) &&
           (*(int *)(local_40[5] + 0x24) <= *(int *)(local_40[5] + 0x20))) {
          *(undefined4 *)(param_1 + 0x18) = 0;
          if (*(char *)(param_1 + 0x32) == '\0') {
            uStack_4c = *(undefined4 *)(*(int *)(iVar6 + 0x14) + 8);
            iVar2 = FUN_00eaeae1();
            *(undefined ***)(iVar2 + 8) = &PTR_DAT_01b9dd54;
            *(undefined ***)(iVar2 + 0xc) = &PTR_DAT_01be2de4;
            FUN_0077a610(iVar2,&PTR_DAT_01be3a14);
            *(undefined1 *)(param_1 + 0x32) = 1;
          }
          *(undefined1 *)(param_1 + 0x34) = 1;
        }
        if ((*(char *)(param_1 + 0x34) == '\0') && (0 < *(int *)(param_1 + 0x24))) {
          *(int *)(param_1 + 0x24) = *(int *)(param_1 + 0x24) + -1;
        }
        if (*(int *)(param_1 + 0x18) == 0) {
          if ((*(char *)(param_1 + 0x32) == '\0') && (*(char *)(param_1 + 0x34) == '\0')) {
            uStack_5c = *(undefined4 *)(*(int *)(iVar6 + 0x14) + 8);
            iVar2 = FUN_00eaeae1();
            *(undefined ***)(iVar2 + 8) = &PTR_DAT_01b9dd54;
            *(undefined ***)(iVar2 + 0xc) = &PTR_DAT_01be2de4;
            FUN_0077a610(iVar2,&PTR_DAT_01be3a14);
            *(undefined1 *)(param_1 + 0x32) = 1;
            goto LAB_0078dc50;
          }
        }
        else if (*(char *)(param_1 + 0x34) == '\0') {
          if (((*(char *)(param_1 + 0x37) == '\0') || (*(int *)(param_1 + 0x28) < 1)) ||
             (*(char *)(param_1 + 0x36) != '\0')) {
            uStack_58 = *(undefined4 *)(*(int *)(iVar6 + 0x14) + 8);
            iVar2 = FUN_00eaeae1();
            *(undefined ***)(iVar2 + 8) = &PTR_DAT_01b9dd54;
            *(undefined ***)(iVar2 + 0xc) = &PTR_DAT_01be2e00;
            FUN_0077a610(iVar2,&PTR_DAT_01be3a14);
            local_40[7] = FUN_00975000(*(undefined4 *)(iVar6 + 0x1c));
            if ((*(uint *)(local_40[7] + 0x1c) & 0x1600000) == 0) {
              *(undefined4 *)(param_1 + 0x1c) = 9;
              FUN_00eaecdd();
              FUN_00d95f00();
              FUN_00dfc9c0();
              return;
            }
LAB_0078cc0c:
            if ((*(uint *)(local_40[7] + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            FUN_0077b300(*(undefined4 *)(*(int *)(param_1 + 0x18) + 8));
          }
          else {
            *(int *)(param_1 + 0x20) = *(int *)(param_1 + 0x28);
            local_40[4] = FUN_00787740();
            if ((*(uint *)(local_40[4] + 0x1c) & 0x1600000) == 0) {
              *(undefined4 *)(param_1 + 0x1c) = 7;
              FUN_00eaecdd();
              FUN_00d95f00();
              FUN_00dfc9c0();
              return;
            }
LAB_0078cca8:
            if ((*(uint *)(local_40[4] + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            iVar2 = *(int *)(local_40[4] + 0x24);
            iVar3 = *(int *)(local_40[4] + 0x28);
            if (iVar3 < (int)(uint)(iVar2 == 0)) {
              uStack_54 = *(undefined4 *)(*(int *)(iVar6 + 0x14) + 8);
              iVar2 = FUN_00eaeae1();
              *(undefined ***)(iVar2 + 8) = &PTR_DAT_01b9dd54;
              *(undefined ***)(iVar2 + 0xc) = &PTR_DAT_01be2e00;
              FUN_0077a610(iVar2,&PTR_DAT_01be3a14);
              local_40[7] = FUN_00975000(*(undefined4 *)(iVar6 + 0x1c));
              if ((*(uint *)(local_40[7] + 0x1c) & 0x1600000) == 0) {
                *(undefined4 *)(param_1 + 0x1c) = 8;
                FUN_00eaecdd();
                FUN_00d95f00();
                FUN_00dfc9c0();
                return;
              }
LAB_0078cc5a:
              if ((*(uint *)(local_40[7] + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
              FUN_0077b300(*(undefined4 *)(*(int *)(param_1 + 0x18) + 8));
            }
            else {
              if (*(int *)(param_1 + 0x14) == 0) {
                iVar5 = 0;
              }
              else {
                FUN_00eae9a0();
                FUN_00e98f0a(in_stack_ffffff20);
                in_stack_ffffff20 = &local_50;
                iVar5 = FUN_00e4e4a0(&PTR_DAT_01543ac4,in_stack_ffffff20);
              }
              if (iVar5 != 0) {
                FUN_0077b350(iVar2,iVar3,*(undefined4 *)(iVar5 + 8));
              }
              if ((*(int *)(param_1 + 0x20) == 0xd47) || (*(int *)(param_1 + 0x20) == 0xd48)) {
                uVar8 = 4;
              }
              else {
                uVar8 = 8;
              }
              *(undefined4 *)(param_1 + 0x24) = uVar8;
            }
          }
LAB_0078dc50:
          *(undefined1 *)(param_1 + 0x34) = 1;
        }
      }
      if (*(char *)(*(int *)(param_1 + 0x14) + 9) == '\0') {
        *(undefined1 *)(param_1 + 0x35) = 0;
      }
      else if (*(char *)(param_1 + 0x35) == '\0') {
        if ((*(byte *)(param_1 + 0x37) & *(int *)(param_1 + 0x18) != 0) == 0) {
          bVar7 = false;
        }
        else {
          bVar7 = 0 < *(int *)(param_1 + 0x28);
        }
        if ((*(byte *)(param_1 + 0x36) & bVar7) == 0) {
          iVar2 = FUN_00eaeae1();
          *(undefined ***)(iVar2 + 8) = &PTR_DAT_01b9b7c8;
          *(undefined ***)(iVar2 + 0xc) = &PTR_DAT_01be2e20;
          FUN_0077a610(iVar2,&PTR_DAT_01be3a14);
        }
        else {
          *(undefined4 *)(param_1 + 0x20) = *(undefined4 *)(param_1 + 0x28);
          local_40[4] = FUN_00787740();
          if ((*(uint *)(local_40[4] + 0x1c) & 0x1600000) == 0) {
            *(undefined4 *)(param_1 + 0x1c) = 10;
            FUN_00eaecdd();
            FUN_00d95f00();
            FUN_00dfc9c0();
            return;
          }
LAB_0078cba6:
          if ((*(uint *)(local_40[4] + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          iVar2 = *(int *)(local_40[4] + 0x24);
          iVar3 = *(int *)(local_40[4] + 0x28);
          if (iVar3 < (int)(uint)(iVar2 == 0)) {
            iVar2 = FUN_00eaeae1();
            *(undefined ***)(iVar2 + 8) = &PTR_DAT_01b9b7c8;
            *(undefined ***)(iVar2 + 0xc) = &PTR_DAT_01be2e20;
            FUN_0077a610(iVar2,&PTR_DAT_01be3a14);
          }
          else {
            if (*(int *)(param_1 + 0x14) == 0) {
              local_90 = 0;
            }
            else {
              FUN_00eae9a0();
              FUN_00e98f1b(in_stack_ffffff20);
              in_stack_ffffff20 = &local_60;
              local_90 = FUN_00e4e4a0(&PTR_DAT_01543ac4,in_stack_ffffff20);
            }
            in_stack_ffffff24 = *(undefined ***)(*(int *)(iVar6 + 0x14) + 4);
            iVar5 = FUN_00eaeae1();
            *(undefined ***)(iVar5 + 8) = &PTR_DAT_01b9b7c8;
            *(undefined ***)(iVar5 + 0xc) = &PTR_DAT_01be2e64;
            FUN_0077a610(iVar5,&PTR_DAT_01be3a14);
            if (local_90 != 0) {
              FUN_0077b350(iVar2,iVar3,*(undefined4 *)(local_90 + 8));
            }
            if ((*(int *)(param_1 + 0x20) == 0xd47) || (*(int *)(param_1 + 0x20) == 0xd48)) {
              uVar8 = 4;
            }
            else {
              uVar8 = 8;
            }
            *(undefined4 *)(param_1 + 0x24) = uVar8;
          }
        }
        *(undefined1 *)(param_1 + 0x35) = 1;
      }
      local_40[7] = FUN_00975000(*(undefined4 *)(iVar6 + 0x1c));
      if ((*(uint *)(local_40[7] + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)(param_1 + 0x1c) = 0xb;
        FUN_00eaecdd();
        FUN_00d95f00();
        FUN_00dfc9c0();
        return;
      }
LAB_0078cb67:
      if ((*(uint *)(local_40[7] + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      *(undefined4 *)(param_1 + 0xc) = 0;
      *(undefined4 *)(param_1 + 0x14) = 0;
      *(undefined4 *)(param_1 + 0x18) = 0;
    }
LAB_0078d30a:
    FUN_00eae9a0();
    FUN_00eaeca8();
    FUN_00eaebca();
    local_40[0xb] = *(int *)(iVar6 + 0x1c);
    if ((local_40[0xb] != 0) && (*(int *)(local_40[0xb] + 0x10) != 0)) {
                    /* WARNING: Subroutine does not return */
      FUN_00968fa0();
    }
    local_40[10] = FUN_0077abc0();
    if ((*(uint *)(local_40[10] + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 0x1c) = 0;
      FUN_00eaeca8();
      FUN_00d95f00();
      FUN_00dfca00(&PTR_DAT_01553fc4);
      return;
    }
  } while( true );
}

