/* Address: 007a9980 | Ghidra name: FUN_007a9980 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_007a9980(int param_1)

{
  uint uVar1;
  undefined4 uVar2;
  int iVar3;
  int extraout_ECX;
  uint uVar4;
  int iVar5;
  undefined4 in_stack_ffffffc0;
  undefined4 local_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  uint uStack_20;
  int local_1c;
  int local_18;
  int local_14;
  
  local_2c = 0;
  uStack_28 = 0;
  uStack_24 = 0;
  uStack_20 = 0;
  local_1c = 0;
  local_18 = 0;
  local_14 = 0;
  iVar3 = *(int *)(param_1 + 4);
  switch(*(undefined4 *)(param_1 + 0x14)) {
  case 0:
    local_14 = *(int *)(param_1 + 0x28);
    *(undefined4 *)(param_1 + 0x28) = 0;
    *(undefined4 *)(param_1 + 0x14) = 0xffffffff;
    goto LAB_007aa35f;
  case 1:
    local_18 = *(int *)(param_1 + 0x2c);
    *(undefined4 *)(param_1 + 0x2c) = 0;
    *(undefined4 *)(param_1 + 0x14) = 0xffffffff;
    goto LAB_007aa2a8;
  case 2:
    local_18 = *(int *)(param_1 + 0x2c);
    *(undefined4 *)(param_1 + 0x2c) = 0;
    *(undefined4 *)(param_1 + 0x14) = 0xffffffff;
    goto LAB_007aa21a;
  case 3:
    local_1c = *(int *)(param_1 + 0x30);
    *(undefined4 *)(param_1 + 0x30) = 0;
    *(undefined4 *)(param_1 + 0x14) = 0xffffffff;
    goto LAB_007aa106;
  case 4:
    local_1c = *(int *)(param_1 + 0x30);
    *(undefined4 *)(param_1 + 0x30) = 0;
    *(undefined4 *)(param_1 + 0x14) = 0xffffffff;
    goto LAB_007aa07a;
  case 5:
    local_18 = *(int *)(param_1 + 0x2c);
    *(undefined4 *)(param_1 + 0x2c) = 0;
    *(undefined4 *)(param_1 + 0x14) = 0xffffffff;
    goto LAB_007a9fec;
  case 6:
    local_1c = *(int *)(param_1 + 0x30);
    *(undefined4 *)(param_1 + 0x30) = 0;
    *(undefined4 *)(param_1 + 0x14) = 0xffffffff;
    goto LAB_007a9f75;
  case 7:
    local_18 = *(int *)(param_1 + 0x2c);
    *(undefined4 *)(param_1 + 0x2c) = 0;
    *(undefined4 *)(param_1 + 0x14) = 0xffffffff;
    goto LAB_007a9ee7;
  case 8:
    local_1c = *(int *)(param_1 + 0x30);
    *(undefined4 *)(param_1 + 0x30) = 0;
    *(undefined4 *)(param_1 + 0x14) = 0xffffffff;
    goto LAB_007a9b8f;
  case 9:
    local_18 = *(int *)(param_1 + 0x2c);
    *(undefined4 *)(param_1 + 0x2c) = 0;
    *(undefined4 *)(param_1 + 0x14) = 0xffffffff;
    goto LAB_007a9b01;
  case 10:
    local_1c = *(int *)(param_1 + 0x30);
    *(undefined4 *)(param_1 + 0x30) = 0;
    *(undefined4 *)(param_1 + 0x14) = 0xffffffff;
    goto LAB_007a9aae;
  case 0xb:
    local_18 = *(int *)(param_1 + 0x2c);
    *(undefined4 *)(param_1 + 0x2c) = 0;
    *(undefined4 *)(param_1 + 0x14) = 0xffffffff;
LAB_007a9a7f:
    if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    break;
  case 0xc:
    local_18 = *(int *)(param_1 + 0x2c);
    *(undefined4 *)(param_1 + 0x2c) = 0;
    *(undefined4 *)(param_1 + 0x14) = 0xffffffff;
LAB_007a9a08:
    if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    break;
  case 0xd:
    local_18 = *(int *)(param_1 + 0x2c);
    *(undefined4 *)(param_1 + 0x2c) = 0;
    *(undefined4 *)(param_1 + 0x14) = 0xffffffff;
    goto LAB_007a99d2;
  default:
    FUN_00eae9a0();
    FUN_00eaeca8();
    FUN_00eaebca();
    local_14 = FUN_0077acc0();
    if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 0x14) = 0;
      FUN_00eaecdd();
      FUN_00d99480();
      FUN_00dfca00(&PTR_DAT_01568d68);
      return;
    }
LAB_007aa35f:
    if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if (*(int *)(local_14 + 0x20) != 0) {
      FUN_00eae9a0();
      FUN_00e9958c();
      FUN_00e4e4a0(&PTR_DAT_01544440,&uStack_24);
    }
    FUN_00eaeca8();
    iVar5 = *(int *)(extraout_ECX + 0x10);
    if (iVar5 != 0) {
      local_18 = FUN_007877c0(1,1,*(undefined4 *)(*(int *)(*(int *)(iVar3 + 4) + 0x108) + 0x34),
                              *(double *)(iVar5 + 0xc) / _DAT_018d4638,
                              *(double *)(iVar5 + 4) / _DAT_018d4638);
      if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)(param_1 + 0x14) = 1;
        FUN_00eaecdd();
        FUN_00d99480();
        FUN_00dfc9c0();
        return;
      }
LAB_007aa2a8:
      if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      FUN_0077a760(0,*(undefined4 *)(*(int *)(param_1 + 0x10) + 0x28));
      *(undefined4 *)(param_1 + 0x1c) = 0;
      *(undefined1 *)(param_1 + 0x21) = 0;
      if (*(char *)(param_1 + 0x20) != '\0') {
        do {
          local_18 = FUN_00975000();
          if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
            *(undefined4 *)(param_1 + 0x14) = 2;
            FUN_00eaecdd();
            FUN_00d99480();
            FUN_00dfc9c0();
            return;
          }
LAB_007aa21a:
          if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          local_1c = FUN_0077b0a0();
          if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
            *(undefined4 *)(param_1 + 0x14) = 3;
            FUN_00eaeca8();
            FUN_00d99480();
            FUN_00dfca00();
            return;
          }
LAB_007aa106:
          if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          iVar3 = *(int *)(local_1c + 0x20);
          if (iVar3 == 0) {
            local_1c = FUN_0077b0a0();
            if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
              *(undefined4 *)(param_1 + 0x14) = 4;
              FUN_00eaecdd();
              FUN_00d99480();
              FUN_00dfca00();
              return;
            }
LAB_007aa07a:
            if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            iVar3 = *(int *)(local_1c + 0x20);
            if (iVar3 != 0) {
              if (*(int *)(DAT_01c289b4 + 0x58) == 0) {
                FUN_00eae9a0();
                FUN_00e9948d(in_stack_ffffffc0);
                in_stack_ffffffc0 = 0x7aa0df;
                FUN_00eaebef();
              }
              iVar5 = FUN_00e4d760();
              if (iVar5 != 0) goto LAB_007aa153;
            }
          }
          else {
            *(undefined1 *)(param_1 + 0x21) = 1;
          }
          *(int *)(param_1 + 0x1c) = *(int *)(param_1 + 0x1c) + 1;
          if (((iVar3 != 0) && (*(int *)(*(int *)(iVar3 + 0x10) + 8) != 0)) ||
             (4 < *(int *)(param_1 + 0x1c))) goto LAB_007aa153;
        } while( true );
      }
      do {
        local_18 = FUN_00975000();
        if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
          *(undefined4 *)(param_1 + 0x14) = 7;
          FUN_00eaecdd();
          FUN_00d99480();
          FUN_00dfc9c0();
          return;
        }
LAB_007a9ee7:
        if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        local_1c = FUN_0077b0a0();
        if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
          *(undefined4 *)(param_1 + 0x14) = 8;
          FUN_00eaeca8();
          FUN_00d99480();
          FUN_00dfca00();
          return;
        }
LAB_007a9b8f:
        if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        iVar3 = *(int *)(local_1c + 0x20);
        *(int *)(param_1 + 0x1c) = *(int *)(param_1 + 0x1c) + 1;
      } while (((iVar3 == 0) || (*(int *)(*(int *)(iVar3 + 0x10) + 8) == 0)) &&
              (*(int *)(param_1 + 0x1c) < 5));
LAB_007a9fb3:
      if (iVar3 != 0) {
        uStack_20 = *(uint *)(*(int *)(iVar3 + 0x10) + 8);
        if (*(char *)(param_1 + 0x20) == '\0') {
          iVar5 = *(int *)(param_1 + 0x18);
        }
        else {
          iVar5 = 0;
        }
        if (iVar5 < (int)uStack_20) {
          if (*(char *)(param_1 + 0x20) == '\0') {
            uVar4 = *(uint *)(param_1 + 0x18);
          }
          else {
            uVar4 = 0;
          }
          if (uStack_20 <= uVar4) {
LAB_007aa4ca:
                    /* WARNING: Subroutine does not return */
            FUN_009319a0();
          }
          if (*(uint *)(*(int *)(*(int *)(iVar3 + 0x10) + 4) + 4) <= uVar4) {
LAB_007aa4d0:
                    /* WARNING: Subroutine does not return */
            FUN_009c2bf0();
          }
          FUN_0077ab40();
          *(undefined4 *)(param_1 + 0x1c) = 0;
          do {
            local_18 = FUN_00975000();
            if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
              *(undefined4 *)(param_1 + 0x14) = 9;
              FUN_00eaecdd();
              FUN_00d99480();
              FUN_00dfc9c0();
              return;
            }
LAB_007a9b01:
            if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            local_1c = FUN_0077b0a0();
            if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
              *(undefined4 *)(param_1 + 0x14) = 10;
              FUN_00eaeca8();
              FUN_00d99480();
              FUN_00dfca00();
              return;
            }
LAB_007a9aae:
            if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            iVar3 = *(int *)(local_1c + 0x20);
            *(int *)(param_1 + 0x1c) = *(int *)(param_1 + 0x1c) + 1;
            if (iVar3 != 0) {
              if (*(int *)(DAT_01c289b4 + 0x5c) == 0) {
                uVar2 = FUN_00eae9a0();
                FUN_00e9949e(uVar2);
                in_stack_ffffffc0 = 0x7a9d75;
                FUN_00eaebef();
              }
              iVar3 = FUN_00e4e4a0(&PTR_DAT_01543d24,&uStack_28);
              if (*(int *)(DAT_01c289b4 + 0x60) == 0) {
                uVar2 = FUN_00eae9a0();
                FUN_00e994af(in_stack_ffffffc0);
                FUN_00eaebef(uVar2);
              }
              iVar5 = FUN_00e4e4a0(&PTR_DAT_01543d24,&local_2c);
              if (iVar3 != 0) {
                FUN_0077ab40();
                local_18 = FUN_00975000();
                if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
                  *(undefined4 *)(param_1 + 0x14) = 0xb;
                  FUN_00eaecdd();
                  FUN_00d99480();
                  FUN_00dfc9c0();
                  return;
                }
                goto LAB_007a9a7f;
              }
              if (iVar5 != 0) {
                FUN_0077ab40();
                local_18 = FUN_00975000();
                if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
                  *(undefined4 *)(param_1 + 0x14) = 0xc;
                  FUN_00eaecdd();
                  FUN_00d99480();
                  FUN_00dfc9c0();
                  return;
                }
                goto LAB_007a9a08;
              }
              break;
            }
          } while (*(int *)(param_1 + 0x1c) < 5);
        }
      }
      break;
    }
    goto LAB_007aa4d6;
  }
  local_18 = FUN_007a22e0();
  if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
    *(undefined4 *)(param_1 + 0x14) = 0xd;
    FUN_00eaeca8();
    FUN_00d99480();
    FUN_00dfc9c0();
  }
  else {
LAB_007a99d2:
    if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
LAB_007aa4d6:
    *(undefined4 *)(param_1 + 0x14) = 0xfffffffe;
    *(undefined4 *)(param_1 + 8) = 0;
    *(undefined4 *)(param_1 + 0x10) = 0;
    if (*(int *)(param_1 + 0x24) == 0) {
      if (PTR_FUN_01c22110 != (undefined *)0x0) {
        FUN_00e8eaee();
      }
      FUN_00eaecdd();
    }
    else {
      iVar3 = FUN_00c0a790();
      if (iVar3 == 0) {
                    /* WARNING: Subroutine does not return */
        FUN_00931e50();
      }
    }
  }
  return;
LAB_007aa153:
  if ((*(byte *)(param_1 + 0x21) & iVar3 != 0) != 0) {
    uVar4 = *(uint *)(*(int *)(iVar3 + 0x10) + 8);
    uVar1 = *(uint *)(param_1 + 0x18);
    if ((int)uVar1 < (int)uVar4) {
      if (uVar4 <= uVar1) goto LAB_007aa4ca;
      if (*(uint *)(*(int *)(*(int *)(iVar3 + 0x10) + 4) + 4) <= uVar1) goto LAB_007aa4d0;
      FUN_0077ab40();
    }
  }
  *(undefined4 *)(param_1 + 0x1c) = 0;
  do {
    local_18 = FUN_00975000();
    if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 0x14) = 5;
      FUN_00eaecdd();
      FUN_00d99480();
      FUN_00dfc9c0();
      return;
    }
LAB_007a9fec:
    if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    local_1c = FUN_0077b0a0();
    if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 0x14) = 6;
      FUN_00eaeca8();
      FUN_00d99480();
      FUN_00dfca00();
      return;
    }
LAB_007a9f75:
    if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    iVar3 = *(int *)(local_1c + 0x20);
    *(int *)(param_1 + 0x1c) = *(int *)(param_1 + 0x1c) + 1;
  } while (((iVar3 == 0) || (*(int *)(*(int *)(iVar3 + 0x10) + 8) == 0)) &&
          (*(int *)(param_1 + 0x1c) < 5));
  goto LAB_007a9fb3;
}

