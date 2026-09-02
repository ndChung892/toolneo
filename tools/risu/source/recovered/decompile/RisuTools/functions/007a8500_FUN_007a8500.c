/* Address: 007a8500 | Ghidra name: FUN_007a8500 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_007a8500(int param_1)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  int iVar5;
  undefined4 extraout_ECX;
  undefined4 extraout_ECX_00;
  undefined4 in_stack_ffffffb4;
  undefined4 uStack_3c;
  int iStack_38;
  undefined4 uStack_34;
  int local_30;
  uint uStack_2c;
  uint uStack_28;
  undefined4 *puStack_24;
  uint local_20;
  int iStack_1c;
  int iStack_18;
  int iStack_14;
  
  uStack_3c = 0;
  iStack_38 = 0;
  uStack_34 = 0;
  local_30 = 0;
  uStack_2c = 0;
  uStack_28 = 0;
  puStack_24 = (undefined4 *)0x0;
  local_20 = 0;
  iStack_1c = 0;
  iStack_18 = 0;
  iStack_14 = 0;
  switch(*(undefined4 *)(param_1 + 8)) {
  case 0:
    iStack_14 = *(int *)(param_1 + 0x10);
    *(undefined4 *)(param_1 + 0x10) = 0;
    *(undefined4 *)(param_1 + 8) = 0xffffffff;
    do {
      if ((*(uint *)(iStack_14 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
switchD_007a853a_default:
      iStack_18 = FUN_0077af00();
      if ((*(uint *)(iStack_18 + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)(param_1 + 8) = 1;
        FUN_00eaeca8();
        FUN_00d99120();
        FUN_00dfc9c0();
        return;
      }
LAB_007a88f6:
      if ((*(uint *)(iStack_18 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      if (*(char *)(iStack_18 + 0x20) != '\0') {
        iStack_14 = FUN_007877c0(1,0,0,DAT_018d4540,DAT_018d4538);
        if ((*(uint *)(iStack_14 + 0x1c) & 0x1600000) == 0) {
          *(undefined4 *)(param_1 + 8) = 2;
          FUN_00eaecdd();
          FUN_00d99120();
          FUN_00dfc9c0();
          return;
        }
        goto LAB_007a8872;
      }
      FUN_00906a20();
      FUN_00782420();
      iStack_14 = FUN_00975000();
    } while ((*(uint *)(iStack_14 + 0x1c) & 0x1600000) != 0);
    *(undefined4 *)(param_1 + 8) = 0;
    FUN_00eaeca8();
    FUN_00d99120();
    FUN_00dfc9c0();
    break;
  case 1:
    iStack_18 = *(int *)(param_1 + 0x14);
    *(undefined4 *)(param_1 + 0x14) = 0;
    *(undefined4 *)(param_1 + 8) = 0xffffffff;
    goto LAB_007a88f6;
  case 2:
    iStack_14 = *(int *)(param_1 + 0x10);
    *(undefined4 *)(param_1 + 0x10) = 0;
    *(undefined4 *)(param_1 + 8) = 0xffffffff;
LAB_007a8872:
    if ((*(uint *)(iStack_14 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    while (iStack_1c = FUN_0077ad90(), (*(uint *)(iStack_1c + 0x1c) & 0x1600000) != 0) {
LAB_007a882d:
      if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      if (*(int *)(iStack_1c + 0x20) == 0) {
        iVar5 = 0;
      }
      else {
        if (*(int *)(DAT_01c289b4 + 0x30) == 0) {
          FUN_00eae9a0();
          FUN_00e993e3(in_stack_ffffffb4);
          in_stack_ffffffb4 = 0x7a8ac1;
          FUN_00eaec14();
        }
        iVar5 = FUN_00e4e4a0(&PTR_DAT_01544bfc,&uStack_3c);
      }
      if (iVar5 != 0) {
        if (*(int *)(iVar5 + 0x1c) == 0) {
          iVar5 = 0;
        }
        else {
          iVar5 = FUN_00e4e3a0();
        }
        if (((iVar5 != 0) && (0 < *(int *)(iVar5 + 0x10))) &&
           (*(int *)(iVar5 + 0x10) <= *(int *)(iVar5 + 0x14))) {
          if (PTR_LAB_01c23e7c != (undefined *)0x0) {
            FUN_00e8f54a();
          }
          local_30 = FUN_00b848a0();
          uVar4 = _UNK_018d455c;
          uVar3 = _UNK_018d4558;
          uVar2 = _UNK_018d4554;
          if (local_30 == 0) {
            puStack_24 = (undefined4 *)0x0;
            local_20 = 0;
          }
          else {
            puStack_24 = (undefined4 *)(local_30 + 8);
            local_20 = *(uint *)(local_30 + 4);
          }
          uStack_34 = 0;
          uStack_2c = 0;
          uStack_28 = uStack_28 & 0xffffff00;
          if (local_20 < 0x1a) {
            FUN_0099d6f0();
          }
          else {
            *puStack_24 = _DAT_018d4550;
            puStack_24[1] = uVar2;
            puStack_24[2] = uVar3;
            puStack_24[3] = uVar4;
            uVar4 = _UNK_018d456c;
            uVar3 = _UNK_018d4568;
            uVar2 = _UNK_018d4564;
            puStack_24[4] = _DAT_018d4560;
            puStack_24[5] = uVar2;
            puStack_24[6] = uVar3;
            puStack_24[7] = uVar4;
            uVar4 = _UNK_018d457c;
            uVar3 = _UNK_018d4578;
            uVar2 = _UNK_018d4574;
            puStack_24[8] = _DAT_018d4570;
            puStack_24[9] = uVar2;
            puStack_24[10] = uVar3;
            puStack_24[0xb] = uVar4;
            puStack_24[0xc] = 0x280020;
            uStack_2c = 0x1a;
          }
          FUN_00de77e0();
          if (uStack_2c <= local_20) {
            if (local_20 == uStack_2c) {
              FUN_0099d6f0();
            }
            else {
              *(undefined2 *)((int)puStack_24 + uStack_2c * 2) = 0x2f;
              uStack_2c = uStack_2c + 1;
            }
            FUN_00de77e0();
            uVar4 = _UNK_018d458c;
            uVar3 = _UNK_018d4588;
            uVar2 = _UNK_018d4584;
            if (uStack_2c <= local_20) {
              puVar1 = (undefined4 *)((int)puStack_24 + uStack_2c * 2);
              if (local_20 - uStack_2c < 0x1b) {
                FUN_0099d6f0();
              }
              else {
                *puVar1 = _DAT_018d4580;
                puVar1[1] = uVar2;
                puVar1[2] = uVar3;
                puVar1[3] = uVar4;
                uVar4 = _UNK_018d459c;
                uVar3 = _UNK_018d4598;
                uVar2 = _UNK_018d4594;
                puVar1[4] = _DAT_018d4590;
                puVar1[5] = uVar2;
                puVar1[6] = uVar3;
                puVar1[7] = uVar4;
                uVar4 = _UNK_018d45ac;
                uVar3 = _UNK_018d45a8;
                uVar2 = _UNK_018d45a4;
                puVar1[8] = _DAT_018d45a0;
                puVar1[9] = uVar2;
                puVar1[10] = uVar3;
                puVar1[0xb] = uVar4;
                puVar1[0xc] = 0x2e002e;
                *(undefined2 *)(puVar1 + 0xd) = 0x2e;
                uStack_2c = uStack_2c + 0x1b;
              }
              FUN_0099d560();
              FUN_007876b0();
              iStack_14 = FUN_007a2200();
              if ((*(uint *)(iStack_14 + 0x1c) & 0x1600000) == 0) {
                *(undefined4 *)(param_1 + 8) = 9;
                FUN_00eaeca8();
                FUN_00d99120();
                FUN_00dfc9c0();
                return;
              }
              goto LAB_007a854e;
            }
          }
                    /* WARNING: Subroutine does not return */
          FUN_009318f0();
        }
      }
      iStack_38 = FUN_0077abc0();
      if ((*(uint *)(iStack_38 + 0x1c) & 0x1600000) == 0) {
        *(undefined4 *)(param_1 + 8) = 4;
        FUN_00eaeca8();
        FUN_00d99120();
        FUN_00dfca00();
        return;
      }
LAB_007a8799:
      if ((*(uint *)(iStack_38 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      if ((*(int *)(iStack_38 + 0x20) == 0) ||
         (*(char *)(*(int *)(iStack_38 + 0x20) + 0x69) != '\0')) {
        iStack_14 = FUN_00975000();
        if ((*(uint *)(iStack_14 + 0x1c) & 0x1600000) == 0) {
          *(undefined4 *)(param_1 + 8) = 5;
          FUN_00eaeca8();
          FUN_00d99120();
          FUN_00dfc9c0();
          return;
        }
LAB_007a8763:
        if ((*(uint *)(iStack_14 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
      }
      else {
        FUN_00eaeae1();
        iVar5 = FUN_00eae9a0();
        *(undefined8 *)(iVar5 + 4) = DAT_018d4548;
        FUN_00eaebca();
        iVar5 = FUN_00eae9a0();
        *(undefined8 *)(iVar5 + 4) = DAT_018d4530;
        FUN_00eaebca();
        iVar5 = FUN_00eae9a0();
        *(undefined4 *)(iVar5 + 4) = 0;
        FUN_00eaebca();
        FUN_0077a610(extraout_ECX_00,&PTR_DAT_01bf1f80);
        iStack_14 = FUN_00975000();
        if ((*(uint *)(iStack_14 + 0x1c) & 0x1600000) == 0) {
          *(undefined4 *)(param_1 + 8) = 6;
          FUN_00eaeca8();
          FUN_00d99120();
          FUN_00dfc9c0();
          return;
        }
LAB_007a86df:
        if ((*(uint *)(iStack_14 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        iStack_38 = FUN_0077abc0();
        if ((*(uint *)(iStack_38 + 0x1c) & 0x1600000) == 0) {
          *(undefined4 *)(param_1 + 8) = 7;
          FUN_00eaeca8();
          FUN_00d99120();
          FUN_00dfca00();
          return;
        }
LAB_007a85bd:
        if ((*(uint *)(iStack_38 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        if ((*(int *)(iStack_38 + 0x20) == 0) ||
           (*(char *)(*(int *)(iStack_38 + 0x20) + 0x69) == '\0')) {
          in_stack_ffffffb4 = FUN_00eaeae1();
          iVar5 = FUN_00eae9a0();
          *(undefined8 *)(iVar5 + 4) = DAT_018d4528;
          FUN_00eaebca();
          iVar5 = FUN_00eae9a0();
          *(undefined8 *)(iVar5 + 4) = DAT_018d4530;
          FUN_00eaebca();
          iVar5 = FUN_00eae9a0();
          *(undefined4 *)(iVar5 + 4) = 0;
          FUN_00eaebca();
          FUN_0077a610(extraout_ECX,&PTR_DAT_01bf1f80);
          iStack_14 = FUN_00975000();
          if ((*(uint *)(iStack_14 + 0x1c) & 0x1600000) == 0) {
            *(undefined4 *)(param_1 + 8) = 8;
            FUN_00eaeca8();
            FUN_00d99120();
            FUN_00dfc9c0();
            return;
          }
LAB_007a8587:
          if ((*(uint *)(iStack_14 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
        }
      }
    }
    *(undefined4 *)(param_1 + 8) = 3;
    FUN_00eaeca8();
    FUN_00d99120();
    FUN_00dfca00();
    break;
  case 3:
    iStack_1c = *(int *)(param_1 + 0x18);
    *(undefined4 *)(param_1 + 0x18) = 0;
    *(undefined4 *)(param_1 + 8) = 0xffffffff;
    goto LAB_007a882d;
  case 4:
    iStack_38 = *(int *)(param_1 + 0x1c);
    *(undefined4 *)(param_1 + 0x1c) = 0;
    *(undefined4 *)(param_1 + 8) = 0xffffffff;
    goto LAB_007a8799;
  case 5:
    iStack_14 = *(int *)(param_1 + 0x10);
    *(undefined4 *)(param_1 + 0x10) = 0;
    *(undefined4 *)(param_1 + 8) = 0xffffffff;
    goto LAB_007a8763;
  case 6:
    iStack_14 = *(int *)(param_1 + 0x10);
    *(undefined4 *)(param_1 + 0x10) = 0;
    *(undefined4 *)(param_1 + 8) = 0xffffffff;
    goto LAB_007a86df;
  case 7:
    iStack_38 = *(int *)(param_1 + 0x1c);
    *(undefined4 *)(param_1 + 0x1c) = 0;
    *(undefined4 *)(param_1 + 8) = 0xffffffff;
    goto LAB_007a85bd;
  case 8:
    iStack_14 = *(int *)(param_1 + 0x10);
    *(undefined4 *)(param_1 + 0x10) = 0;
    *(undefined4 *)(param_1 + 8) = 0xffffffff;
    goto LAB_007a8587;
  case 9:
    iStack_14 = *(int *)(param_1 + 0x10);
    *(undefined4 *)(param_1 + 0x10) = 0;
    *(undefined4 *)(param_1 + 8) = 0xffffffff;
LAB_007a854e:
    if ((*(uint *)(iStack_14 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    *(undefined4 *)(param_1 + 8) = 0xfffffffe;
    if (*(int *)(param_1 + 0xc) == 0) {
      if (PTR_FUN_01c22110 != (undefined *)0x0) {
        FUN_00e8eaee();
      }
      FUN_00eaecdd();
    }
    else {
      iVar5 = FUN_00c0a790();
      if (iVar5 == 0) {
                    /* WARNING: Subroutine does not return */
        FUN_00931e50();
      }
    }
    break;
  default:
    goto switchD_007a853a_default;
  }
  return;
}

