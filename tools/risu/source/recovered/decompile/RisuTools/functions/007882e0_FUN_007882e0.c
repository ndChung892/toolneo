/* Address: 007882e0 | Ghidra name: FUN_007882e0 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_007882e0(int param_1)

{
  double dVar1;
  double dVar2;
  int iVar3;
  undefined4 uVar4;
  int iVar5;
  int extraout_ECX;
  int extraout_ECX_00;
  undefined4 extraout_ECX_01;
  undefined1 uVar6;
  float10 fVar7;
  float10 fVar8;
  undefined2 local_34;
  int local_20;
  int local_1c;
  int local_18;
  int local_14;
  
  switch(*(undefined4 *)(param_1 + 0x1c)) {
  case 0:
    local_14 = *(int *)(param_1 + 0x2c);
    *(undefined4 *)(param_1 + 0x2c) = 0;
    *(undefined4 *)(param_1 + 0x1c) = 0xffffffff;
    break;
  case 1:
    local_14 = *(int *)(param_1 + 0x2c);
    *(undefined4 *)(param_1 + 0x2c) = 0;
    *(undefined4 *)(param_1 + 0x1c) = 0xffffffff;
    goto LAB_00788dd4;
  case 2:
    local_18 = *(int *)(param_1 + 0x30);
    *(undefined4 *)(param_1 + 0x30) = 0;
    *(undefined4 *)(param_1 + 0x1c) = 0xffffffff;
    goto LAB_00788ceb;
  case 3:
    local_18 = *(int *)(param_1 + 0x30);
    *(undefined4 *)(param_1 + 0x30) = 0;
    *(undefined4 *)(param_1 + 0x1c) = 0xffffffff;
    goto LAB_00788c38;
  case 4:
    local_18 = *(int *)(param_1 + 0x30);
    *(undefined4 *)(param_1 + 0x30) = 0;
    *(undefined4 *)(param_1 + 0x1c) = 0xffffffff;
    goto LAB_00788c04;
  case 5:
    local_1c = *(int *)(param_1 + 0x34);
    *(undefined4 *)(param_1 + 0x34) = 0;
    *(undefined4 *)(param_1 + 0x1c) = 0xffffffff;
    goto LAB_00788b76;
  case 6:
    local_18 = *(int *)(param_1 + 0x30);
    *(undefined4 *)(param_1 + 0x30) = 0;
    *(undefined4 *)(param_1 + 0x1c) = 0xffffffff;
    goto LAB_00788aef;
  case 7:
    local_1c = *(int *)(param_1 + 0x34);
    *(undefined4 *)(param_1 + 0x34) = 0;
    *(undefined4 *)(param_1 + 0x1c) = 0xffffffff;
    goto LAB_00788aa1;
  case 8:
    local_18 = *(int *)(param_1 + 0x30);
    *(undefined4 *)(param_1 + 0x30) = 0;
    *(undefined4 *)(param_1 + 0x1c) = 0xffffffff;
    goto LAB_00788a15;
  case 9:
    local_1c = *(int *)(param_1 + 0x34);
    *(undefined4 *)(param_1 + 0x34) = 0;
    *(undefined4 *)(param_1 + 0x1c) = 0xffffffff;
    goto LAB_0078893c;
  case 10:
    local_18 = *(int *)(param_1 + 0x30);
    *(undefined4 *)(param_1 + 0x30) = 0;
    *(undefined4 *)(param_1 + 0x1c) = 0xffffffff;
    goto LAB_007888b0;
  case 0xb:
    local_1c = *(int *)(param_1 + 0x34);
    *(undefined4 *)(param_1 + 0x34) = 0;
    *(undefined4 *)(param_1 + 0x1c) = 0xffffffff;
    goto LAB_0078876e;
  case 0xc:
    local_18 = *(int *)(param_1 + 0x30);
    *(undefined4 *)(param_1 + 0x30) = 0;
    *(undefined4 *)(param_1 + 0x1c) = 0xffffffff;
    goto LAB_007886e5;
  case 0xd:
    local_14 = *(int *)(param_1 + 0x2c);
    *(undefined4 *)(param_1 + 0x2c) = 0;
    *(undefined4 *)(param_1 + 0x1c) = 0xffffffff;
    goto LAB_00788598;
  case 0xe:
    local_18 = *(int *)(param_1 + 0x30);
    *(undefined4 *)(param_1 + 0x30) = 0;
    *(undefined4 *)(param_1 + 0x1c) = 0xffffffff;
    goto LAB_007884f9;
  case 0xf:
    local_18 = *(int *)(param_1 + 0x30);
    *(undefined4 *)(param_1 + 0x30) = 0;
    *(undefined4 *)(param_1 + 0x1c) = 0xffffffff;
    goto LAB_00788463;
  case 0x10:
    local_20 = *(int *)(param_1 + 0x38);
    *(undefined4 *)(param_1 + 0x38) = 0;
    *(undefined4 *)(param_1 + 0x1c) = 0xffffffff;
    goto LAB_00788405;
  case 0x11:
    local_18 = *(int *)(param_1 + 0x30);
    *(undefined4 *)(param_1 + 0x30) = 0;
    *(undefined4 *)(param_1 + 0x1c) = 0xffffffff;
    goto LAB_00788366;
  case 0x12:
    local_18 = *(int *)(param_1 + 0x30);
    *(undefined4 *)(param_1 + 0x30) = 0;
    *(undefined4 *)(param_1 + 0x1c) = 0xffffffff;
    goto LAB_0078832d;
  default:
    local_14 = FUN_0077abc0();
    if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 0x1c) = 0;
      FUN_00eaecdd();
      FUN_00d95720();
      FUN_00dfca00();
      return;
    }
  }
  if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  FUN_00eaecdd();
  if (*(int *)(param_1 + 0x14) == 0) {
    uVar6 = 0;
  }
  else {
    do {
      local_14 = FUN_0077abc0();
      if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)(param_1 + 0x1c) = 1;
        FUN_00eaecdd();
        FUN_00d95720();
        FUN_00dfca00();
        return;
      }
LAB_00788dd4:
      if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      FUN_00eaecdd();
      local_18 = FUN_00975000();
      if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)(param_1 + 0x1c) = 2;
        FUN_00eaeca8();
        FUN_00d95720();
        FUN_00dfc9c0();
        return;
      }
LAB_00788ceb:
      if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
    } while (*(char *)(*(int *)(param_1 + 0x14) + 0x69) != '\0');
    if (*(char *)(*(int *)(param_1 + 0x14) + 0x6b) != '\0') {
      FUN_00eaeae1();
      iVar5 = FUN_00eae9a0();
      *(undefined4 *)(iVar5 + 4) = 0;
      FUN_00eaebca();
      FUN_0077a610(extraout_ECX_01,&PTR_DAT_01beaee0);
      local_18 = FUN_00975000();
      if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)(param_1 + 0x1c) = 3;
        FUN_00eaecdd();
        FUN_00d95720();
        FUN_00dfc9c0();
        return;
      }
LAB_00788c38:
      if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
    }
    iVar5 = *(int *)(*(int *)(param_1 + 8) + 0x28);
    if (*(int *)(*(int *)(param_1 + 0x14) + 0x28) != iVar5) {
      FUN_0077a890(0,iVar5);
      while( true ) {
        local_1c = FUN_0077ac40();
        if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
          *(undefined4 *)(param_1 + 0x1c) = 5;
          FUN_00eaeca8();
          FUN_00d95720();
          FUN_00dfc9c0();
          return;
        }
LAB_00788b76:
        if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        if (*(char *)(local_1c + 0x20) == '\0') break;
        local_18 = FUN_00975000();
        if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
          *(undefined4 *)(param_1 + 0x1c) = 4;
          FUN_00eaecdd();
          FUN_00d95720();
          FUN_00dfc9c0();
          return;
        }
LAB_00788c04:
        if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
      }
    }
    while( true ) {
      local_1c = FUN_0077af00();
      if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)(param_1 + 0x1c) = 7;
        FUN_00eaeca8();
        FUN_00d95720();
        FUN_00dfc9c0();
        return;
      }
LAB_00788aa1:
      if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      if (*(char *)(local_1c + 0x20) != '\0') break;
      FUN_00906a20();
      FUN_00782420();
      local_18 = FUN_00975000();
      if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)(param_1 + 0x1c) = 6;
        FUN_00eaecdd();
        FUN_00d95720();
        FUN_00dfc9c0();
        return;
      }
LAB_00788aef:
      if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
    }
    if (*(char *)(param_1 + 0x20) == '\0') {
      while( true ) {
        local_1c = FUN_0077ac00();
        if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
          *(undefined4 *)(param_1 + 0x1c) = 0xb;
          FUN_00eaeca8();
          FUN_00d95720();
          FUN_00dfc9c0();
          return;
        }
LAB_0078876e:
        if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        if (*(char *)(local_1c + 0x20) == '\0') break;
        uVar4 = FUN_00eaeae1();
        iVar5 = FUN_00eae9a0();
        *(undefined4 *)(iVar5 + 4) = 0;
        FUN_00eaebca();
        FUN_0077a610(uVar4,&PTR_DAT_01be70bc);
        local_18 = FUN_00975000();
        if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
          *(undefined4 *)(param_1 + 0x1c) = 10;
          FUN_00eaecdd();
          FUN_00d95720();
          FUN_00dfc9c0();
          return;
        }
LAB_007888b0:
        if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
      }
    }
    else {
      while( true ) {
        local_1c = FUN_0077ac00();
        if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
          *(undefined4 *)(param_1 + 0x1c) = 9;
          FUN_00eaeca8();
          FUN_00d95720();
          FUN_00dfc9c0();
          return;
        }
LAB_0078893c:
        if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        if (*(char *)(local_1c + 0x20) != '\0') break;
        uVar4 = FUN_00eaeae1();
        iVar5 = FUN_00eae9a0();
        *(undefined4 *)(iVar5 + 4) = 0;
        FUN_00eaebca();
        FUN_0077a610(uVar4,&PTR_DAT_01be70d8);
        local_18 = FUN_00975000();
        if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
          *(undefined4 *)(param_1 + 0x1c) = 8;
          FUN_00eaecdd();
          FUN_00d95720();
          FUN_00dfc9c0();
          return;
        }
LAB_00788a15:
        if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
      }
    }
    do {
      dVar2 = *(double *)(*(int *)(param_1 + 8) + 4);
      iVar5 = 0x7fffffff;
      if (dVar2 < _DAT_018d37d8) {
        iVar5 = (int)(double)(-(ulonglong)(!NAN(dVar2) && !NAN(dVar2)) & (ulonglong)dVar2);
      }
      dVar2 = *(double *)(*(int *)(param_1 + 8) + 0xc);
      iVar3 = 0x7fffffff;
      if (dVar2 < _DAT_018d37d8) {
        iVar3 = (int)(double)(-(ulonglong)(!NAN(dVar2) && !NAN(dVar2)) & (ulonglong)dVar2);
      }
      FUN_0077a900(*(undefined1 *)(param_1 + 0x21),(double)(iVar3 / 10),(double)(iVar5 / 10));
      local_18 = FUN_00975000();
      if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)(param_1 + 0x1c) = 0xc;
        FUN_00eaecdd();
        FUN_00d95720();
        FUN_00dfc9c0();
        return;
      }
LAB_007886e5:
      if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      local_14 = FUN_0077abc0();
      if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)(param_1 + 0x1c) = 0xd;
        FUN_00eaeca8();
        FUN_00d95720();
        FUN_00dfca00();
        return;
      }
LAB_00788598:
      if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      FUN_00eaeca8();
      dVar2 = *(double *)(*(int *)(extraout_ECX_00 + 0x14) + 0xc);
      dVar1 = *(double *)(*(int *)(extraout_ECX_00 + 8) + 0xc);
      fVar7 = (float10)FUN_00eb6460(DAT_018d37c8,
                                    *(double *)(*(int *)(extraout_ECX_00 + 0x14) + 4) -
                                    *(double *)(*(int *)(extraout_ECX_00 + 8) + 4));
      fVar8 = (float10)FUN_00eb6460(DAT_018d37c8,dVar2 - dVar1);
    } while (_DAT_018d37d0 < SQRT((double)fVar8 + (double)fVar7));
    iVar5 = *(int *)(param_1 + 0xc);
    FUN_00906aa0();
    (**(code **)(iVar5 + 0x10))();
    local_18 = FUN_00975000();
    if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 0x1c) = 0xe;
      FUN_00eaecdd();
      FUN_00d95720();
      FUN_00dfc9c0();
      return;
    }
LAB_007884f9:
    if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    FUN_0077aad0(0,*(undefined4 *)(*(int *)(param_1 + 0x14) + 0x24));
    local_18 = FUN_00975000();
    if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 0x1c) = 0xf;
      FUN_00eaeca8();
      FUN_00d95720();
      FUN_00dfc9c0();
      return;
    }
LAB_00788463:
    if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    do {
      do {
        local_20 = FUN_0077b0a0();
        if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
          *(undefined4 *)(param_1 + 0x1c) = 0x10;
          FUN_00eaeca8();
          FUN_00d95720();
          FUN_00dfca00();
          return;
        }
LAB_00788405:
        if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        FUN_00eaeca8();
        iVar5 = *(int *)(extraout_ECX + 0xc);
        if (*(int *)(extraout_ECX + 0x18) == 0) {
          uVar4 = 0;
        }
        else {
          uVar4 = *(undefined4 *)(*(int *)(extraout_ECX + 0x18) + 8);
        }
        FUN_00906b80(uVar4,&PTR_DAT_01b3c1a8);
        (**(code **)(iVar5 + 0x10))();
        local_18 = FUN_00975000();
        if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
          *(undefined4 *)(param_1 + 0x1c) = 0x11;
          FUN_00eaecdd();
          FUN_00d95720();
          FUN_00dfc9c0();
          return;
        }
LAB_00788366:
        if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
      } while (*(int *)(param_1 + 0x18) == 0);
      iVar5 = FUN_00909ad0();
      if (iVar5 != 0) break;
      FUN_0094bfb0();
      FUN_0094c500();
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
      if (DAT_01c222d8 == '\0') {
        FUN_00dfdf80();
      }
      else {
        FUN_00956500();
      }
      iVar5 = FUN_00909ad0();
    } while (iVar5 == 0);
    FUN_0077ab40();
    local_18 = FUN_00975000();
    if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 0x1c) = 0x12;
      FUN_00eaecdd();
      FUN_00d95720();
      FUN_00dfc9c0();
      return;
    }
LAB_0078832d:
    if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    uVar6 = 1;
  }
  *(undefined4 *)(param_1 + 0x1c) = 0xfffffffe;
  *(undefined4 *)(param_1 + 0x14) = 0;
  *(undefined4 *)(param_1 + 0x18) = 0;
  if (*(int *)(param_1 + 0x24) == 0) {
    local_34 = CONCAT11(uVar6,1);
    if (local_34 == 0) {
      if (PTR_FUN_01c25708 != (undefined *)0x0) {
        FUN_00e8f935();
      }
    }
    else {
      iVar5 = FUN_00eae9a0();
      *(undefined4 *)(iVar5 + 0x1c) = 0x1000000;
      *(undefined1 *)(iVar5 + 0x20) = 1;
      *(undefined1 *)(iVar5 + 0x21) = uVar6;
    }
    FUN_00eaed7c();
  }
  else {
    iVar5 = FUN_00c56280();
    if (iVar5 == 0) {
                    /* WARNING: Subroutine does not return */
      FUN_00931e50();
    }
  }
  return;
}

