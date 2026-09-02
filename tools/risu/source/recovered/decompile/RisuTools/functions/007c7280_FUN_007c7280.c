/* Address: 007c7280 | Ghidra name: FUN_007c7280 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_007c7280(int param_1)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int *extraout_ECX;
  undefined4 extraout_ECX_00;
  int in_stack_ffffff84;
  undefined4 local_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 uStack_30;
  undefined4 local_2c;
  undefined4 uStack_28;
  int iStack_24;
  int iStack_20;
  int local_1c;
  int local_18;
  uint local_14;
  
  local_3c = 0;
  uStack_38 = 0;
  uStack_34 = 0;
  uStack_30 = 0;
  local_2c = 0;
  uStack_28 = 0;
  iStack_24 = 0;
  iStack_20 = 0;
  local_1c = 0;
  local_18 = 0;
  local_14 = *(uint *)(param_1 + 0x10);
  iVar5 = *(int *)(param_1 + 4);
  if (9 < local_14) {
    FUN_00eae9a0();
    FUN_00eaeca8();
    extraout_ECX[5] = *(int *)(*(int *)(*extraout_ECX + 0x108) + 0x34);
    iVar2 = extraout_ECX[2];
    *(undefined4 *)(iVar2 + 0xc) = 0;
    *(undefined4 *)(iVar2 + 0x10) = 0;
  }
  switch(local_14) {
  case 0:
    local_18 = *(int *)(param_1 + 0x1c);
    *(undefined4 *)(param_1 + 0x1c) = 0;
    local_14 = 0xffffffff;
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    break;
  case 1:
    local_18 = *(int *)(param_1 + 0x1c);
    *(undefined4 *)(param_1 + 0x1c) = 0;
    local_14 = 0xffffffff;
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    goto LAB_007c7a48;
  case 2:
    local_1c = *(int *)(param_1 + 0x20);
    *(undefined4 *)(param_1 + 0x20) = 0;
    local_14 = 0xffffffff;
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    goto LAB_007c7a06;
  case 3:
    local_1c = *(int *)(param_1 + 0x20);
    *(undefined4 *)(param_1 + 0x20) = 0;
    local_14 = 0xffffffff;
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    goto LAB_007c79c2;
  case 4:
    iStack_20 = *(int *)(param_1 + 0x24);
    *(undefined4 *)(param_1 + 0x24) = 0;
    local_14 = 0xffffffff;
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    goto LAB_007c78c6;
  case 5:
    local_1c = *(int *)(param_1 + 0x20);
    *(undefined4 *)(param_1 + 0x20) = 0;
    local_14 = 0xffffffff;
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    goto LAB_007c7880;
  case 6:
    iStack_24 = *(int *)(param_1 + 0x28);
    *(undefined4 *)(param_1 + 0x28) = 0;
    local_14 = 0xffffffff;
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    goto LAB_007c751d;
  case 7:
    local_1c = *(int *)(param_1 + 0x20);
    *(undefined4 *)(param_1 + 0x20) = 0;
    local_14 = 0xffffffff;
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    goto LAB_007c7409;
  case 8:
    local_1c = *(int *)(param_1 + 0x20);
    *(undefined4 *)(param_1 + 0x20) = 0;
    local_14 = 0xffffffff;
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    goto LAB_007c73c3;
  case 9:
    local_1c = *(int *)(param_1 + 0x20);
    *(undefined4 *)(param_1 + 0x20) = 0;
    local_14 = 0xffffffff;
    *(undefined4 *)(param_1 + 0x10) = 0xffffffff;
    goto LAB_007c7317;
  default:
    goto LAB_007c7336;
  }
  do {
    if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    iVar2 = *(int *)(local_18 + 0x20);
    if (iVar2 == 0) {
      local_18 = FUN_0077b0a0();
      if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
        local_14 = 1;
        *(undefined4 *)(param_1 + 0x10) = 1;
        FUN_00eaecdd();
        FUN_00d9d560();
        FUN_00dfca00();
        FUN_007c7e0b();
        return;
      }
LAB_007c7a48:
      if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      iVar2 = *(int *)(local_18 + 0x20);
    }
    if (((iVar2 == 0) || (*(int *)(iVar2 + 8) == 0)) || (iVar4 = FUN_00909ad0(), iVar4 == 0)) {
      if (*(char *)(iVar5 + 0x14) == '\0') {
        iStack_20 = FUN_0077ac80();
        if ((*(uint *)(iStack_20 + 0x1c) & 0x1600000) == 0) {
          local_14 = 4;
          *(undefined4 *)(param_1 + 0x10) = 4;
          FUN_00eaecdd();
          FUN_00d9d560();
          FUN_00dfc9c0();
          FUN_007c7e0b();
          return;
        }
LAB_007c78c6:
        if ((*(uint *)(iStack_20 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        if (*(char *)(iStack_20 + 0x20) == '\0') {
          iStack_24 = FUN_0077acc0();
          if ((*(uint *)(iStack_24 + 0x1c) & 0x1600000) == 0) {
            local_14 = 6;
            *(undefined4 *)(param_1 + 0x10) = 6;
            FUN_00eaecdd();
            FUN_00d9d560();
            FUN_00dfca00();
            FUN_007c7e0b();
            return;
          }
LAB_007c751d:
          if ((*(uint *)(iStack_24 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          if (*(int *)(iStack_24 + 0x20) == 0) {
            iVar2 = 0;
          }
          else {
            if (*(int *)(DAT_01c289cc + 0x5c) == 0) {
              FUN_00eae9a0();
              FUN_00e99f1c(in_stack_ffffff84);
              in_stack_ffffff84 = 0x7c757f;
              FUN_00eaebef();
            }
            FUN_00e4ee90();
            iVar2 = FUN_00e4ee50();
          }
          if ((iVar2 == 0) || (*(int *)(iVar2 + 8) < 1)) {
            local_1c = FUN_00975000();
            if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
              local_14 = 9;
              *(undefined4 *)(param_1 + 0x10) = 9;
              FUN_00eaecdd();
              FUN_00d9d560();
              FUN_00dfc9c0();
              FUN_007c7e0b();
              return;
            }
LAB_007c7317:
            if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
          }
          else {
            iVar2 = *(int *)(param_1 + 8);
            if (*(char *)(iVar2 + 0xc) != '\0') {
              if (*(int *)(iVar2 + 4) == 0) {
                FUN_00eae9a0();
                FUN_00e9a11a(in_stack_ffffff84);
                in_stack_ffffff84 = 0x7c764a;
                FUN_00eaebef();
              }
              iVar4 = FUN_00e4d760();
              if (iVar4 == 0) {
                uStack_28 = 0;
                FUN_00966f60();
                uStack_28 = 1;
                if (*(char *)(*(int *)(param_1 + 8) + 0xc) == '\0') {
                    /* WARNING: Subroutine does not return */
                  FUN_009322f0();
                }
                FUN_00b43480();
                if ((int)local_14 < 0) {
                  FUN_009671c0();
                }
                iVar4 = *(int *)(param_1 + 8);
                *(undefined4 *)(iVar4 + 0xc) = 0;
                *(undefined4 *)(iVar4 + 0x10) = 0;
              }
            }
            if (*(char *)(*(int *)(param_1 + 8) + 0xc) == '\0') {
              uStack_28 = 0;
              FUN_00966f60();
              uStack_28 = 1;
              if (*(int *)(iVar5 + 0x10) == 0) {
                FUN_00eae9a0();
                FUN_00e9a0f8(in_stack_ffffff84);
                FUN_00eaebef();
              }
              iVar4 = FUN_00e4e4a0(&PTR_DAT_01544440,&uStack_30);
              if (iVar4 == 0) {
                iVar4 = *(int *)(param_1 + 8);
                iVar3 = FUN_00e4e3a0();
                if ((char)uStack_38 == '\0') {
                    /* WARNING: Subroutine does not return */
                  FUN_00860240();
                }
                uVar1 = *(undefined4 *)(iVar3 + 0x28);
                *(undefined1 *)(iVar4 + 0xc) = 1;
                *(undefined4 *)(iVar4 + 0x10) = uVar1;
              }
              else {
                iVar3 = *(int *)(param_1 + 8);
                uVar1 = *(undefined4 *)(iVar4 + 0x28);
                *(undefined1 *)(iVar3 + 0xc) = 1;
                *(undefined4 *)(iVar3 + 0x10) = uVar1;
                FUN_00bb8bc0();
              }
              if ((int)local_14 < 0) {
                FUN_009671c0();
              }
            }
            in_stack_ffffff84 = *(int *)(param_1 + 8);
            if (*(int *)(in_stack_ffffff84 + 8) == 0) {
              FUN_00eae9a0(in_stack_ffffff84,iVar2);
              FUN_00e9a12b(in_stack_ffffff84);
              in_stack_ffffff84 = 0x7c77b0;
              FUN_00eaebef();
            }
            FUN_00e4e4a0(&PTR_DAT_01544440,&local_3c);
            FUN_00eaeca8();
            iVar2 = *(int *)(param_1 + 0xc);
            if (iVar2 != 0) {
              local_1c = FUN_007877c0(1,1,*(undefined4 *)(param_1 + 0x14),
                                      *(double *)(iVar2 + 0xc) / _DAT_018d52a0,
                                      *(double *)(iVar2 + 4) / _DAT_018d52a0);
              if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
                local_14 = 7;
                *(undefined4 *)(param_1 + 0x10) = 7;
                FUN_00eaecdd();
                FUN_00d9d560();
                FUN_00dfc9c0();
                FUN_007c7e0b();
                return;
              }
LAB_007c7409:
              if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
              if (*(char *)(iVar5 + 0x14) != '\0' || *(char *)(iVar5 + 0x15) != '\0')
              goto LAB_007c7336;
              uVar1 = *(undefined4 *)(*(int *)(param_1 + 0xc) + 0x28);
              FUN_00eaeae1();
              iVar2 = FUN_00eae9a0();
              *(undefined4 *)(iVar2 + 4) = uVar1;
              FUN_00eaebca();
              iVar2 = FUN_00eae9a0();
              *(undefined4 *)(iVar2 + 4) = 0;
              FUN_00eaebca();
              FUN_0077a610(extraout_ECX_00,&PTR_DAT_01be3a98);
              local_1c = FUN_00975000();
              if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
                local_14 = 8;
                *(undefined4 *)(param_1 + 0x10) = 8;
                FUN_00eaecdd();
                FUN_00d9d560();
                FUN_00dfc9c0();
                FUN_007c7e0b();
                return;
              }
LAB_007c73c3:
              if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
            }
            *(undefined4 *)(param_1 + 0xc) = 0;
          }
        }
        else {
          local_1c = FUN_00975000();
          if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
            local_14 = 5;
            *(undefined4 *)(param_1 + 0x10) = 5;
            FUN_00eaecdd();
            FUN_00d9d560();
            FUN_00dfc9c0();
            FUN_007c7e0b();
            return;
          }
LAB_007c7880:
          if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
        }
      }
      else {
        local_1c = FUN_00975000();
        if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
          local_14 = 3;
          *(undefined4 *)(param_1 + 0x10) = 3;
          FUN_00eaecdd();
          FUN_00d9d560();
          FUN_00dfc9c0();
          FUN_007c7e0b();
          return;
        }
LAB_007c79c2:
        if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
      }
    }
    else {
      *(undefined1 *)(iVar5 + 0x14) = 1;
      iVar2 = *(int *)(iVar2 + 0x10);
      if ((iVar2 == 0) || (*(int *)(iVar2 + 8) < 1)) {
        FUN_00906a20();
        FUN_00782420();
      }
      else {
        local_2c = *(undefined4 *)(param_1 + 0x14);
        if (*(int *)(*(int *)(iVar2 + 4) + 4) == 0) {
                    /* WARNING: Subroutine does not return */
          FUN_009c2bf0();
        }
        uVar1 = *(undefined4 *)(*(int *)(*(int *)(iVar2 + 4) + 8) + 8);
        iVar2 = FUN_00eaeae1();
        *(undefined ***)(iVar2 + 8) = &PTR_DAT_01bb04a8;
        iVar4 = FUN_00eae9a0();
        *(undefined4 *)(iVar4 + 4) = uVar1;
        FUN_00eaebca();
        iVar4 = FUN_00eae9a0();
        *(undefined4 *)(iVar4 + 4) = 0;
        FUN_00eaebca();
        FUN_0077a610(iVar2,&PTR_DAT_01befc64);
      }
      local_1c = FUN_00975000();
      if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
        local_14 = 2;
        *(undefined4 *)(param_1 + 0x10) = 2;
        FUN_00eaeca8();
        FUN_00d9d560();
        FUN_00dfc9c0();
        FUN_007c7e0b();
        return;
      }
LAB_007c7a06:
      if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
    }
LAB_007c7336:
    if (*(char *)(iVar5 + 0x15) != '\0') {
      FUN_007c7e0b();
      *(undefined4 *)(param_1 + 0x10) = 0xfffffffe;
      *(undefined4 *)(param_1 + 8) = 0;
      if (*(int *)(param_1 + 0x18) == 0) {
        if (PTR_FUN_01c22110 != (undefined *)0x0) {
          FUN_00e8eaee();
        }
        FUN_00eaeca8();
        return;
      }
      iVar5 = FUN_00c0a790();
      if (iVar5 != 0) {
        return;
      }
                    /* WARNING: Subroutine does not return */
      FUN_00931e50();
    }
    local_18 = FUN_0077b0a0();
    if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
      local_14 = 0;
      *(undefined4 *)(param_1 + 0x10) = 0;
      FUN_00eaecdd();
      FUN_00d9d560();
      FUN_00dfca00();
      FUN_007c7e0b();
      return;
    }
  } while( true );
}

