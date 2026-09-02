/* Address: 007da870 | Ghidra name: FUN_007da870 */

void __fastcall FUN_007da870(int param_1)

{
  bool bVar1;
  undefined4 uVar2;
  undefined4 *puVar3;
  int iVar4;
  undefined **in_stack_ffffffb0;
  undefined4 local_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  int iStack_20;
  int local_1c;
  int local_18;
  int local_14;
  
  local_2c = 0;
  uStack_28 = 0;
  uStack_24 = 0;
  iStack_20 = 0;
  local_1c = 0;
  local_18 = 0;
  local_14 = 0;
  switch(*(undefined4 *)(param_1 + 0x18)) {
  case 0:
    local_14 = *(int *)(param_1 + 0x20);
    *(undefined4 *)(param_1 + 0x20) = 0;
    *(undefined4 *)(param_1 + 0x18) = 0xffffffff;
    break;
  case 1:
    local_18 = *(int *)(param_1 + 0x24);
    *(undefined4 *)(param_1 + 0x24) = 0;
    *(undefined4 *)(param_1 + 0x18) = 0xffffffff;
    goto LAB_007daf64;
  case 2:
    local_18 = *(int *)(param_1 + 0x24);
    *(undefined4 *)(param_1 + 0x24) = 0;
    *(undefined4 *)(param_1 + 0x18) = 0xffffffff;
    goto LAB_007daec6;
  case 3:
    local_18 = *(int *)(param_1 + 0x24);
    *(undefined4 *)(param_1 + 0x24) = 0;
    *(undefined4 *)(param_1 + 0x18) = 0xffffffff;
    goto LAB_007dae88;
  case 4:
    local_18 = *(int *)(param_1 + 0x24);
    *(undefined4 *)(param_1 + 0x24) = 0;
    *(undefined4 *)(param_1 + 0x18) = 0xffffffff;
    goto LAB_007dadec;
  case 5:
    local_18 = *(int *)(param_1 + 0x24);
    *(undefined4 *)(param_1 + 0x24) = 0;
    *(undefined4 *)(param_1 + 0x18) = 0xffffffff;
    goto LAB_007dad5e;
  case 6:
    local_1c = *(int *)(param_1 + 0x28);
    *(undefined4 *)(param_1 + 0x28) = 0;
    *(undefined4 *)(param_1 + 0x18) = 0xffffffff;
    goto LAB_007dac92;
  case 7:
    iStack_20 = *(int *)(param_1 + 0x2c);
    *(undefined4 *)(param_1 + 0x2c) = 0;
    *(undefined4 *)(param_1 + 0x18) = 0xffffffff;
    goto LAB_007dac04;
  case 8:
    local_18 = *(int *)(param_1 + 0x24);
    *(undefined4 *)(param_1 + 0x24) = 0;
    *(undefined4 *)(param_1 + 0x18) = 0xffffffff;
    goto LAB_007dab66;
  case 9:
    local_18 = *(int *)(param_1 + 0x24);
    *(undefined4 *)(param_1 + 0x24) = 0;
    *(undefined4 *)(param_1 + 0x18) = 0xffffffff;
    goto LAB_007daa97;
  case 10:
    local_18 = *(int *)(param_1 + 0x24);
    *(undefined4 *)(param_1 + 0x24) = 0;
    *(undefined4 *)(param_1 + 0x18) = 0xffffffff;
    goto LAB_007da9d2;
  case 0xb:
    local_18 = *(int *)(param_1 + 0x24);
    *(undefined4 *)(param_1 + 0x24) = 0;
    *(undefined4 *)(param_1 + 0x18) = 0xffffffff;
    goto LAB_007da905;
  case 0xc:
    local_18 = *(int *)(param_1 + 0x24);
    *(undefined4 *)(param_1 + 0x24) = 0;
    *(undefined4 *)(param_1 + 0x18) = 0xffffffff;
    goto LAB_007da8c1;
  default:
    local_14 = FUN_0077acc0();
    if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 0x18) = 0;
      FUN_00eaecdd();
      FUN_00d9fea0();
      FUN_00dfca00(&PTR_DAT_01568d5c);
      return;
    }
  }
  if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  FUN_00eaecdd();
  if (*(int *)(param_1 + 0xc) != 0) {
    if (*(int *)(DAT_01c289d4 + 0x54) == 0) {
      FUN_00eae9a0();
      FUN_00e9a2e5();
      FUN_00eaebef();
    }
    iVar4 = FUN_00e4d760();
    if (iVar4 != 0) {
      FUN_007876b0();
      local_18 = FUN_007d30d0();
      if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)(param_1 + 0x18) = 1;
        FUN_00eaecdd();
        FUN_00d9fea0();
        FUN_00dfc9c0();
        return;
      }
LAB_007daf64:
      if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
    }
    if (*(int *)(DAT_01c289d4 + 0x58) == 0) {
      FUN_00eae9a0();
      FUN_00e9a2f6(in_stack_ffffffb0);
      in_stack_ffffffb0 = (undefined **)0x7dafba;
      FUN_00eaebef();
    }
    FUN_00e4e4a0(&PTR_DAT_01544440,&uStack_24);
    FUN_00eaeca8();
    if (*(int *)(param_1 + 0x14) != 0) {
      FUN_007876b0();
      local_18 = FUN_007877c0(0,0,0,*(double *)(*(int *)(param_1 + 0x14) + 0xc) / DAT_018d5ad0,
                              *(double *)(*(int *)(param_1 + 0x14) + 4) / DAT_018d5ad0);
      if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)(param_1 + 0x18) = 2;
        FUN_00eaecdd();
        FUN_00d9fea0();
        FUN_00dfc9c0();
        return;
      }
LAB_007daec6:
      if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      FUN_0077a760(0,*(undefined4 *)(*(int *)(param_1 + 0x14) + 0x28));
      local_18 = FUN_00975000();
      if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)(param_1 + 0x18) = 3;
        FUN_00eaeca8();
        FUN_00d9fea0();
        FUN_00dfc9c0();
        return;
      }
LAB_007dae88:
      if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      bVar1 = true;
      goto LAB_007db4cb;
    }
    *(undefined4 *)(param_1 + 0x14) = 0;
  }
  if (*(int *)(param_1 + 0xc) != 0) {
    if (*(int *)(DAT_01c289d4 + 0x5c) == 0) {
      FUN_00eae9a0();
      FUN_00e9a307(in_stack_ffffffb0);
      FUN_00eaebef();
    }
    FUN_00e4e4a0(&PTR_DAT_01544440,&uStack_28);
  }
  FUN_00eaeca8();
  if (*(int *)(param_1 + 0x10) != 0) {
    FUN_007876b0();
    local_18 = FUN_007877c0(0,0,0,*(double *)(*(int *)(param_1 + 0x10) + 0xc) / DAT_018d5ad0,
                            *(double *)(*(int *)(param_1 + 0x10) + 4) / DAT_018d5ad0);
    if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 0x18) = 4;
      FUN_00eaecdd();
      FUN_00d9fea0();
      FUN_00dfc9c0();
      return;
    }
LAB_007dadec:
    if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    FUN_0077a760(0,*(undefined4 *)(*(int *)(param_1 + 0x10) + 0x28));
    local_18 = FUN_00975000();
    if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 0x18) = 5;
      FUN_00eaeca8();
      FUN_00d9fea0();
      FUN_00dfc9c0();
      return;
    }
LAB_007dad5e:
    if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    local_1c = FUN_0077b0a0();
    if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 0x18) = 6;
      FUN_00eaeca8();
      FUN_00d9fea0();
      FUN_00dfca00();
      return;
    }
LAB_007dac92:
    if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    iVar4 = *(int *)(local_1c + 0x20);
    if ((iVar4 != 0) && (*(int *)(iVar4 + 8) != 0)) {
      FUN_00eae9a0();
      FUN_00eaeca8();
      *(undefined ***)(*(int *)(param_1 + 8) + 4) = &PTR_DAT_01b39360;
      in_stack_ffffffb0 = *(undefined ***)(iVar4 + 8);
      FUN_00a51650(in_stack_ffffffb0);
      FUN_00a512d0();
      FUN_00a51650();
      puVar3 = (undefined4 *)FUN_00a51200();
      if (puVar3[7] != 0) {
        if ((undefined *)*puVar3 == &DAT_01626e9c) {
          FUN_00a4fcf0();
        }
        else {
          FUN_00a502b0();
        }
        FUN_00a4f4a0();
        FUN_00a4f280();
        FUN_00908120();
        FUN_009097a0();
        FUN_00eaebca();
      }
      iVar4 = *(int *)(*(int *)(param_1 + 8) + 4);
      if ((iVar4 == 0) || (*(int *)(iVar4 + 4) == 0)) {
        FUN_00a51650();
        puVar3 = (undefined4 *)FUN_00a51200();
        if (puVar3[7] != 0) {
          if ((undefined *)*puVar3 == &DAT_01626e9c) {
            FUN_00a4fcf0();
          }
          else {
            FUN_00a502b0();
          }
          FUN_00a4f4a0();
          FUN_00a4f280();
          FUN_009097a0();
          FUN_00eaebca();
        }
      }
      iVar4 = *(int *)(*(int *)(param_1 + 8) + 4);
      if ((iVar4 != 0) && (*(int *)(iVar4 + 4) != 0)) {
        FUN_00906a20();
        FUN_007876b0();
        iStack_20 = FUN_0077b0f0(&PTR_DAT_01b39360,&PTR_DAT_01b39360);
        if ((*(uint *)(iStack_20 + 0x1c) & 0x1600000) == 0) {
          *(undefined4 *)(param_1 + 0x18) = 7;
          FUN_00eaecdd();
          FUN_00d9fea0();
          FUN_00dfca00();
          return;
        }
LAB_007dac04:
        if ((*(uint *)(iStack_20 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        if (*(int *)(iStack_20 + 0x20) != 0) {
          FUN_00eae9a0();
          FUN_00e9a44a(in_stack_ffffffb0);
          in_stack_ffffffb0 = &PTR_DAT_01543ec4;
          iVar4 = FUN_00e4d760(&PTR_DAT_01543ec4);
          if (iVar4 != 0) {
            FUN_00906aa0(&PTR_DAT_01b3bc1c);
            FUN_007876b0();
            goto LAB_007da8e9;
          }
        }
        if (*(int *)(DAT_01c289d4 + 0x60) == 0) {
          FUN_00eae9a0();
          FUN_00e9a318(in_stack_ffffffb0);
          FUN_00eaebef();
        }
        FUN_00e4e4a0(&PTR_DAT_01544440,&local_2c);
        FUN_00eaeca8();
        iVar4 = *(int *)(param_1 + 0x14);
        if (iVar4 != 0) {
          local_18 = FUN_007877c0(0,0,0,*(double *)(iVar4 + 0xc) / DAT_018d5ad0,
                                  *(double *)(iVar4 + 4) / DAT_018d5ad0);
          if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
            *(undefined4 *)(param_1 + 0x18) = 8;
            FUN_00eaecdd();
            FUN_00d9fea0();
            FUN_00dfc9c0();
            return;
          }
LAB_007dab66:
          if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          FUN_0077a760(0,*(undefined4 *)(*(int *)(param_1 + 0x14) + 0x28));
          local_18 = FUN_00975000();
          if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
            *(undefined4 *)(param_1 + 0x18) = 9;
            FUN_00eaeca8();
            FUN_00d9fea0();
            FUN_00dfc9c0();
            return;
          }
LAB_007daa97:
          if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          FUN_007876b0();
          uVar2 = FUN_00eaeae1();
          iVar4 = FUN_00eae9a0();
          *(undefined4 *)(iVar4 + 4) = 2;
          FUN_00eaebca();
          FUN_0077b830(uVar2,&PTR_DAT_01be3730);
          local_18 = FUN_00975000();
          if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
            *(undefined4 *)(param_1 + 0x18) = 10;
            FUN_00eaeca8();
            FUN_00d9fea0();
            FUN_00dfc9c0();
            return;
          }
LAB_007da9d2:
          if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          FUN_00906aa0();
          FUN_007876b0();
          FUN_0077bb90(1,*(undefined4 *)(*(int *)(param_1 + 8) + 4));
          local_18 = FUN_00975000();
          if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
            *(undefined4 *)(param_1 + 0x18) = 0xb;
            FUN_00eaeca8();
            FUN_00d9fea0();
            FUN_00dfc9c0();
            return;
          }
LAB_007da905:
          if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          FUN_007876b0();
          uVar2 = FUN_00eaeae1();
          iVar4 = FUN_00eae9a0();
          *(undefined4 *)(iVar4 + 4) = 1;
          FUN_00eaebca();
          FUN_0077b830(uVar2,&PTR_DAT_01be3730);
          local_18 = FUN_00975000();
          if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
            *(undefined4 *)(param_1 + 0x18) = 0xc;
            FUN_00eaeca8();
            FUN_00d9fea0();
            FUN_00dfc9c0();
            return;
          }
LAB_007da8c1:
          if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
        }
        *(undefined4 *)(param_1 + 0x14) = 0;
      }
      *(undefined4 *)(param_1 + 8) = 0;
    }
  }
LAB_007da8e9:
  bVar1 = false;
LAB_007db4cb:
  *(undefined4 *)(param_1 + 0x18) = 0xfffffffe;
  *(undefined4 *)(param_1 + 0xc) = 0;
  *(undefined4 *)(param_1 + 0x10) = 0;
  if (*(int *)(param_1 + 0x1c) == 0) {
    if (bVar1) {
      if (PTR_FUN_01c2211c != (undefined *)0x0) {
        FUN_00e8eaff();
      }
    }
    else if (PTR_FUN_01c2211c != (undefined *)0x0) {
      FUN_00e8eaff();
    }
    FUN_00eaed47();
  }
  else {
    iVar4 = FUN_00b6e080();
    if (iVar4 == 0) {
                    /* WARNING: Subroutine does not return */
      FUN_00931e50();
    }
  }
  return;
}

