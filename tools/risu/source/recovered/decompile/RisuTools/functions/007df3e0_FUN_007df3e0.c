/* Address: 007df3e0 | Ghidra name: FUN_007df3e0 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_007df3e0(undefined **param_1)

{
  undefined *puVar1;
  int iVar2;
  undefined *puVar3;
  double dVar4;
  undefined *local_24;
  undefined *puStack_20;
  undefined *puStack_1c;
  undefined *puStack_18;
  undefined *local_14;
  
  local_24 = (undefined *)0x0;
  puStack_20 = (undefined *)0x0;
  puStack_1c = (undefined *)0x0;
  puStack_18 = (undefined *)0x0;
  local_14 = (undefined *)0x0;
  puVar1 = *param_1;
  switch(param_1[1]) {
  case (undefined *)0x0:
    local_14 = param_1[4];
    param_1[4] = (undefined *)0x0;
    param_1[1] = (undefined *)0xffffffff;
    break;
  case (undefined *)0x1:
    puStack_18 = param_1[5];
    param_1[5] = (undefined *)0x0;
    param_1[1] = (undefined *)0xffffffff;
    goto LAB_007df84f;
  case (undefined *)0x2:
    puStack_1c = param_1[6];
    param_1[6] = (undefined *)0x0;
    param_1[1] = (undefined *)0xffffffff;
    goto LAB_007df7a3;
  case (undefined *)0x3:
    puStack_20 = param_1[7];
    param_1[7] = (undefined *)0x0;
    param_1[1] = (undefined *)0xffffffff;
    goto LAB_007df6e4;
  case (undefined *)0x4:
    puStack_18 = param_1[5];
    param_1[5] = (undefined *)0x0;
    param_1[1] = (undefined *)0xffffffff;
    goto LAB_007df664;
  case (undefined *)0x5:
    puStack_18 = param_1[5];
    param_1[5] = (undefined *)0x0;
    param_1[1] = (undefined *)0xffffffff;
    goto LAB_007df5ca;
  case (undefined *)0x6:
    puStack_18 = param_1[5];
    param_1[5] = (undefined *)0x0;
    param_1[1] = (undefined *)0xffffffff;
    goto LAB_007df53e;
  case (undefined *)0x7:
    puStack_1c = param_1[6];
    param_1[6] = (undefined *)0x0;
    param_1[1] = (undefined *)0xffffffff;
    goto LAB_007df46c;
  case (undefined *)0x8:
    puStack_18 = param_1[5];
    param_1[5] = (undefined *)0x0;
    param_1[1] = (undefined *)0xffffffff;
    goto LAB_007df42b;
  default:
    FUN_007876b0();
    local_14 = (undefined *)FUN_0077acc0();
    if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
      param_1[1] = (undefined *)0x0;
      FUN_00eaecdd();
      FUN_00da0560();
      FUN_00dfca00(&PTR_DAT_01568d68);
      return;
    }
  }
  if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  if (*(int *)(local_14 + 0x20) == 0) {
    iVar2 = 0;
  }
  else {
    if (*(int *)(DAT_01c289d4 + 0x80) == 0) {
      FUN_00eae9a0();
      FUN_00e9a3a0();
      FUN_00eaec14();
    }
    param_1 = &local_24;
    iVar2 = FUN_00e4e4a0(&PTR_DAT_01544440,param_1);
  }
  if (iVar2 == 0) {
    puVar3 = (undefined *)0x9c4;
  }
  else {
    puVar3 = *(undefined **)(iVar2 + 0x28);
  }
  param_1[2] = puVar3;
  FUN_0077a760(0,param_1[2]);
  iVar2 = *(int *)(puVar1 + 0x1c);
  puStack_18 = (undefined *)FUN_00975000();
  if ((*(uint *)(puStack_18 + 0x1c) & 0x1600000) == 0) {
    *(undefined4 *)(iVar2 + 4) = 1;
    FUN_00eaecdd();
    FUN_00da0560();
    FUN_00dfc9c0();
  }
  else {
LAB_007df84f:
    if ((*(uint *)(puStack_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    param_1 = &PTR_DAT_01b91278;
    puStack_1c = (undefined *)FUN_0077b0a0();
    if ((*(uint *)(puStack_1c + 0x1c) & 0x1600000) == 0) {
      param_1[1] = (undefined *)0x2;
      FUN_00eaeca8();
      FUN_00da0560();
      FUN_00dfca00();
    }
    else {
LAB_007df7a3:
      if ((*(uint *)(puStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
        param_1 = (undefined **)0x7df7be;
        FUN_0099dbc0();
      }
      iVar2 = *(int *)(puStack_1c + 0x20);
      if ((iVar2 == 0) || (*(int *)(*(int *)(iVar2 + 0x10) + 8) < 3)) {
        FUN_007876b0();
        param_1 = (undefined **)0x7df7f4;
        puStack_20 = (undefined *)FUN_0077abc0();
        if ((*(uint *)(puStack_20 + 0x1c) & 0x1600000) == 0) {
          param_1[1] = (undefined *)0x3;
          FUN_00eaecdd();
          FUN_00da0560();
          FUN_00dfca00();
          return;
        }
LAB_007df6e4:
        if ((*(uint *)(puStack_20 + 0x1c) & 0x11000000) != 0x1000000) {
          param_1 = (undefined **)0x7df6ff;
          FUN_0099dbc0();
        }
        iVar2 = *(int *)(puStack_20 + 0x20);
        if (iVar2 != 0) {
          dVar4 = *(double *)(iVar2 + 4) / _DAT_018d5d28 + _DAT_018d5d30;
          puStack_18 = (undefined *)
                       FUN_007877c0(0,0,0,*(double *)(iVar2 + 0xc) / _DAT_018d5d28,dVar4);
          if ((*(uint *)(puStack_18 + 0x1c) & 0x1600000) == 0) {
            *(undefined4 *)((int)((ulonglong)dVar4 >> 0x20) + 4) = 4;
            FUN_00eaecdd();
            FUN_00da0560();
            FUN_00dfc9c0();
            return;
          }
LAB_007df664:
          if ((*(uint *)(puStack_18 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          param_1 = *(undefined ***)(puVar1 + 0x1c);
          puStack_18 = (undefined *)FUN_00975000();
          if ((*(uint *)(puStack_18 + 0x1c) & 0x1600000) == 0) {
            param_1[1] = (undefined *)0x5;
            FUN_00eaeca8();
            FUN_00da0560();
            FUN_00dfc9c0();
            return;
          }
LAB_007df5ca:
          if ((*(uint *)(puStack_18 + 0x1c) & 0x11000000) != 0x1000000) {
            param_1 = (undefined **)0x7df5e5;
            FUN_0099dbc0();
          }
        }
        FUN_0077a760(0,param_1[2]);
        iVar2 = *(int *)(puVar1 + 0x1c);
        puStack_18 = (undefined *)FUN_00975000();
        if ((*(uint *)(puStack_18 + 0x1c) & 0x1600000) == 0) {
          *(undefined4 *)(iVar2 + 4) = 6;
          FUN_00eaeca8();
          FUN_00da0560();
          FUN_00dfc9c0();
          return;
        }
LAB_007df53e:
        if ((*(uint *)(puStack_18 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        param_1 = &PTR_DAT_01b91278;
        puStack_1c = (undefined *)FUN_0077b0a0();
        if ((*(uint *)(puStack_1c + 0x1c) & 0x1600000) == 0) {
          param_1[1] = (undefined *)0x7;
          FUN_00eaeca8();
          FUN_00da0560();
          FUN_00dfca00();
          return;
        }
LAB_007df46c:
        if ((*(uint *)(puStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
          param_1 = (undefined **)0x7df487;
          FUN_0099dbc0();
        }
        iVar2 = *(int *)(puStack_1c + 0x20);
      }
      if ((iVar2 != 0) && (2 < *(int *)(*(int *)(iVar2 + 0x10) + 8))) {
        if (*(uint *)(*(int *)(*(int *)(iVar2 + 0x10) + 4) + 4) < 3) {
                    /* WARNING: Subroutine does not return */
          FUN_009c2bf0();
        }
        FUN_0077ab40();
        iVar2 = *(int *)(puVar1 + 0x1c);
        puStack_18 = (undefined *)FUN_00975000();
        if ((*(uint *)(puStack_18 + 0x1c) & 0x1600000) == 0) {
          *(undefined4 *)(iVar2 + 4) = 8;
          FUN_00eaecdd();
          FUN_00da0560();
          FUN_00dfc9c0();
          return;
        }
LAB_007df42b:
        if ((*(uint *)(puStack_18 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        param_1 = (undefined **)0x7df452;
        FUN_007876b0();
      }
      param_1[1] = (undefined *)0xfffffffe;
      if (param_1[3] == (undefined *)0x0) {
        if (PTR_FUN_01c22110 != (undefined *)0x0) {
          FUN_00e8eaee();
        }
        FUN_00eaecdd();
      }
      else {
        iVar2 = FUN_00c0a790();
        if (iVar2 == 0) {
                    /* WARNING: Subroutine does not return */
          FUN_00931e50();
        }
      }
    }
  }
  return;
}

