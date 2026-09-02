/* Address: 007ffee0 | Ghidra name: FUN_007ffee0 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_007ffee0(int param_1)

{
  undefined4 uVar1;
  bool bVar2;
  int iVar3;
  undefined4 uVar4;
  int iVar5;
  undefined4 extraout_ECX;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  int local_24;
  int iStack_20;
  int iStack_1c;
  int iStack_18;
  int local_14;
  
  uStack_2c = 0;
  uStack_28 = 0;
  local_24 = 0;
  iStack_20 = 0;
  iStack_1c = 0;
  iStack_18 = 0;
  local_14 = 0;
  iVar5 = *(int *)(param_1 + 4);
  switch(*(undefined4 *)(param_1 + 0x10)) {
  case 0:
    local_14 = *(int *)(param_1 + 0x20);
    *(undefined4 *)(param_1 + 0x20) = 0;
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    break;
  case 1:
    iStack_18 = *(int *)(param_1 + 0x24);
    *(undefined4 *)(param_1 + 0x24) = 0;
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    goto LAB_008003b5;
  case 2:
    iStack_18 = *(int *)(param_1 + 0x24);
    *(undefined4 *)(param_1 + 0x24) = 0;
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    goto LAB_00800383;
  case 3:
    local_14 = *(int *)(param_1 + 0x20);
    *(undefined4 *)(param_1 + 0x20) = 0;
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    goto LAB_0080032b;
  case 4:
    iStack_1c = *(int *)(param_1 + 0x28);
    *(undefined4 *)(param_1 + 0x28) = 0;
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    goto LAB_008002d7;
  case 5:
    iStack_20 = *(int *)(param_1 + 0x2c);
    *(undefined4 *)(param_1 + 0x2c) = 0;
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    goto LAB_00800293;
  case 6:
    iStack_18 = *(int *)(param_1 + 0x24);
    *(undefined4 *)(param_1 + 0x24) = 0;
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    goto LAB_00800211;
  case 7:
    iStack_18 = *(int *)(param_1 + 0x24);
    *(undefined4 *)(param_1 + 0x24) = 0;
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    goto LAB_00800124;
  case 8:
    iStack_18 = *(int *)(param_1 + 0x24);
    *(undefined4 *)(param_1 + 0x24) = 0;
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    goto LAB_008000a0;
  case 9:
    iStack_1c = *(int *)(param_1 + 0x28);
    *(undefined4 *)(param_1 + 0x28) = 0;
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    goto LAB_007ffffb;
  case 10:
    local_24 = *(int *)(param_1 + 0x30);
    *(undefined4 *)(param_1 + 0x30) = 0;
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    goto LAB_007fff30;
  default:
    FUN_00eae9a0();
    FUN_00eaeca8();
    FUN_00eaebca();
    local_14 = FUN_0077af00();
    if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 0x10) = 0;
      FUN_00eaecdd();
      FUN_00da2fe0();
      FUN_00dfc9c0();
      return;
    }
  }
  if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  if (*(char *)(local_14 + 0x20) == '\0') {
    FUN_0077ae40();
    iStack_18 = FUN_00975000();
    if ((*(uint *)(iStack_18 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 0x10) = 1;
      FUN_00eaecdd();
      FUN_00da2fe0();
      FUN_00dfc9c0();
      return;
    }
LAB_008003b5:
    if ((*(uint *)(iStack_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
  }
  *(undefined4 *)(param_1 + 0x14) = 0;
  while( true ) {
    local_14 = FUN_0077ac00();
    if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 0x10) = 3;
      FUN_00eaecdd();
      FUN_00da2fe0();
      FUN_00dfc9c0();
      return;
    }
LAB_0080032b:
    if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if ((*(char *)(local_14 + 0x20) == '\0') || (2 < *(int *)(param_1 + 0x14))) break;
    uStack_28 = *(undefined4 *)(*(int *)(iVar5 + 0x14) + 8);
    FUN_00eaeae1();
    iVar3 = FUN_00eae9a0();
    *(undefined4 *)(iVar3 + 4) = 0;
    FUN_00eaebca();
    FUN_0077a610(extraout_ECX,&PTR_DAT_01be70bc);
    iStack_18 = FUN_00975000();
    if ((*(uint *)(iStack_18 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 0x10) = 2;
      FUN_00eaecdd();
      FUN_00da2fe0();
      FUN_00dfc9c0();
      return;
    }
LAB_00800383:
    if ((*(uint *)(iStack_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    *(int *)(param_1 + 0x14) = *(int *)(param_1 + 0x14) + 1;
  }
  *(undefined4 *)(param_1 + 0x18) = 0;
  do {
    if (0xe < *(int *)(param_1 + 0x18)) {
      bVar2 = false;
LAB_0080075a:
      *(undefined4 *)(param_1 + 0x10) = 0xfffffffe;
      *(undefined4 *)(param_1 + 8) = 0;
      if (*(int *)(param_1 + 0x1c) == 0) {
        if (bVar2) {
          if (PTR_FUN_01c2211c != (undefined *)0x0) {
            FUN_00e8eaff();
          }
        }
        else if (PTR_FUN_01c2211c != (undefined *)0x0) {
          FUN_00e8eaff();
        }
        FUN_00eaed47();
        return;
      }
      iVar5 = FUN_00b6e080();
      if (iVar5 != 0) {
        return;
      }
                    /* WARNING: Subroutine does not return */
      FUN_00931e50();
    }
    iStack_1c = FUN_0077abc0();
    if ((*(uint *)(iStack_1c + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 0x10) = 4;
      FUN_00eaecdd();
      FUN_00da2fe0();
      FUN_00dfca00();
      return;
    }
LAB_008002d7:
    if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if ((*(int *)(iStack_1c + 0x20) != 0) && (*(char *)(*(int *)(iStack_1c + 0x20) + 0x69) != '\0'))
    {
LAB_0080030a:
      bVar2 = true;
      goto LAB_0080075a;
    }
    iStack_20 = FUN_0077acc0();
    if ((*(uint *)(iStack_20 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 0x10) = 5;
      FUN_00eaecdd();
      FUN_00da2fe0();
      FUN_00dfca00();
      return;
    }
LAB_00800293:
    if ((*(uint *)(iStack_20 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if (*(int *)(iStack_20 + 0x20) != 0) {
      iVar5 = *(int *)(param_1 + 8);
      if (*(int *)(iVar5 + 8) == 0) {
        FUN_00eae9a0(iVar5);
        FUN_00e9ab21(iVar5);
        FUN_00eaebef();
      }
      FUN_00e4e4a0(&PTR_DAT_01544440,&uStack_2c);
    }
    FUN_00eaeca8();
    iVar5 = *(int *)(param_1 + 0xc);
    if (iVar5 != 0) {
      iStack_18 = FUN_007877c0(0,0,0,*(double *)(iVar5 + 0xc) / _DAT_018d6c18,
                               *(double *)(iVar5 + 4) / _DAT_018d6c18);
      if ((*(uint *)(iStack_18 + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)(param_1 + 0x10) = 6;
        FUN_00eaecdd();
        FUN_00da2fe0();
        FUN_00dfc9c0();
        return;
      }
LAB_00800211:
      if ((*(uint *)(iStack_18 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      iStack_18 = FUN_00975000();
      if ((*(uint *)(iStack_18 + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)(param_1 + 0x10) = 7;
        FUN_00eaeca8();
        FUN_00da2fe0();
        FUN_00dfc9c0();
        return;
      }
LAB_00800124:
      if ((*(uint *)(iStack_18 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      uVar1 = *(undefined4 *)(*(int *)(param_1 + 0xc) + 0x28);
      uVar4 = FUN_00eaeae1();
      iVar5 = FUN_00eae9a0();
      *(undefined4 *)(iVar5 + 4) = uVar1;
      FUN_00eaebca();
      iVar5 = FUN_00eae9a0();
      *(undefined4 *)(iVar5 + 4) = 1;
      FUN_00eaebca();
      FUN_0077a610(uVar4,&PTR_DAT_01be3a98);
    }
    iStack_18 = FUN_00975000();
    if ((*(uint *)(iStack_18 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 0x10) = 8;
      FUN_00eaecdd();
      FUN_00da2fe0();
      FUN_00dfc9c0();
      return;
    }
LAB_008000a0:
    if ((*(uint *)(iStack_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    iStack_1c = FUN_0077abc0();
    if ((*(uint *)(iStack_1c + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 0x10) = 9;
      FUN_00eaeca8();
      FUN_00da2fe0();
      FUN_00dfca00();
      return;
    }
LAB_007ffffb:
    if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if ((*(int *)(iStack_1c + 0x20) != 0) && (*(char *)(*(int *)(iStack_1c + 0x20) + 0x69) != '\0'))
    goto LAB_0080030a;
    local_24 = FUN_0077b0a0();
    if ((*(uint *)(local_24 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 0x10) = 10;
      FUN_00eaecdd();
      FUN_00da2fe0();
      FUN_00dfca00();
      return;
    }
LAB_007fff30:
    if ((*(uint *)(local_24 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if ((*(int *)(local_24 + 0x20) != 0) && (iVar5 = FUN_00e4e3a0(), iVar5 != 0)) {
      uVar1 = *(undefined4 *)(iVar5 + 8);
      iVar5 = FUN_00eaeae1();
      *(undefined ***)(iVar5 + 8) = &PTR_DAT_01b91278;
      iVar3 = FUN_00eae9a0();
      *(undefined4 *)(iVar3 + 4) = uVar1;
      FUN_00eaebca();
      iVar3 = FUN_00eae9a0();
      *(undefined4 *)(iVar3 + 4) = 0;
      FUN_00eaebca();
      FUN_0077a610(iVar5,&PTR_DAT_01befc64);
    }
    *(int *)(param_1 + 0x18) = *(int *)(param_1 + 0x18) + 1;
    *(undefined4 *)(param_1 + 0xc) = 0;
  } while( true );
}

