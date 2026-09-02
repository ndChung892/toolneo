/* Address: 008148e0 | Ghidra name: FUN_008148e0 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_008148e0(int param_1)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  bool bVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  int iVar6;
  int iVar7;
  int iVar8;
  undefined4 extraout_ECX;
  undefined4 extraout_ECX_00;
  undefined4 extraout_ECX_01;
  int in_stack_ffffff78;
  undefined4 local_60;
  undefined4 uStack_5c;
  undefined4 uStack_58;
  undefined4 uStack_54;
  undefined4 local_50;
  double dStack_4c;
  double dStack_44;
  undefined4 uStack_3c;
  int iStack_38;
  uint uStack_34;
  uint local_30;
  undefined4 *puStack_2c;
  uint uStack_28;
  int iStack_24;
  int local_20;
  int iStack_1c;
  int iStack_18;
  int iStack_14;
  
  local_60 = 0;
  uStack_5c = 0;
  uStack_58 = 0;
  uStack_54 = 0;
  local_50 = 0;
  dStack_4c = 0.0;
  dStack_44 = 0.0;
  uStack_3c = 0;
  iStack_38 = 0;
  uStack_34 = 0;
  local_30 = 0;
  puStack_2c = (undefined4 *)0x0;
  uStack_28 = 0;
  iStack_24 = 0;
  local_20 = 0;
  iStack_1c = 0;
  iStack_18 = 0;
  iStack_14 = 0;
  iVar8 = *(int *)(param_1 + 4);
  switch(*(undefined4 *)(param_1 + 0xc)) {
  case 0:
    iStack_14 = *(int *)(param_1 + 0x1c);
    *(undefined4 *)(param_1 + 0x1c) = 0;
    *(undefined4 *)(param_1 + 0xc) = 0xffffffff;
    break;
  case 1:
    iStack_18 = *(int *)(param_1 + 0x20);
    *(undefined4 *)(param_1 + 0x20) = 0;
    *(undefined4 *)(param_1 + 0xc) = 0xffffffff;
    goto LAB_00815144;
  case 2:
    iStack_18 = *(int *)(param_1 + 0x20);
    *(undefined4 *)(param_1 + 0x20) = 0;
    *(undefined4 *)(param_1 + 0xc) = 0xffffffff;
    goto LAB_00815112;
  case 3:
    iStack_14 = *(int *)(param_1 + 0x1c);
    *(undefined4 *)(param_1 + 0x1c) = 0;
    *(undefined4 *)(param_1 + 0xc) = 0xffffffff;
    goto LAB_0081504e;
  case 4:
    iStack_18 = *(int *)(param_1 + 0x20);
    *(undefined4 *)(param_1 + 0x20) = 0;
    *(undefined4 *)(param_1 + 0xc) = 0xffffffff;
    goto LAB_00814fcc;
  case 5:
    iStack_18 = *(int *)(param_1 + 0x20);
    *(undefined4 *)(param_1 + 0x20) = 0;
    *(undefined4 *)(param_1 + 0xc) = 0xffffffff;
    goto LAB_00814f86;
  case 6:
    iStack_1c = *(int *)(param_1 + 0x24);
    *(undefined4 *)(param_1 + 0x24) = 0;
    *(undefined4 *)(param_1 + 0xc) = 0xffffffff;
    goto LAB_00814f37;
  case 7:
    iStack_18 = *(int *)(param_1 + 0x20);
    *(undefined4 *)(param_1 + 0x20) = 0;
    *(undefined4 *)(param_1 + 0xc) = 0xffffffff;
    goto LAB_00814eb3;
  case 8:
    iStack_1c = *(int *)(param_1 + 0x24);
    *(undefined4 *)(param_1 + 0x24) = 0;
    *(undefined4 *)(param_1 + 0xc) = 0xffffffff;
    goto LAB_00814e0e;
  case 9:
    local_20 = *(int *)(param_1 + 0x28);
    *(undefined4 *)(param_1 + 0x28) = 0;
    *(undefined4 *)(param_1 + 0xc) = 0xffffffff;
    goto LAB_00814ce8;
  case 10:
    iStack_18 = *(int *)(param_1 + 0x20);
    *(undefined4 *)(param_1 + 0x20) = 0;
    *(undefined4 *)(param_1 + 0xc) = 0xffffffff;
    goto LAB_00814c64;
  case 0xb:
    iStack_1c = *(int *)(param_1 + 0x24);
    *(undefined4 *)(param_1 + 0x24) = 0;
    *(undefined4 *)(param_1 + 0xc) = 0xffffffff;
    goto LAB_00814bbf;
  case 0xc:
    local_20 = *(int *)(param_1 + 0x28);
    *(undefined4 *)(param_1 + 0x28) = 0;
    *(undefined4 *)(param_1 + 0xc) = 0xffffffff;
    goto LAB_00814b72;
  case 0xd:
    iStack_18 = *(int *)(param_1 + 0x20);
    *(undefined4 *)(param_1 + 0x20) = 0;
    *(undefined4 *)(param_1 + 0xc) = 0xffffffff;
    goto LAB_00814aee;
  case 0xe:
    iStack_1c = *(int *)(param_1 + 0x24);
    *(undefined4 *)(param_1 + 0x24) = 0;
    *(undefined4 *)(param_1 + 0xc) = 0xffffffff;
    goto LAB_00814a2d;
  case 0xf:
    iStack_24 = *(int *)(param_1 + 0x2c);
    *(undefined4 *)(param_1 + 0x2c) = 0;
    *(undefined4 *)(param_1 + 0xc) = 0xffffffff;
    goto LAB_008149eb;
  case 0x10:
    iStack_18 = *(int *)(param_1 + 0x20);
    *(undefined4 *)(param_1 + 0x20) = 0;
    *(undefined4 *)(param_1 + 0xc) = 0xffffffff;
    goto LAB_0081496f;
  case 0x11:
    iStack_18 = *(int *)(param_1 + 0x20);
    *(undefined4 *)(param_1 + 0x20) = 0;
    *(undefined4 *)(param_1 + 0xc) = 0xffffffff;
    goto LAB_00814937;
  default:
    FUN_00eae9a0();
    FUN_00eaeca8();
    FUN_00eaebca();
    iStack_14 = FUN_0077af00();
    if ((*(uint *)(iStack_14 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 0xc) = 0;
      FUN_00eaecdd();
      FUN_00da4b00();
      FUN_00dfc9c0();
      return;
    }
  }
  if ((*(uint *)(iStack_14 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  if (*(char *)(iStack_14 + 0x20) == '\0') {
    FUN_0077ae40();
    iStack_18 = FUN_00975000();
    if ((*(uint *)(iStack_18 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 0xc) = 1;
      FUN_00eaecdd();
      FUN_00da4b00();
      FUN_00dfc9c0();
      return;
    }
LAB_00815144:
    if ((*(uint *)(iStack_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
  }
  *(undefined4 *)(param_1 + 0x10) = 0;
  while( true ) {
    iStack_14 = FUN_0077ac00();
    if ((*(uint *)(iStack_14 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 0xc) = 3;
      FUN_00eaecdd();
      FUN_00da4b00();
      FUN_00dfc9c0();
      return;
    }
LAB_0081504e:
    if ((*(uint *)(iStack_14 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if ((*(char *)(iStack_14 + 0x20) == '\0') || (2 < *(int *)(param_1 + 0x10))) break;
    local_50 = *(undefined4 *)(*(int *)(iVar8 + 0x14) + 8);
    FUN_00eaeae1();
    iVar6 = FUN_00eae9a0();
    *(undefined4 *)(iVar6 + 4) = 0;
    FUN_00eaebca();
    FUN_0077a610(extraout_ECX_00,&PTR_DAT_01be70bc);
    iStack_18 = FUN_00975000();
    if ((*(uint *)(iStack_18 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 0xc) = 2;
      FUN_00eaecdd();
      FUN_00da4b00();
      FUN_00dfc9c0();
      return;
    }
LAB_00815112:
    if ((*(uint *)(iStack_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    *(int *)(param_1 + 0x10) = *(int *)(param_1 + 0x10) + 1;
  }
  iVar6 = *(int *)(*(int *)(param_1 + 8) + 4);
  iStack_18 = FUN_007877c0(0,0,0,*(double *)(iVar6 + 0xc) / DAT_018d74b8,
                           *(double *)(iVar6 + 4) / DAT_018d74b8);
  if ((*(uint *)(iStack_18 + 0x1c) & 0x1600000) == 0) {
    *(undefined4 *)(param_1 + 0xc) = 4;
    FUN_00eaecdd();
    FUN_00da4b00();
    FUN_00dfc9c0();
    return;
  }
LAB_00814fcc:
  if ((*(uint *)(iStack_18 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  iStack_18 = FUN_00975000();
  if ((*(uint *)(iStack_18 + 0x1c) & 0x1600000) == 0) {
    *(undefined4 *)(param_1 + 0xc) = 5;
    FUN_00eaeca8();
    FUN_00da4b00();
    FUN_00dfc9c0();
    return;
  }
LAB_00814f86:
  if ((*(uint *)(iStack_18 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  *(undefined4 *)(param_1 + 0x14) = 0;
  do {
    if (0xe < *(int *)(param_1 + 0x14)) {
      bVar3 = false;
LAB_008158c9:
      *(undefined4 *)(param_1 + 0xc) = 0xfffffffe;
      *(undefined4 *)(param_1 + 8) = 0;
      if (*(int *)(param_1 + 0x18) == 0) {
        if (bVar3) {
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
        iVar8 = FUN_00b6e080();
        if (iVar8 == 0) {
                    /* WARNING: Subroutine does not return */
          FUN_00931e50();
        }
      }
      return;
    }
    iStack_1c = FUN_0077abc0();
    if ((*(uint *)(iStack_1c + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 0xc) = 6;
      FUN_00eaecdd();
      FUN_00da4b00();
      FUN_00dfca00();
      return;
    }
LAB_00814f37:
    if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if ((*(int *)(iStack_1c + 0x20) != 0) && (*(char *)(*(int *)(iStack_1c + 0x20) + 0x69) != '\0'))
    {
LAB_00814f6a:
      bVar3 = true;
      goto LAB_008158c9;
    }
    uVar2 = *(undefined4 *)(*(int *)(*(int *)(param_1 + 8) + 4) + 0x28);
    uStack_54 = *(undefined4 *)(*(int *)(iVar8 + 0x14) + 8);
    uVar5 = FUN_00eaeae1();
    iVar6 = FUN_00eae9a0();
    *(undefined4 *)(iVar6 + 4) = uVar2;
    FUN_00eaebca();
    iVar6 = FUN_00eae9a0();
    *(undefined4 *)(iVar6 + 4) = 1;
    FUN_00eaebca();
    FUN_0077a610(uVar5,&PTR_DAT_01be3a98);
    iStack_18 = FUN_00975000();
    if ((*(uint *)(iStack_18 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 0xc) = 7;
      FUN_00eaecdd();
      FUN_00da4b00();
      FUN_00dfc9c0();
      return;
    }
LAB_00814eb3:
    if ((*(uint *)(iStack_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    iStack_1c = FUN_0077abc0();
    if ((*(uint *)(iStack_1c + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 0xc) = 8;
      FUN_00eaeca8();
      FUN_00da4b00();
      FUN_00dfca00();
      return;
    }
LAB_00814e0e:
    if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if ((*(int *)(iStack_1c + 0x20) != 0) && (*(char *)(*(int *)(iStack_1c + 0x20) + 0x69) != '\0'))
    goto LAB_00814f6a;
    local_20 = FUN_0077b0a0();
    if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 0xc) = 9;
      FUN_00eaecdd();
      FUN_00da4b00();
      FUN_00dfca00();
      return;
    }
LAB_00814ce8:
    if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if (*(int *)(local_20 + 0x20) != 0) {
      iVar6 = FUN_00eaeae1();
      *(undefined ***)(iVar6 + 8) = &PTR_DAT_01b4cac0;
      FUN_0077afa0(iVar6,&PTR_DAT_01bf0ecc);
      iVar6 = FUN_00eaeae1();
      *(undefined ***)(iVar6 + 8) = &PTR_DAT_01b91278;
      iVar6 = FUN_00eae9a0();
      *(undefined4 *)(iVar6 + 4) = 0;
      FUN_00eaebca();
      iVar6 = FUN_00eae9a0();
      *(undefined4 *)(iVar6 + 4) = 0;
      FUN_00eaebca();
      FUN_0077a610(extraout_ECX,&PTR_DAT_01befc64);
      iStack_18 = FUN_00975000();
      if ((*(uint *)(iStack_18 + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)(param_1 + 0xc) = 10;
        FUN_00eaecdd();
        FUN_00da4b00();
        FUN_00dfc9c0();
        return;
      }
LAB_00814c64:
      if ((*(uint *)(iStack_18 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      iStack_1c = FUN_0077abc0();
      if ((*(uint *)(iStack_1c + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)(param_1 + 0xc) = 0xb;
        FUN_00eaeca8();
        FUN_00da4b00();
        FUN_00dfca00();
        return;
      }
LAB_00814bbf:
      if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      if ((*(int *)(iStack_1c + 0x20) != 0) &&
         (*(char *)(*(int *)(iStack_1c + 0x20) + 0x69) != '\0')) goto LAB_00814f6a;
    }
    local_20 = FUN_0077b0a0();
    if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 0xc) = 0xc;
      FUN_00eaecdd();
      FUN_00da4b00();
      FUN_00dfca00();
      return;
    }
LAB_00814b72:
    if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if (*(int *)(local_20 + 0x20) != 0) {
      if (*(int *)(*(int *)(local_20 + 0x20) + 0x10) == 0) {
        iVar6 = 0;
      }
      else {
        if (*(int *)(DAT_01c28a74 + 0x18) == 0) {
          FUN_00eae9a0();
          FUN_00e9b03e(in_stack_ffffff78);
          in_stack_ffffff78 = 0x8154b9;
          FUN_00eaec14();
        }
        iVar6 = FUN_00e4e4a0(&PTR_DAT_01543d24,&uStack_58);
      }
      if (iVar6 == 0) {
        iVar6 = FUN_00eaeae1();
        *(undefined ***)(iVar6 + 8) = &PTR_DAT_01b9125c;
        iVar6 = FUN_00eae9a0();
        *(undefined4 *)(iVar6 + 4) = 0;
        FUN_00eaebca();
        iVar6 = FUN_00eae9a0();
        *(undefined4 *)(iVar6 + 4) = 0;
        FUN_00eaebca();
        FUN_0077a610(extraout_ECX_01,&PTR_DAT_01befc64);
      }
      else {
        uVar2 = *(undefined4 *)(iVar6 + 8);
        uStack_5c = *(undefined4 *)(*(int *)(iVar8 + 0x14) + 8);
        iVar6 = FUN_00eaeae1();
        *(undefined ***)(iVar6 + 8) = &PTR_DAT_01b9125c;
        iVar7 = FUN_00eae9a0();
        *(undefined4 *)(iVar7 + 4) = uVar2;
        FUN_00eaebca();
        iVar7 = FUN_00eae9a0();
        *(undefined4 *)(iVar7 + 4) = 0;
        FUN_00eaebca();
        FUN_0077a610(iVar6,&PTR_DAT_01befc64);
      }
      iStack_18 = FUN_00975000();
      if ((*(uint *)(iStack_18 + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)(param_1 + 0xc) = 0xd;
        FUN_00eaecdd();
        FUN_00da4b00();
        FUN_00dfc9c0();
        return;
      }
LAB_00814aee:
      if ((*(uint *)(iStack_18 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      iStack_1c = FUN_0077abc0();
      if ((*(uint *)(iStack_1c + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)(param_1 + 0xc) = 0xe;
        FUN_00eaeca8();
        FUN_00da4b00();
        FUN_00dfca00();
        return;
      }
LAB_00814a2d:
      if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      if ((*(int *)(iStack_1c + 0x20) != 0) &&
         (*(char *)(*(int *)(iStack_1c + 0x20) + 0x69) != '\0')) goto LAB_00814f6a;
    }
    if (*(int *)(param_1 + 0x14) % 3 == 2) {
      iStack_24 = FUN_0077acc0();
      if ((*(uint *)(iStack_24 + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)(param_1 + 0xc) = 0xf;
        FUN_00eaecdd();
        FUN_00da4b00();
        FUN_00dfca00();
        return;
      }
LAB_008149eb:
      if ((*(uint *)(iStack_24 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      if (*(int *)(iStack_24 + 0x20) == 0) {
        iVar6 = 0;
      }
      else {
        in_stack_ffffff78 = *(int *)(param_1 + 8);
        if (*(int *)(in_stack_ffffff78 + 8) == 0) {
          FUN_00eae9a0();
          FUN_00e9b0a4(in_stack_ffffff78);
          in_stack_ffffff78 = 0x81563c;
          FUN_00eaebef();
        }
        iVar6 = FUN_00e4e4a0(&PTR_DAT_01544440,&local_60);
      }
      if (iVar6 == 0) {
        iVar6 = *(int *)(*(int *)(param_1 + 8) + 4);
        dStack_44 = *(double *)(iVar6 + 4);
        dStack_4c = *(double *)(iVar6 + 0xc);
      }
      else {
        dStack_44 = *(double *)(iVar6 + 4);
        dStack_4c = *(double *)(iVar6 + 0xc);
      }
      dStack_44 = dStack_44 / DAT_018d74b8;
      dStack_4c = dStack_4c / DAT_018d74b8;
      if (PTR_LAB_01c23e7c != (undefined *)0x0) {
        FUN_00e8f54a();
      }
      iStack_38 = FUN_00b848a0();
      if (iStack_38 == 0) {
        puStack_2c = (undefined4 *)0x0;
        uStack_28 = 0;
      }
      else {
        puStack_2c = (undefined4 *)(iStack_38 + 8);
        uStack_28 = *(uint *)(iStack_38 + 4);
      }
      uStack_3c = 0;
      uStack_34 = 0;
      local_30 = local_30 & 0xffffff00;
      if (uStack_28 < 5) {
        FUN_0099d6f0();
      }
      else {
        *puStack_2c = 0x4c005b;
        puStack_2c[1] = 0x6e1ea7;
        *(undefined2 *)(puStack_2c + 2) = 0x20;
        uStack_34 = 5;
      }
      FUN_00de77e0();
      if (uStack_28 < uStack_34) {
LAB_008158c0:
                    /* WARNING: Subroutine does not return */
        FUN_009318f0();
      }
      if (uStack_28 - uStack_34 < 0x2f) {
        FUN_0099d6f0();
      }
      else {
        FUN_00930280();
        uStack_34 = uStack_34 + 0x2f;
      }
      FUN_00dde1c0(dStack_44);
      if (uStack_28 < uStack_34) goto LAB_008158c0;
      if (uStack_28 - uStack_34 < 2) {
        FUN_0099d6f0();
      }
      else {
        *(undefined4 *)((int)puStack_2c + uStack_34 * 2) = 0x20002c;
        uStack_34 = uStack_34 + 2;
      }
      FUN_00dde1c0(dStack_4c);
      uVar4 = _UNK_018d74cc;
      uVar5 = _UNK_018d74c8;
      uVar2 = _UNK_018d74c4;
      if (uStack_28 < uStack_34) goto LAB_008158c0;
      puVar1 = (undefined4 *)((int)puStack_2c + uStack_34 * 2);
      if (uStack_28 - uStack_34 < 0x11) {
        FUN_0099d6f0();
      }
      else {
        *puVar1 = _DAT_018d74c0;
        puVar1[1] = uVar2;
        puVar1[2] = uVar5;
        puVar1[3] = uVar4;
        uVar4 = _UNK_018d74dc;
        uVar5 = _UNK_018d74d8;
        uVar2 = _UNK_018d74d4;
        puVar1[4] = _DAT_018d74d0;
        puVar1[5] = uVar2;
        puVar1[6] = uVar5;
        puVar1[7] = uVar4;
        *(undefined2 *)(puVar1 + 8) = 0x2e;
        uStack_34 = uStack_34 + 0x11;
      }
      FUN_0099d560();
      FUN_007876b0();
      iStack_18 = FUN_007877c0(0,0,0,dStack_4c,dStack_44);
      if ((*(uint *)(iStack_18 + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)(param_1 + 0xc) = 0x10;
        FUN_00eaeca8();
        FUN_00da4b00();
        FUN_00dfc9c0();
        return;
      }
LAB_0081496f:
      if ((*(uint *)(iStack_18 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      iStack_18 = FUN_00975000();
      if ((*(uint *)(iStack_18 + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)(param_1 + 0xc) = 0x11;
        FUN_00eaeca8();
        FUN_00da4b00();
        FUN_00dfc9c0();
        return;
      }
LAB_00814937:
      if ((*(uint *)(iStack_18 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
    }
    *(int *)(param_1 + 0x14) = *(int *)(param_1 + 0x14) + 1;
  } while( true );
}

