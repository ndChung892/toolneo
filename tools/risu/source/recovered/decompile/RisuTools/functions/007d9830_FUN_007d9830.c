/* Address: 007d9830 | Ghidra name: FUN_007d9830 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_007d9830(undefined **param_1)

{
  undefined *puVar1;
  bool bVar2;
  int iVar3;
  int extraout_ECX;
  int extraout_ECX_00;
  double dVar4;
  undefined **ppuVar6;
  undefined8 uVar5;
  undefined4 local_24;
  undefined4 uStack_20;
  undefined *puStack_1c;
  undefined *puStack_18;
  undefined *local_14;
  
  local_24 = 0;
  uStack_20 = 0;
  puStack_1c = (undefined *)0x0;
  puStack_18 = (undefined *)0x0;
  local_14 = (undefined *)0x0;
  puVar1 = *param_1;
  switch(param_1[2]) {
  case (undefined *)0x0:
    local_14 = param_1[4];
    param_1[4] = (undefined *)0x0;
    param_1[2] = (undefined *)0xffffffff;
    break;
  case (undefined *)0x1:
    puStack_18 = param_1[5];
    param_1[5] = (undefined *)0x0;
    param_1[2] = (undefined *)0xffffffff;
    goto LAB_007d9dd9;
  case (undefined *)0x2:
    puStack_18 = param_1[5];
    param_1[5] = (undefined *)0x0;
    param_1[2] = (undefined *)0xffffffff;
    goto LAB_007d9d9f;
  case (undefined *)0x3:
    puStack_18 = param_1[5];
    param_1[5] = (undefined *)0x0;
    param_1[2] = (undefined *)0xffffffff;
    goto LAB_007d9d04;
  case (undefined *)0x4:
    puStack_18 = param_1[5];
    param_1[5] = (undefined *)0x0;
    param_1[2] = (undefined *)0xffffffff;
    goto LAB_007d9c78;
  case (undefined *)0x5:
    puStack_1c = param_1[6];
    param_1[6] = (undefined *)0x0;
    param_1[2] = (undefined *)0xffffffff;
    goto LAB_007d9ba9;
  case (undefined *)0x6:
    puStack_18 = param_1[5];
    param_1[5] = (undefined *)0x0;
    param_1[2] = (undefined *)0xffffffff;
    goto LAB_007d9b25;
  case (undefined *)0x7:
    local_14 = param_1[4];
    param_1[4] = (undefined *)0x0;
    param_1[2] = (undefined *)0xffffffff;
    goto LAB_007d9ae0;
  case (undefined *)0x8:
    puStack_18 = param_1[5];
    param_1[5] = (undefined *)0x0;
    param_1[2] = (undefined *)0xffffffff;
    goto LAB_007d9a41;
  case (undefined *)0x9:
    puStack_18 = param_1[5];
    param_1[5] = (undefined *)0x0;
    param_1[2] = (undefined *)0xffffffff;
    goto LAB_007d9a08;
  case (undefined *)0xa:
    puStack_18 = param_1[5];
    param_1[5] = (undefined *)0x0;
    param_1[2] = (undefined *)0xffffffff;
    goto LAB_007d997a;
  case (undefined *)0xb:
    puStack_1c = param_1[6];
    param_1[6] = (undefined *)0x0;
    param_1[2] = (undefined *)0xffffffff;
    goto LAB_007d98b2;
  case (undefined *)0xc:
    puStack_18 = param_1[5];
    param_1[5] = (undefined *)0x0;
    param_1[2] = (undefined *)0xffffffff;
    goto LAB_007d987b;
  default:
    local_14 = (undefined *)FUN_0077acc0();
    if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
      param_1[2] = (undefined *)0x0;
      FUN_00eaecdd();
      FUN_00d9fb40();
      FUN_00dfca00(&PTR_DAT_01568d5c);
      return;
    }
  }
  if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  if (*(int *)(local_14 + 0x20) != 0) {
    if (*(int *)(DAT_01c289d4 + 0x44) == 0) {
      FUN_00eae9a0();
      FUN_00e9a2a1();
      FUN_00eaec14();
    }
    FUN_00e4e4a0(&PTR_DAT_01544440,&uStack_20);
  }
  FUN_00eaeca8();
  if (*(int *)(extraout_ECX + 4) == 0) {
    FUN_007876b0();
    uVar5 = DAT_018d5a48;
    puStack_18 = (undefined *)FUN_007877c0(0,0,0,DAT_018d5a50,DAT_018d5a48);
    if ((*(uint *)(puStack_18 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)((int)((ulonglong)uVar5 >> 0x20) + 8) = 3;
      FUN_00eaeca8();
      FUN_00d9fb40();
      FUN_00dfc9c0();
      return;
    }
LAB_007d9d04:
    if ((*(uint *)(puStack_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    FUN_0077a760(0,0x9b6);
    iVar3 = *(int *)(puVar1 + 0x1c);
    puStack_18 = (undefined *)FUN_00975000();
    if ((*(uint *)(puStack_18 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(iVar3 + 8) = 4;
      FUN_00eaeca8();
      FUN_00d9fb40();
      FUN_00dfc9c0();
      return;
    }
LAB_007d9c78:
    if ((*(uint *)(puStack_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    ppuVar6 = &PTR_DAT_01b91278;
    puStack_1c = (undefined *)FUN_0077b0a0();
    if ((*(uint *)(puStack_1c + 0x1c) & 0x1600000) == 0) {
      ppuVar6[2] = (undefined *)0x5;
      FUN_00eaeca8();
      FUN_00d9fb40();
      FUN_00dfca00();
      return;
    }
LAB_007d9ba9:
    if ((*(uint *)(puStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if ((*(int *)(puStack_1c + 0x20) != 0) &&
       (iVar3 = *(int *)(*(int *)(puStack_1c + 0x20) + 0x10), 0 < *(int *)(iVar3 + 8))) {
      if (*(int *)(*(int *)(iVar3 + 4) + 4) == 0) goto LAB_007da1b5;
      FUN_0077ab40();
      iVar3 = *(int *)(puVar1 + 0x1c);
      puStack_18 = (undefined *)FUN_00975000();
      if ((*(uint *)(puStack_18 + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)(iVar3 + 8) = 6;
        FUN_00eaeca8();
        FUN_00d9fb40();
        FUN_00dfc9c0();
        return;
      }
LAB_007d9b25:
      if ((*(uint *)(puStack_18 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
    }
    iVar3 = 0x7d9b50;
    local_14 = (undefined *)FUN_0077acc0();
    if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(iVar3 + 8) = 7;
      FUN_00eaeca8();
      FUN_00d9fb40();
      FUN_00dfca00();
      return;
    }
LAB_007d9ae0:
    if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if (*(int *)(local_14 + 0x20) != 0) {
      if (*(int *)(DAT_01c289d4 + 0x48) == 0) {
        FUN_00eae9a0();
        FUN_00e9a2b2();
        local_24 = 0x7da000;
        FUN_00eaec14();
      }
      FUN_00e4e4a0(&PTR_DAT_01544440,&local_24);
    }
    FUN_00eaeca8();
    if (*(int *)(extraout_ECX_00 + 4) == 0) {
      FUN_007876b0();
      FUN_0077a760(0,0x9b6);
      iVar3 = *(int *)(puVar1 + 0x1c);
      puStack_18 = (undefined *)FUN_00975000();
      if ((*(uint *)(puStack_18 + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)(iVar3 + 8) = 10;
        FUN_00eaeca8();
        FUN_00d9fb40();
        FUN_00dfc9c0();
        return;
      }
LAB_007d997a:
      if ((*(uint *)(puStack_18 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      param_1 = &PTR_DAT_01b91278;
      puStack_1c = (undefined *)FUN_0077b0a0();
      if ((*(uint *)(puStack_1c + 0x1c) & 0x1600000) == 0) {
        param_1[2] = (undefined *)0xb;
        FUN_00eaeca8();
        FUN_00d9fb40();
        FUN_00dfca00();
        return;
      }
LAB_007d98b2:
      if ((*(uint *)(puStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
        param_1 = (undefined **)0x7d98cd;
        FUN_0099dbc0();
      }
      if ((*(int *)(puStack_1c + 0x20) != 0) &&
         (iVar3 = *(int *)(*(int *)(puStack_1c + 0x20) + 0x10), 1 < *(int *)(iVar3 + 8))) {
        if (*(uint *)(*(int *)(iVar3 + 4) + 4) < 2) {
LAB_007da1b5:
                    /* WARNING: Subroutine does not return */
          FUN_009c2bf0();
        }
        FUN_0077ab40();
        param_1 = *(undefined ***)(puVar1 + 0x1c);
        puStack_18 = (undefined *)FUN_00975000();
        if ((*(uint *)(puStack_18 + 0x1c) & 0x1600000) == 0) {
          param_1[2] = (undefined *)0xc;
          FUN_00eaeca8();
          FUN_00d9fb40();
          FUN_00dfc9c0();
          return;
        }
LAB_007d987b:
        if ((*(uint *)(puStack_18 + 0x1c) & 0x11000000) != 0x1000000) {
          param_1 = (undefined **)0x7d9896;
          FUN_0099dbc0();
        }
      }
      bVar2 = false;
      goto LAB_007da1bb;
    }
    iVar3 = 0x7da0aa;
    FUN_007876b0();
    dVar4 = *(double *)(*(int *)(iVar3 + 4) + 4) / _DAT_018d5a58;
    puStack_18 = (undefined *)
                 FUN_007877c0(0,0,0,*(double *)(*(int *)(iVar3 + 4) + 0xc) / _DAT_018d5a58,dVar4);
    param_1 = (undefined **)((ulonglong)dVar4 >> 0x20);
    if ((*(uint *)(puStack_18 + 0x1c) & 0x1600000) == 0) {
      param_1[2] = (undefined *)0x8;
      FUN_00eaeca8();
      FUN_00d9fb40();
      FUN_00dfc9c0();
      return;
    }
LAB_007d9a41:
    if ((*(uint *)(puStack_18 + 0x1c) & 0x11000000) != 0x1000000) {
      param_1 = (undefined **)0x7d9a5c;
      FUN_0099dbc0();
    }
    FUN_0077a760(0,*(undefined4 *)(param_1[1] + 0x28));
    param_1 = *(undefined ***)(puVar1 + 0x1c);
    puStack_18 = (undefined *)FUN_00975000();
    if ((*(uint *)(puStack_18 + 0x1c) & 0x1600000) == 0) {
      param_1[2] = (undefined *)0x9;
      FUN_00eaeca8();
      FUN_00d9fb40();
      FUN_00dfc9c0();
      return;
    }
LAB_007d9a08:
    if ((*(uint *)(puStack_18 + 0x1c) & 0x11000000) != 0x1000000) {
      param_1 = (undefined **)0x7d9a27;
      FUN_0099dbc0();
    }
  }
  else {
    iVar3 = 0x7da136;
    FUN_007876b0();
    dVar4 = *(double *)(*(int *)(iVar3 + 4) + 4) / _DAT_018d5a58;
    puStack_18 = (undefined *)
                 FUN_007877c0(0,0,0,*(double *)(*(int *)(iVar3 + 4) + 0xc) / _DAT_018d5a58,dVar4);
    param_1 = (undefined **)((ulonglong)dVar4 >> 0x20);
    if ((*(uint *)(puStack_18 + 0x1c) & 0x1600000) == 0) {
      param_1[2] = (undefined *)0x1;
      FUN_00eaecdd();
      FUN_00d9fb40();
      FUN_00dfc9c0();
      return;
    }
LAB_007d9dd9:
    if ((*(uint *)(puStack_18 + 0x1c) & 0x11000000) != 0x1000000) {
      param_1 = (undefined **)0x7d9df4;
      FUN_0099dbc0();
    }
    FUN_0077a760(0,*(undefined4 *)(param_1[1] + 0x28));
    param_1 = *(undefined ***)(puVar1 + 0x1c);
    puStack_18 = (undefined *)FUN_00975000();
    if ((*(uint *)(puStack_18 + 0x1c) & 0x1600000) == 0) {
      param_1[2] = (undefined *)0x2;
      FUN_00eaeca8();
      FUN_00d9fb40();
      FUN_00dfc9c0();
      return;
    }
LAB_007d9d9f:
    if ((*(uint *)(puStack_18 + 0x1c) & 0x11000000) != 0x1000000) {
      param_1 = (undefined **)0x7d9dba;
      FUN_0099dbc0();
    }
  }
  bVar2 = true;
LAB_007da1bb:
  param_1[2] = (undefined *)0xfffffffe;
  param_1[1] = (undefined *)0x0;
  if (param_1[3] == (undefined *)0x0) {
    if (bVar2) {
      if (PTR_FUN_01c2211c != (undefined *)0x0) {
        FUN_00e8eaff();
      }
    }
    else if (PTR_FUN_01c2211c != (undefined *)0x0) {
      FUN_00e8eaff();
    }
    FUN_00eaed7c();
  }
  else {
    iVar3 = FUN_00b6e080();
    if (iVar3 == 0) {
                    /* WARNING: Subroutine does not return */
      FUN_00931e50();
    }
  }
  return;
}

