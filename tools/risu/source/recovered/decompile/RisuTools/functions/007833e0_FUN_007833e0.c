/* Address: 007833e0 | Ghidra name: FUN_007833e0 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_007833e0(int param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 uVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  undefined **ppuVar8;
  undefined4 *puVar9;
  uint *puVar10;
  int *piVar11;
  uint uVar12;
  int iVar13;
  uint uVar14;
  int *piVar15;
  uint *puVar16;
  undefined1 auVar17 [16];
  undefined1 auVar18 [16];
  undefined1 auVar19 [16];
  undefined4 local_1a4;
  undefined4 *local_1a0;
  undefined4 local_19c;
  undefined4 local_198;
  undefined4 local_194;
  undefined4 local_18c;
  undefined4 local_188;
  undefined4 *local_184;
  uint local_180;
  uint local_17c;
  int local_178 [4];
  int local_168 [4];
  undefined4 local_158;
  undefined4 local_154;
  uint local_150 [6];
  uint local_138 [6];
  uint local_120 [6];
  uint local_108 [6];
  undefined4 local_f0;
  undefined4 local_ec;
  undefined4 local_e8;
  undefined4 local_e4;
  uint local_e0 [4];
  int local_d0;
  uint local_cc;
  int local_c8;
  int local_c4;
  int local_c0;
  uint local_bc [4];
  int local_ac;
  uint local_a8;
  int local_a4;
  int local_9c;
  uint local_98;
  int local_94 [8];
  undefined4 local_74;
  undefined4 local_70;
  uint local_6c [4];
  int local_5c;
  uint local_58;
  uint local_54 [4];
  int local_44;
  uint local_40;
  int local_3c;
  int local_38;
  undefined4 local_34;
  int local_30;
  undefined4 local_2c;
  undefined **ppuStack_28;
  undefined **ppuStack_24;
  undefined **ppuStack_20;
  undefined **local_1c;
  undefined **local_18;
  uint local_14;
  
  iVar13 = -0x1b0;
  do {
    *(undefined4 *)((int)&local_14 + iVar13) = 0;
    *(undefined4 *)(&stack0xfffffff0 + iVar13) = 0;
    *(undefined4 *)(&stack0xfffffff4 + iVar13) = 0;
    *(undefined4 *)(&stack0xfffffff8 + iVar13) = 0;
    *(undefined4 *)(&stack0xfffffffc + iVar13) = 0;
    *(undefined4 *)(&stack0x00000000 + iVar13) = 0;
    *(undefined4 *)(&stack0x00000004 + iVar13) = 0;
    *(undefined4 *)(&stack0x00000008 + iVar13) = 0;
    *(undefined4 *)(&stack0x0000000c + iVar13) = 0;
    *(undefined4 *)(&stack0x00000010 + iVar13) = 0;
    *(undefined4 *)(&stack0x00000014 + iVar13) = 0;
    *(undefined4 *)(&stack0x00000018 + iVar13) = 0;
    iVar13 = iVar13 + 0x30;
  } while (iVar13 != 0);
  local_14 = *(uint *)(param_1 + 0x28);
  iVar13 = *(int *)(param_1 + 4);
  if (0x17 < local_14) {
    FUN_00eaecdd();
  }
  if (0x17 < local_14) {
    FUN_008fa1f0();
    FUN_00eaeca8();
  }
  switch(local_14) {
  case 0:
    local_30 = *(int *)(param_1 + 0x34);
    *(undefined4 *)(param_1 + 0x34) = 0;
    local_14 = 0xffffffff;
    *(undefined4 *)(param_1 + 0x28) = 0xffffffff;
    break;
  case 1:
  case 2:
  case 3:
  case 4:
    goto LAB_007858b6;
  case 5:
    local_38 = *(int *)(param_1 + 0x38);
    *(undefined4 *)(param_1 + 0x38) = 0;
    local_14 = 0xffffffff;
    *(undefined4 *)(param_1 + 0x28) = 0xffffffff;
    goto LAB_00785827;
  case 6:
    local_38 = *(int *)(param_1 + 0x38);
    *(undefined4 *)(param_1 + 0x38) = 0;
    local_14 = 0xffffffff;
    *(undefined4 *)(param_1 + 0x28) = 0xffffffff;
    goto LAB_007857c4;
  case 7:
    local_38 = *(int *)(param_1 + 0x38);
    *(undefined4 *)(param_1 + 0x38) = 0;
    local_14 = 0xffffffff;
    *(undefined4 *)(param_1 + 0x28) = 0xffffffff;
    goto LAB_00785730;
  case 8:
    local_38 = *(int *)(param_1 + 0x38);
    *(undefined4 *)(param_1 + 0x38) = 0;
    local_14 = 0xffffffff;
    *(undefined4 *)(param_1 + 0x28) = 0xffffffff;
    goto LAB_007856f3;
  case 9:
    local_38 = *(int *)(param_1 + 0x38);
    *(undefined4 *)(param_1 + 0x38) = 0;
    local_14 = 0xffffffff;
    *(undefined4 *)(param_1 + 0x28) = 0xffffffff;
    goto LAB_007856b6;
  case 10:
  case 0xb:
    goto switchD_00783473_caseD_a;
  case 0xc:
    local_38 = *(int *)(param_1 + 0x38);
    *(undefined4 *)(param_1 + 0x38) = 0;
    local_14 = 0xffffffff;
    *(undefined4 *)(param_1 + 0x28) = 0xffffffff;
    if ((*(uint *)(local_38 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    goto LAB_00785693;
  case 0xd:
    local_38 = *(int *)(param_1 + 0x38);
    *(undefined4 *)(param_1 + 0x38) = 0;
    local_14 = 0xffffffff;
    *(undefined4 *)(param_1 + 0x28) = 0xffffffff;
    goto LAB_0078563b;
  case 0xe:
    local_38 = *(int *)(param_1 + 0x38);
    *(undefined4 *)(param_1 + 0x38) = 0;
    local_14 = 0xffffffff;
    *(undefined4 *)(param_1 + 0x28) = 0xffffffff;
    goto LAB_007855fe;
  case 0xf:
  case 0x10:
  case 0x11:
    goto LAB_0078401b;
  case 0x12:
    local_38 = *(int *)(param_1 + 0x38);
    *(undefined4 *)(param_1 + 0x38) = 0;
    local_14 = 0xffffffff;
    *(undefined4 *)(param_1 + 0x28) = 0xffffffff;
    if ((*(uint *)(local_38 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    goto LAB_007855d0;
  case 0x13:
    local_38 = *(int *)(param_1 + 0x38);
    *(undefined4 *)(param_1 + 0x38) = 0;
    local_14 = 0xffffffff;
    *(undefined4 *)(param_1 + 0x28) = 0xffffffff;
    goto LAB_00785578;
  case 0x14:
  case 0x15:
  case 0x16:
  case 0x17:
    goto switchD_00783473_caseD_14;
  default:
    FUN_00eaea6e();
    FUN_00eaeca8();
    local_30 = FUN_008f3ed0(0,*(undefined4 *)(*(int *)(param_1 + 0x10) + 4),0);
    if ((*(uint *)(local_30 + 0x1c) & 0x1600000) == 0) {
      local_14 = 0;
      *(undefined4 *)(param_1 + 0x28) = 0;
      FUN_00eaecdd();
      FUN_00d95080();
      FUN_00dfc9c0();
      FUN_0078622b();
      FUN_00786257();
      return;
    }
  }
  if ((*(uint *)(local_30 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  iVar3 = *(int *)(local_30 + 0x20);
  if (iVar3 < 1) {
    FUN_0078622b();
    FUN_00786257();
    goto LAB_00786048;
  }
  if (PTR_LAB_01c22128 != (undefined *)0x0) {
    FUN_00e8eb21();
  }
  iVar3 = FUN_0097a4d0(iVar3,0);
  uVar4 = FUN_00909bb0(0,*(undefined4 *)(iVar3 + 4),0);
  iVar5 = FUN_00909690(uVar4);
  iVar6 = FUN_00eaeae1();
  *(undefined ***)(iVar6 + 8) = &PTR_DAT_01b39dbc;
  iVar6 = FUN_00908700(0,0x7fffffff,iVar6);
  if (*(int *)(iVar5 + 4) < 8) {
LAB_0078356b:
    iVar7 = FUN_00905af0();
    if ((iVar7 == 0) || (iVar7 = FUN_00909ad0(), iVar7 == 0)) {
      iVar7 = FUN_00905af0();
      if ((iVar7 != 0) &&
         ((iVar7 = FUN_00909bb0(5,*(undefined4 *)(iVar5 + 4),0), -1 < iVar7 &&
          (iVar3 = FUN_00909bb0(5,*(undefined4 *)(iVar3 + 4),0), -1 < iVar3)))) {
        (**(code **)(PTR_DAT_01bfe38c + 0x58))();
        piVar11 = (int *)FUN_009b3fd0();
        if (piVar11 != (int *)0x0) {
          iVar3 = FUN_00eae9a0();
          FUN_0098ce30();
          uVar4 = FUN_009892a0();
          (**(code **)(*piVar11 + 0x38))(uVar4);
          FUN_0098d940();
          FUN_00eaeca8();
          if ((int)local_14 < 0) {
            *(undefined1 *)(iVar3 + 0x1f) = 0;
            *(undefined2 *)(iVar3 + 0x1c) = 0;
            *(undefined4 *)(iVar3 + 0x20) = 0;
            FUN_009024f0();
          }
          if ((int)local_14 < 0) {
            (*(code *)PTR_FUN_01c371b8)();
          }
          FUN_007862a0();
          FUN_00eaeca8();
          iVar13 = (**(code **)(*(int *)(iVar13 + 0x10) + 0x10))();
          if (iVar13 != 0) {
            FUN_0098b370();
          }
          FUN_0099d430(1);
          uVar2 = _UNK_018d373c;
          uVar1 = _UNK_018d3738;
          uVar4 = _UNK_018d3734;
          puVar10 = local_108;
          puVar16 = local_6c;
          for (iVar13 = 6; iVar13 != 0; iVar13 = iVar13 + -1) {
            *puVar16 = *puVar10;
            puVar10 = puVar10 + 1;
            puVar16 = puVar16 + 1;
          }
          if (local_6c[2] <= local_58) {
            puVar9 = (undefined4 *)(local_5c + local_6c[2] * 2);
            if (local_58 - local_6c[2] < 0x10) {
              FUN_0099d6f0();
            }
            else {
              *puVar9 = _DAT_018d3730;
              puVar9[1] = uVar4;
              puVar9[2] = uVar1;
              puVar9[3] = uVar2;
              uVar2 = _UNK_018d374c;
              uVar1 = _UNK_018d3748;
              uVar4 = DAT_018d3744;
              puVar9[4] = _DAT_018d3740;
              puVar9[5] = uVar4;
              puVar9[6] = uVar1;
              puVar9[7] = uVar2;
              local_6c[2] = local_6c[2] + 0x10;
            }
            FUN_00de77e0();
            if (local_6c[2] <= local_58) {
              if (local_58 - local_6c[2] < 2) {
                FUN_0099d6f0();
              }
              else {
                *(undefined4 *)(local_5c + local_6c[2] * 2) = 0xa000d;
                local_6c[2] = local_6c[2] + 2;
              }
              FUN_0099d560();
              FUN_00906aa0(&PTR_DAT_01b4be7c);
              if (PTR_LAB_01c22148 != (undefined *)0x0) {
                FUN_00e8eba9();
              }
              iVar13 = FUN_009d4fe0();
              local_38 = FUN_008f4130(0,*(undefined4 *)(iVar13 + 4),0);
              if ((*(uint *)(local_38 + 0x1c) & 0x1600000) == 0) {
                local_14 = 7;
                *(undefined4 *)(param_1 + 0x28) = 7;
                FUN_00eaecdd();
                FUN_00d95080();
                FUN_00dfc9c0();
                FUN_0078622b();
                FUN_00786257();
                return;
              }
LAB_00785730:
              if ((*(uint *)(local_38 + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
              local_38 = FUN_008f4130(0,*(undefined4 *)(*(int *)(param_1 + 0x1c) + 4),0);
              if ((*(uint *)(local_38 + 0x1c) & 0x1600000) == 0) {
                local_14 = 8;
                *(undefined4 *)(param_1 + 0x28) = 8;
                FUN_00eaecdd();
                FUN_00d95080();
                FUN_00dfc9c0();
                FUN_0078622b();
                FUN_00786257();
                return;
              }
LAB_007856f3:
              if ((*(uint *)(local_38 + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
              FUN_0078622b();
              FUN_00786257();
              goto LAB_00786048;
            }
          }
          goto LAB_00785d4b;
        }
        FUN_00786117();
        FUN_0078622b();
        FUN_00786257();
        goto LAB_00786048;
      }
      iVar3 = FUN_00905af0();
      if ((iVar3 != 0) &&
         ((iVar3 = FUN_00909bb0(5,*(undefined4 *)(iVar5 + 4),0), -1 < iVar3 ||
          (iVar3 = FUN_00909bb0(5,*(undefined4 *)(iVar5 + 4),0), -1 < iVar3)))) {
        iVar13 = (**(code **)(*(int *)(iVar13 + 0x10) + 0x10))();
        if (iVar13 == 0) {
          if (PTR_LAB_01c22148 != (undefined *)0x0) {
            FUN_00e8eba9();
          }
          iVar13 = FUN_009d4fe0();
          local_38 = FUN_008f4130(0,*(undefined4 *)(iVar13 + 4),0);
          if ((*(uint *)(local_38 + 0x1c) & 0x1600000) == 0) {
            local_14 = 9;
            *(undefined4 *)(param_1 + 0x28) = 9;
            FUN_00eaecdd();
            FUN_00d95080();
            FUN_00dfc9c0();
            FUN_0078622b();
            FUN_00786257();
            return;
          }
LAB_007856b6:
          if ((*(uint *)(local_38 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          FUN_0078622b();
          FUN_00786257();
          goto LAB_00786048;
        }
        iVar13 = FUN_0098b370();
        if (iVar13 == 0) {
          if (PTR_LAB_01c22148 != (undefined *)0x0) {
            FUN_00e8eba9();
          }
          iVar13 = FUN_009d4fe0();
          local_38 = FUN_008f4130(0,*(undefined4 *)(iVar13 + 4),0);
          if ((*(uint *)(local_38 + 0x1c) & 0x1600000) == 0) {
            local_14 = 0xd;
            *(undefined4 *)(param_1 + 0x28) = 0xd;
            FUN_00eaecdd();
            FUN_00d95080();
            FUN_00dfc9c0();
            FUN_0078622b();
            FUN_00786257();
            return;
          }
LAB_0078563b:
          if ((*(uint *)(local_38 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
        }
        else {
          *(undefined4 *)(param_1 + 0x2c) = 0;
switchD_00783473_caseD_a:
          if (1 < local_14 - 10) {
            if (PTR_LAB_01c22148 != (undefined *)0x0) {
              FUN_00e8eba9();
            }
            FUN_0098b420();
            local_74 = 0;
            local_70 = 0;
            FUN_00a382f0(0,0);
            FUN_00eaeca8();
          }
          if (local_14 == 10) {
            local_38 = *(int *)(param_1 + 0x38);
            *(undefined4 *)(param_1 + 0x38) = 0;
            local_14 = 0xffffffff;
            *(undefined4 *)(param_1 + 0x28) = 0xffffffff;
LAB_007849c3:
            if ((*(uint *)(local_38 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            local_38 = FUN_008f4130(0,*(undefined4 *)(*(int *)(param_1 + 0x1c) + 4),0);
            if ((*(uint *)(local_38 + 0x1c) & 0x1600000) == 0) {
              local_14 = 0xb;
              *(undefined4 *)(param_1 + 0x28) = 0xb;
              FUN_00eaecdd();
              FUN_00d95080();
              FUN_00dfc9c0();
              FUN_00786158();
              FUN_0078622b();
              FUN_00786257();
              return;
            }
          }
          else {
            if (local_14 != 0xb) {
              iVar13 = FUN_00eae9a0();
              *(undefined4 *)(iVar13 + 0x14) = 0x7fffffff;
              FUN_00eaea6e();
              FUN_00eaebca();
              iVar13 = *(int *)(param_1 + 0x24);
              if (iVar13 == 0) {
                uVar14 = 0;
              }
              else {
                if (*(int *)(iVar13 + 0x18) == 0) {
                    /* WARNING: Subroutine does not return */
                  FUN_00a349e0();
                }
                iVar3 = *(int *)(iVar13 + 0x1c);
                if ((iVar3 == 0) || (*(uint *)(iVar3 + 4) < 8)) goto LAB_00784fb6;
                if (*(int *)(iVar3 + 4) + -8 < 4) {
                    /* WARNING: Subroutine does not return */
                  FUN_00931d90();
                }
                uVar14 = *(uint *)(iVar3 + 0x10) >> 0x1c;
              }
              if (uVar14 != 1) {
                    /* WARNING: Subroutine does not return */
                FUN_00a33cf0();
              }
              local_94[1] = FUN_00a36dd0(0);
              local_94[0] = -1;
              local_94[2] = iVar13;
              local_94[3] = 0;
              piVar11 = local_94;
              piVar15 = local_168;
              for (iVar13 = 4; iVar13 != 0; iVar13 = iVar13 + -1) {
                *piVar15 = *piVar11;
                piVar11 = piVar11 + 1;
                piVar15 = piVar15 + 1;
              }
              piVar11 = local_168;
              piVar15 = local_94 + 4;
              for (iVar13 = 4; iVar13 != 0; iVar13 = iVar13 + -1) {
                *piVar15 = *piVar11;
                piVar11 = piVar11 + 1;
                piVar15 = piVar15 + 1;
              }
              local_94[4] = 0xffffffff;
              while (iVar13 = FUN_00a38ed0(), iVar13 != 0) {
                FUN_00a38eb0();
                if (local_9c == 0) {
                  FUN_00eae9a0();
                  FUN_00928830();
                    /* WARNING: Subroutine does not return */
                  FUN_00eaeefb();
                }
                if (*(int *)(local_9c + 0x18) == 0) {
LAB_00784dbd:
                    /* WARNING: Subroutine does not return */
                  FUN_00a349e0();
                }
                iVar13 = *(int *)(local_9c + 0x1c);
                uVar14 = local_98 + 8;
                if (iVar13 == 0) {
                  if (uVar14 != 0) goto LAB_00784dc3;
                  puVar10 = (uint *)0x0;
                  iVar3 = 0;
                }
                else {
                  if (*(uint *)(iVar13 + 4) < uVar14) goto LAB_00784dc3;
                  puVar10 = (uint *)(iVar13 + 8 + uVar14);
                  iVar3 = *(int *)(iVar13 + 4) - uVar14;
                }
                if (iVar3 < 4) {
LAB_00784dc9:
                    /* WARNING: Subroutine does not return */
                  FUN_00931d90();
                }
                if (*puVar10 >> 0x1c != 1) {
                    /* WARNING: Subroutine does not return */
                  FUN_00a33cf0();
                }
                if (*(int *)(local_9c + 0x18) == 0) goto LAB_00784dbd;
                if (iVar13 == 0) {
                  if (local_98 != 0) goto LAB_00784dc3;
                  iVar3 = 0;
                  iVar13 = 0;
                }
                else {
                  if (*(uint *)(iVar13 + 4) < local_98) {
LAB_00784dc3:
                    /* WARNING: Subroutine does not return */
                    FUN_009318f0();
                  }
                  iVar3 = iVar13 + 8 + local_98;
                  iVar13 = *(int *)(iVar13 + 4) - local_98;
                }
                if (iVar13 < 0xc) goto LAB_00784dc9;
                if (*(uint *)(iVar3 + 8) >> 0x1c < 5) {
                  local_94[1] = local_98 + (*(uint *)(iVar3 + 8) & 0xfffffff) * 0xc;
                }
                else {
                  local_94[1] = local_98 + 0xc;
                }
                local_94[0] = -1;
                local_94[2] = local_9c;
                local_94[3] = local_98;
                while (iVar13 = FUN_00a38ed0(), iVar13 != 0) {
                  FUN_00a38eb0();
                  iVar13 = local_a4;
                  iVar3 = FUN_00a36fb0(5);
                  if (iVar3 != 0) {
                    FUN_00978480(*(undefined4 *)(iVar3 + 4));
                  }
                  FUN_00978480(1);
                  if (iVar13 == 0) {
                    FUN_00eae9a0();
                    FUN_00928830();
                    /* WARNING: Subroutine does not return */
                    FUN_00eaeefb();
                  }
                  iVar13 = FUN_00a36fb0(5);
                  if (iVar13 != 0) {
                    FUN_00978480(*(undefined4 *)(iVar13 + 4));
                  }
                  FUN_00978480(4);
                  iVar13 = FUN_00a36fb0(7);
                  if (iVar13 != 0) {
                    FUN_00978480(*(undefined4 *)(iVar13 + 4));
                  }
                  FUN_00978480(4);
                }
                if ((int)local_14 < 0) {
                  local_94[0] = local_94[1];
                }
              }
              if ((int)local_14 < 0) {
                local_94[4] = local_94[5];
              }
              if (PTR_LAB_01c22148 != (undefined *)0x0) {
                FUN_00e8eba9();
              }
              FUN_00977000();
              FUN_009d4fe0();
              FUN_00eaeca8();
              FUN_0099d430(1);
              uVar2 = _UNK_018d373c;
              uVar1 = _UNK_018d3738;
              uVar4 = _UNK_018d3734;
              puVar10 = local_150;
              puVar16 = local_bc;
              for (iVar13 = 6; iVar13 != 0; iVar13 = iVar13 + -1) {
                *puVar16 = *puVar10;
                puVar10 = puVar10 + 1;
                puVar16 = puVar16 + 1;
              }
              if (local_a8 < local_bc[2]) {
LAB_00784fb6:
                    /* WARNING: Subroutine does not return */
                FUN_009318f0();
              }
              puVar9 = (undefined4 *)(local_ac + local_bc[2] * 2);
              if (local_a8 - local_bc[2] < 0x10) {
                FUN_0099d6f0();
              }
              else {
                *puVar9 = _DAT_018d3730;
                puVar9[1] = uVar4;
                puVar9[2] = uVar1;
                puVar9[3] = uVar2;
                uVar2 = _UNK_018d374c;
                uVar1 = _UNK_018d3748;
                uVar4 = DAT_018d3744;
                puVar9[4] = _DAT_018d3740;
                puVar9[5] = uVar4;
                puVar9[6] = uVar1;
                puVar9[7] = uVar2;
                local_bc[2] = local_bc[2] + 0x10;
              }
              FUN_00de77e0();
              if (local_a8 < local_bc[2]) goto LAB_00784fb6;
              if (local_a8 - local_bc[2] < 2) {
                FUN_0099d6f0();
              }
              else {
                *(undefined4 *)(local_ac + local_bc[2] * 2) = 0xa000d;
                local_bc[2] = local_bc[2] + 2;
              }
              FUN_0099d560();
              FUN_00906aa0(&PTR_DAT_01b4be7c);
              iVar13 = FUN_009d4fe0();
              local_38 = FUN_008f4130(0,*(undefined4 *)(iVar13 + 4),0);
              if ((*(uint *)(local_38 + 0x1c) & 0x1600000) == 0) {
                local_14 = 10;
                *(undefined4 *)(param_1 + 0x28) = 10;
                FUN_00eaecdd();
                FUN_00d95080();
                FUN_00dfc9c0();
                FUN_00786158();
                FUN_0078622b();
                FUN_00786257();
                return;
              }
              goto LAB_007849c3;
            }
            local_38 = *(int *)(param_1 + 0x38);
            *(undefined4 *)(param_1 + 0x38) = 0;
            local_14 = 0xffffffff;
            *(undefined4 *)(param_1 + 0x28) = 0xffffffff;
          }
          if ((*(uint *)(local_38 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          if (((int)local_14 < 0) && (*(int *)(param_1 + 0x24) != 0)) {
            FUN_00a36c70();
          }
          *(undefined4 *)(param_1 + 0x24) = 0;
          *(undefined4 *)(param_1 + 0x1c) = 0;
          if (*(int *)(param_1 + 0x2c) == 1) {
                    /* WARNING: Subroutine does not return */
            FUN_0099ace0();
          }
LAB_00785693:
          *(undefined4 *)(param_1 + 0x20) = 0;
        }
        FUN_0078622b();
        FUN_00786257();
        goto LAB_00786048;
      }
      iVar3 = FUN_00905af0();
      if ((iVar3 != 0) &&
         (((iVar3 = FUN_00909bb0(5,*(undefined4 *)(iVar5 + 4),0), -1 < iVar3 ||
           (iVar3 = FUN_00909bb0(5,*(undefined4 *)(iVar5 + 4),0), -1 < iVar3)) ||
          (iVar3 = FUN_00909bb0(5,*(undefined4 *)(iVar5 + 4),0), -1 < iVar3)))) {
        iVar13 = (**(code **)(*(int *)(iVar13 + 0x10) + 0x10))();
        if (iVar13 == 0) {
          if (PTR_LAB_01c22148 != (undefined *)0x0) {
            FUN_00e8eba9();
          }
          iVar13 = FUN_009d4fe0();
          local_38 = FUN_008f4130(0,*(undefined4 *)(iVar13 + 4),0);
          if ((*(uint *)(local_38 + 0x1c) & 0x1600000) == 0) {
            local_14 = 0xe;
            *(undefined4 *)(param_1 + 0x28) = 0xe;
            FUN_00eaecdd();
            FUN_00d95080();
            FUN_00dfc9c0();
            FUN_0078622b();
            FUN_00786257();
            return;
          }
LAB_007855fe:
          if ((*(uint *)(local_38 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          FUN_0078622b();
          FUN_00786257();
          goto LAB_00786048;
        }
        FUN_00911390();
        FUN_008feb40();
        FUN_0098e190(&PTR_DAT_01be4ab8);
        iVar13 = FUN_0098b370();
        if (iVar13 == 0) {
          local_2c = 0;
          ppuStack_28 = (undefined **)0x0;
          local_1c = (undefined **)0x0;
          local_18 = (undefined **)0x0;
          ppuStack_24 = (undefined **)local_2c;
          ppuStack_20 = ppuStack_28;
          FUN_00911390();
          local_2c = FUN_008feb40();
          ppuStack_28 = &PTR_DAT_01b43104;
          ppuStack_24 = &PTR_DAT_01b43104;
          ppuStack_20 = &PTR_DAT_01b43104;
          local_1c = &PTR_DAT_01b50200;
          local_18 = &PTR_DAT_01be4ab8;
          FUN_00e393a0(&PTR_PTR_015572f4,6);
          FUN_0098e1e0(local_f0,local_ec);
        }
        iVar13 = FUN_0098b370();
        if (iVar13 == 0) {
          if (PTR_LAB_01c22148 != (undefined *)0x0) {
            FUN_00e8eba9();
          }
          iVar13 = FUN_009d4fe0();
          local_194 = 0;
          local_38 = FUN_008f4130(0,*(undefined4 *)(iVar13 + 4),0);
          if ((*(uint *)(local_38 + 0x1c) & 0x1600000) == 0) {
            local_14 = 0x13;
            *(undefined4 *)(param_1 + 0x28) = 0x13;
            FUN_00eaecdd();
            FUN_00d95080();
            FUN_00dfc9c0();
            FUN_0078622b();
            FUN_00786257();
            return;
          }
LAB_00785578:
          if ((*(uint *)(local_38 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
        }
        else {
          *(undefined4 *)(param_1 + 0x2c) = 0;
LAB_0078401b:
          if (local_14 == 0xf) {
            local_c0 = *(int *)(param_1 + 0x40);
            *(undefined4 *)(param_1 + 0x40) = 0;
            local_14 = 0xffffffff;
            *(undefined4 *)(param_1 + 0x28) = 0xffffffff;
LAB_0078403d:
            if ((*(uint *)(local_c0 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            local_74 = 0;
            local_70 = 0;
            FUN_00a382f0(0,0);
            FUN_00eaeca8();
          }
          else if (1 < local_14 - 0x10) {
            if (PTR_LAB_01c22148 != (undefined *)0x0) {
              FUN_00e8eba9();
            }
            local_c0 = FUN_0098b580(0);
            if ((*(uint *)(local_c0 + 0x1c) & 0x1600000) == 0) {
              local_14 = 0xf;
              *(undefined4 *)(param_1 + 0x28) = 0xf;
              FUN_00eaecdd();
              FUN_00d95080();
              FUN_00dfca00(&PTR_DAT_01557398);
              FUN_0078622b();
              FUN_00786257();
              return;
            }
            goto LAB_0078403d;
          }
          if (local_14 == 0x10) {
            local_38 = *(int *)(param_1 + 0x38);
            *(undefined4 *)(param_1 + 0x38) = 0;
            local_14 = 0xffffffff;
            *(undefined4 *)(param_1 + 0x28) = 0xffffffff;
LAB_0078412c:
            if ((*(uint *)(local_38 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            local_18c = 0;
            local_38 = FUN_008f4130(0,*(undefined4 *)(*(int *)(param_1 + 0x1c) + 4),0);
            if ((*(uint *)(local_38 + 0x1c) & 0x1600000) == 0) {
              local_14 = 0x11;
              *(undefined4 *)(param_1 + 0x28) = 0x11;
              FUN_00eaecdd();
              FUN_00d95080();
              FUN_00dfc9c0();
              FUN_0078619d();
              FUN_0078622b();
              FUN_00786257();
              return;
            }
          }
          else {
            if (local_14 != 0x11) {
              iVar13 = FUN_00eae9a0();
              *(undefined4 *)(iVar13 + 0x14) = 0x7fffffff;
              FUN_00eaea6e();
              FUN_00eaebca();
              iVar13 = *(int *)(param_1 + 0x24);
              if (iVar13 == 0) {
                uVar14 = 0;
              }
              else {
                if (*(int *)(iVar13 + 0x18) == 0) {
                    /* WARNING: Subroutine does not return */
                  FUN_00a349e0();
                }
                iVar3 = *(int *)(iVar13 + 0x1c);
                if ((iVar3 == 0) || (*(uint *)(iVar3 + 4) < 8)) goto LAB_0078470e;
                if (*(int *)(iVar3 + 4) + -8 < 4) {
                    /* WARNING: Subroutine does not return */
                  FUN_00931d90();
                }
                uVar14 = *(uint *)(iVar3 + 0x10) >> 0x1c;
              }
              if (uVar14 != 1) {
                    /* WARNING: Subroutine does not return */
                FUN_00a33cf0();
              }
              local_94[1] = FUN_00a36dd0(0);
              local_94[0] = -1;
              local_94[2] = iVar13;
              local_94[3] = 0;
              piVar11 = local_94;
              piVar15 = local_178;
              for (iVar13 = 4; iVar13 != 0; iVar13 = iVar13 + -1) {
                *piVar15 = *piVar11;
                piVar11 = piVar11 + 1;
                piVar15 = piVar15 + 1;
              }
              piVar11 = local_178;
              piVar15 = local_94 + 4;
              for (iVar13 = 4; iVar13 != 0; iVar13 = iVar13 + -1) {
                *piVar15 = *piVar11;
                piVar11 = piVar11 + 1;
                piVar15 = piVar15 + 1;
              }
              local_94[4] = 0xffffffff;
              while (iVar13 = FUN_00a38ed0(), iVar13 != 0) {
                FUN_00a38eb0();
                iVar3 = local_c4;
                iVar13 = local_c8;
                if (local_c8 != 0) {
                  if (*(int *)(local_c8 + 0x18) == 0) {
                    /* WARNING: Subroutine does not return */
                    FUN_00a349e0();
                  }
                  iVar5 = *(int *)(local_c8 + 0x1c);
                  uVar14 = local_c4 + 8;
                  if (iVar5 == 0) {
                    if (uVar14 != 0) goto LAB_0078451a;
                    iVar5 = 0;
                  }
                  else {
                    if (*(uint *)(iVar5 + 4) < uVar14) goto LAB_0078451a;
                    iVar5 = *(int *)(iVar5 + 4) - uVar14;
                  }
                  if (iVar5 < 4) {
                    /* WARNING: Subroutine does not return */
                    FUN_00931d90();
                  }
                }
                iVar5 = FUN_00a393f0();
                if (iVar5 == 3) {
                  if (iVar13 == 0) {
                    FUN_00eae9a0();
                    FUN_00928830();
                    /* WARNING: Subroutine does not return */
                    FUN_00eaeefb();
                  }
                  iVar13 = FUN_00a36fb0(5);
                  if (iVar13 != 0) {
                    FUN_00978480(*(undefined4 *)(iVar13 + 4));
                  }
                  FUN_00978480(4);
                  iVar13 = FUN_00a36fb0(7);
                  if (iVar13 == 0) {
                    iVar13 = 0;
                  }
                  else {
                    iVar13 = FUN_00908120(&PTR_DAT_01b39360);
                  }
                  if (iVar13 != 0) {
                    FUN_00978480(*(undefined4 *)(iVar13 + 4));
                  }
                }
                else {
                  if (iVar13 == 0) {
                    FUN_00eae9a0();
                    FUN_00928830();
                    /* WARNING: Subroutine does not return */
                    FUN_00eaeefb();
                  }
                  iVar13 = FUN_00a36fb0(5);
                  if (iVar13 != 0) {
                    FUN_00978480(*(undefined4 *)(iVar13 + 4));
                  }
                  FUN_00978480(4);
                  FUN_00a36e50(1,iVar3);
                  iVar13 = 0;
                  uVar14 = 0;
                  if (local_184 != (undefined4 *)0x0) {
                    if (*(int *)*local_184 < 0) {
                      puVar9 = local_184 + 2;
                      uVar14 = local_184[1];
                    }
                    else {
                      if ((undefined *)*local_184 == &DAT_01728b34) {
                        puVar9 = (undefined4 *)local_184[1];
                        uVar14 = local_184[2];
                      }
                      else {
                        puVar9 = (undefined4 *)local_184[1];
                        uVar14 = local_184[2];
                      }
                      if ((int)uVar14 < 0) goto LAB_0078451a;
                    }
                    uVar12 = local_180 & 0x7fffffff;
                    if ((uVar14 < uVar12) || (uVar14 - uVar12 < local_17c)) {
LAB_0078451a:
                    /* WARNING: Subroutine does not return */
                      FUN_009318f0();
                    }
                    iVar13 = (int)puVar9 + uVar12;
                    uVar14 = local_17c;
                  }
                  FUN_00a397c0(iVar13,uVar14);
                  iVar13 = FUN_00908120(&PTR_DAT_01b39360);
                  if (iVar13 != 0) {
                    FUN_00978480(*(undefined4 *)(iVar13 + 4));
                  }
                }
                FUN_00978480(4);
              }
              if ((int)local_14 < 0) {
                local_94[4] = local_94[5];
              }
              if (PTR_LAB_01c22148 != (undefined *)0x0) {
                FUN_00e8eba9();
              }
              FUN_00977000();
              FUN_009d4fe0();
              FUN_00eaeca8();
              FUN_0099d430(1);
              uVar2 = _UNK_018d373c;
              uVar1 = _UNK_018d3738;
              uVar4 = _UNK_018d3734;
              puVar10 = local_138;
              puVar16 = local_e0;
              for (iVar13 = 6; iVar13 != 0; iVar13 = iVar13 + -1) {
                *puVar16 = *puVar10;
                puVar10 = puVar10 + 1;
                puVar16 = puVar16 + 1;
              }
              if (local_cc < local_e0[2]) {
LAB_0078470e:
                    /* WARNING: Subroutine does not return */
                FUN_009318f0();
              }
              puVar9 = (undefined4 *)(local_d0 + local_e0[2] * 2);
              if (local_cc - local_e0[2] < 0x10) {
                FUN_0099d6f0();
              }
              else {
                *puVar9 = _DAT_018d3730;
                puVar9[1] = uVar4;
                puVar9[2] = uVar1;
                puVar9[3] = uVar2;
                uVar2 = _UNK_018d374c;
                uVar1 = _UNK_018d3748;
                uVar4 = DAT_018d3744;
                puVar9[4] = _DAT_018d3740;
                puVar9[5] = uVar4;
                puVar9[6] = uVar1;
                puVar9[7] = uVar2;
                local_e0[2] = local_e0[2] + 0x10;
              }
              FUN_00de77e0();
              if (local_cc < local_e0[2]) goto LAB_0078470e;
              if (local_cc - local_e0[2] < 2) {
                FUN_0099d6f0();
              }
              else {
                *(undefined4 *)(local_d0 + local_e0[2] * 2) = 0xa000d;
                local_e0[2] = local_e0[2] + 2;
              }
              FUN_0099d560();
              FUN_00906aa0(&PTR_DAT_01b4be7c);
              iVar13 = FUN_009d4fe0();
              local_188 = 0;
              local_38 = FUN_008f4130(0,*(undefined4 *)(iVar13 + 4),0);
              if ((*(uint *)(local_38 + 0x1c) & 0x1600000) == 0) {
                local_14 = 0x10;
                *(undefined4 *)(param_1 + 0x28) = 0x10;
                FUN_00eaecdd();
                FUN_00d95080();
                FUN_00dfc9c0();
                FUN_0078619d();
                FUN_0078622b();
                FUN_00786257();
                return;
              }
              goto LAB_0078412c;
            }
            local_38 = *(int *)(param_1 + 0x38);
            *(undefined4 *)(param_1 + 0x38) = 0;
            local_14 = 0xffffffff;
            *(undefined4 *)(param_1 + 0x28) = 0xffffffff;
          }
          if ((*(uint *)(local_38 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          if (((int)local_14 < 0) && (*(int *)(param_1 + 0x24) != 0)) {
            FUN_00a36c70();
          }
          *(undefined4 *)(param_1 + 0x24) = 0;
          *(undefined4 *)(param_1 + 0x1c) = 0;
          if (*(int *)(param_1 + 0x2c) == 1) {
                    /* WARNING: Subroutine does not return */
            FUN_0099ace0();
          }
LAB_007855d0:
          *(undefined4 *)(param_1 + 0x20) = 0;
        }
        FUN_0078622b();
        FUN_00786257();
        goto LAB_00786048;
      }
      local_e4 = 0x50;
      local_198 = 0x20;
      local_1a0 = &local_198;
      local_19c = 1;
      iVar13 = FUN_00908570(0,local_1a0,1);
      if (1 < *(int *)(iVar13 + 4)) {
        if (*(uint *)(iVar13 + 4) < 2) {
                    /* WARNING: Subroutine does not return */
          FUN_009c2bf0();
        }
        iVar13 = *(int *)(iVar13 + 0xc);
        if ((3 < *(int *)(iVar13 + 4)) &&
           ((*(uint *)(iVar13 + 0xc) | 0x200020) == 0x700074 &&
            (*(uint *)(iVar13 + 8) | 0x200020) == 0x740068)) {
          FUN_00eae9a0();
          FUN_009ffe20();
          FUN_00a00880();
          local_e4 = FUN_00a00bc0();
        }
      }
      local_e8 = local_e4;
      for (uVar14 = 0; (int)uVar14 < *(int *)(iVar6 + 4); uVar14 = uVar14 + 1) {
        if (*(uint *)(iVar6 + 4) <= uVar14) goto LAB_00785d51;
        iVar13 = FUN_00905b10(0);
        if (iVar13 == 0) {
          if (*(uint *)(iVar6 + 4) <= uVar14) goto LAB_00785d51;
          iVar13 = FUN_00905b10(0);
          if (iVar13 != 0) goto LAB_00783a25;
          if (*(uint *)(iVar6 + 4) <= uVar14) goto LAB_00785d51;
          iVar13 = *(int *)(iVar6 + 8 + uVar14 * 4);
          if ((*(int *)(iVar13 + 4) < 6) ||
             (*(int *)(iVar13 + 0x10) != 0x20003a ||
              ((*(uint *)(iVar13 + 0xc) | 0x200020) != 0x740073 ||
              (*(uint *)(iVar13 + 8) | 0x200020) != 0x6f0068))) {
            iVar13 = FUN_00905b10(5);
            if (iVar13 != 0) {
              if (*(uint *)(iVar6 + 4) <= uVar14) goto LAB_00785d51;
              FUN_00909650();
              FUN_00906a20();
              if (*(uint *)(iVar6 + 4) <= uVar14) goto LAB_00785d51;
              FUN_00eaebca();
            }
            goto LAB_007837ae;
          }
          FUN_00909650();
          ppuVar8 = (undefined **)FUN_009097a0();
          iVar13 = FUN_00909ad0();
          if (iVar13 != 0) {
            local_1a4 = 0x3a;
            iVar13 = FUN_00908570(0,&local_1a4,1);
            if ((*(int *)(iVar13 + 4) == 0) ||
               (ppuVar8 = *(undefined ***)(iVar13 + 8), *(uint *)(iVar13 + 4) < 2))
            goto LAB_00785d51;
            iVar13 = *(int *)(iVar13 + 0xc);
            if (iVar13 == 0) {
              local_e8 = 0;
            }
            else {
              iVar3 = iVar13 + 8;
              uVar4 = *(undefined4 *)(iVar13 + 4);
              FUN_00958ea0(iVar3,uVar4);
              FUN_00dd21c0(&local_e8,iVar3,uVar4);
            }
          }
          if (ppuVar8 != &PTR_DAT_01b45e94) {
            if ((ppuVar8 != (undefined **)0x0) && (ppuVar8[1] == (undefined *)0x9)) {
              auVar18._0_4_ =
                   -(uint)(ppuVar8[2] == _DAT_018d36e0 &&
                          *(int *)((int)ppuVar8 + 10) == _DAT_018d36f0);
              auVar18._4_4_ =
                   -(uint)(ppuVar8[3] == _UNK_018d36e4 &&
                          *(int *)((int)ppuVar8 + 0xe) == _UNK_018d36f4);
              auVar18._8_4_ =
                   -(uint)(ppuVar8[4] == _UNK_018d36e8 &&
                          *(int *)((int)ppuVar8 + 0x12) == _UNK_018d36f8);
              auVar18._12_4_ =
                   -(uint)(ppuVar8[5] == _UNK_018d36ec &&
                          *(int *)((int)ppuVar8 + 0x16) == _UNK_018d36fc);
              if ((ushort)((ushort)(SUB161(auVar18 >> 7,0) & 1) |
                           (ushort)(SUB161(auVar18 >> 0xf,0) & 1) << 1 |
                           (ushort)(SUB161(auVar18 >> 0x17,0) & 1) << 2 |
                           (ushort)(SUB161(auVar18 >> 0x1f,0) & 1) << 3 |
                           (ushort)(SUB161(auVar18 >> 0x27,0) & 1) << 4 |
                           (ushort)(SUB161(auVar18 >> 0x2f,0) & 1) << 5 |
                           (ushort)(SUB161(auVar18 >> 0x37,0) & 1) << 6 |
                           (ushort)(SUB161(auVar18 >> 0x3f,0) & 1) << 7 |
                           (ushort)(SUB161(auVar18 >> 0x47,0) & 1) << 8 |
                           (ushort)(SUB161(auVar18 >> 0x4f,0) & 1) << 9 |
                           (ushort)(SUB161(auVar18 >> 0x57,0) & 1) << 10 |
                           (ushort)(SUB161(auVar18 >> 0x5f,0) & 1) << 0xb |
                           (ushort)((byte)(auVar18._12_4_ >> 7) & 1) << 0xc |
                           (ushort)((byte)(auVar18._12_4_ >> 0xf) & 1) << 0xd |
                           (ushort)((byte)(auVar18._12_4_ >> 0x17) & 1) << 0xe |
                          (ushort)(byte)(auVar18._12_4_ >> 0x1f) << 0xf) == 0xffff)
              goto LAB_007839e6;
            }
            if (ppuVar8 != &PTR_DAT_01beb248) {
              if ((ppuVar8 != (undefined **)0x0) && (ppuVar8[1] == (undefined *)0x9)) {
                auVar19._0_4_ =
                     -(uint)(ppuVar8[2] == _DAT_018d3700 &&
                            *(int *)((int)ppuVar8 + 10) == _DAT_018d3710);
                auVar19._4_4_ =
                     -(uint)(ppuVar8[3] == _UNK_018d3704 &&
                            *(int *)((int)ppuVar8 + 0xe) == _UNK_018d3714);
                auVar19._8_4_ =
                     -(uint)(ppuVar8[4] == _UNK_018d3708 &&
                            *(int *)((int)ppuVar8 + 0x12) == _UNK_018d3718);
                auVar19._12_4_ =
                     -(uint)(ppuVar8[5] == _UNK_018d370c &&
                            *(int *)((int)ppuVar8 + 0x16) == _UNK_018d371c);
                if ((ushort)((ushort)(SUB161(auVar19 >> 7,0) & 1) |
                             (ushort)(SUB161(auVar19 >> 0xf,0) & 1) << 1 |
                             (ushort)(SUB161(auVar19 >> 0x17,0) & 1) << 2 |
                             (ushort)(SUB161(auVar19 >> 0x1f,0) & 1) << 3 |
                             (ushort)(SUB161(auVar19 >> 0x27,0) & 1) << 4 |
                             (ushort)(SUB161(auVar19 >> 0x2f,0) & 1) << 5 |
                             (ushort)(SUB161(auVar19 >> 0x37,0) & 1) << 6 |
                             (ushort)(SUB161(auVar19 >> 0x3f,0) & 1) << 7 |
                             (ushort)(SUB161(auVar19 >> 0x47,0) & 1) << 8 |
                             (ushort)(SUB161(auVar19 >> 0x4f,0) & 1) << 9 |
                             (ushort)(SUB161(auVar19 >> 0x57,0) & 1) << 10 |
                             (ushort)(SUB161(auVar19 >> 0x5f,0) & 1) << 0xb |
                             (ushort)((byte)(auVar19._12_4_ >> 7) & 1) << 0xc |
                             (ushort)((byte)(auVar19._12_4_ >> 0xf) & 1) << 0xd |
                             (ushort)((byte)(auVar19._12_4_ >> 0x17) & 1) << 0xe |
                            (ushort)(byte)(auVar19._12_4_ >> 0x1f) << 0xf) == 0xffff)
                goto LAB_007839e6;
              }
              goto LAB_007837ae;
            }
          }
LAB_007839e6:
          local_e8 = local_e4;
          FUN_00906a20();
          if (*(uint *)(iVar6 + 4) <= uVar14) {
LAB_00785d51:
                    /* WARNING: Subroutine does not return */
            FUN_009c2bf0();
          }
          FUN_00eaebca();
        }
        else {
LAB_00783a25:
          if (*(uint *)(iVar6 + 4) <= uVar14) goto LAB_00785d51;
          iVar13 = *(int *)(iVar6 + 8 + uVar14 * 4);
          iVar3 = FUN_00909bb0(0,*(undefined4 *)(iVar13 + 4),0);
          iVar13 = FUN_00909bb0(0,*(int *)(iVar13 + 4) - (iVar3 + 3),iVar3 + 3);
          if (iVar13 != -1) {
            if (*(uint *)(iVar6 + 4) <= uVar14) goto LAB_00785d51;
            uVar4 = FUN_00909bb0(0,*(undefined4 *)(*(int *)(iVar6 + 8 + uVar14 * 4) + 4),0);
            FUN_00909690(uVar4);
            if (*(uint *)(iVar6 + 4) <= uVar14) goto LAB_00785d51;
            uVar4 = FUN_00909650();
            FUN_00906aa0(uVar4);
            if (*(uint *)(iVar6 + 4) <= uVar14) goto LAB_00785d51;
            FUN_00eaebca();
          }
        }
LAB_007837ae:
      }
      FUN_009074e0();
      if (PTR_LAB_01c22128 != (undefined *)0x0) {
        FUN_00e8eb21();
      }
      FUN_0097d6e0();
      FUN_00eaeca8();
      FUN_00eae9ce();
      FUN_008fa160();
      FUN_00eaed12();
switchD_00783473_caseD_14:
      if (local_14 == 0x14) {
        local_38 = *(int *)(param_1 + 0x38);
        *(undefined4 *)(param_1 + 0x38) = 0;
        local_14 = 0xffffffff;
        *(undefined4 *)(param_1 + 0x28) = 0xffffffff;
LAB_00783b78:
        if ((*(uint *)(local_38 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        FUN_008fa1f0();
        FUN_00eaeca8();
      }
      else if (2 < local_14 - 0x15) {
        FUN_008f6da0(local_e8);
        local_38 = FUN_008fa1b0();
        if ((*(uint *)(local_38 + 0x1c) & 0x1600000) == 0) {
          local_14 = 0x14;
          *(undefined4 *)(param_1 + 0x28) = 0x14;
          FUN_00eaecdd();
          FUN_00d95080();
          FUN_00dfc9c0();
          FUN_00786208();
          FUN_0078622b();
          FUN_00786257();
          return;
        }
        goto LAB_00783b78;
      }
      switch(local_14) {
      case 0x15:
        local_38 = *(int *)(param_1 + 0x38);
        *(undefined4 *)(param_1 + 0x38) = 0;
        local_14 = 0xffffffff;
        *(undefined4 *)(param_1 + 0x28) = 0xffffffff;
        break;
      case 0x16:
        local_38 = *(int *)(param_1 + 0x38);
        *(undefined4 *)(param_1 + 0x38) = 0;
        local_14 = 0xffffffff;
        *(undefined4 *)(param_1 + 0x28) = 0xffffffff;
        goto LAB_00783c99;
      case 0x17:
        local_3c = *(int *)(param_1 + 0x3c);
        *(undefined4 *)(param_1 + 0x3c) = 0;
        local_14 = 0xffffffff;
        *(undefined4 *)(param_1 + 0x28) = 0xffffffff;
        goto LAB_00783c5b;
      default:
        local_38 = FUN_008f4130(0,*(undefined4 *)(*(int *)(param_1 + 0x1c) + 4),0);
        if ((*(uint *)(local_38 + 0x1c) & 0x1600000) == 0) {
          local_14 = 0x15;
          *(undefined4 *)(param_1 + 0x28) = 0x15;
          FUN_00eaecdd();
          FUN_00d95080();
          FUN_00dfc9c0();
          FUN_007861dc();
          FUN_00786208();
          FUN_0078622b();
          FUN_00786257();
          return;
        }
      }
      if ((*(uint *)(local_38 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      if (PTR_FUN_01c22110 != (undefined *)0x0) {
        FUN_00e8eaee();
      }
      local_38 = *(int *)(DAT_01c28f00 + 0x10);
      if ((*(uint *)(local_38 + 0x1c) & 0x1600000) == 0) {
        local_14 = 0x16;
        *(undefined4 *)(param_1 + 0x28) = 0x16;
        FUN_00eaecdd();
        FUN_00d95080();
        FUN_00dfc9c0();
        FUN_007861dc();
        FUN_00786208();
        FUN_0078622b();
        FUN_00786257();
        return;
      }
LAB_00783c99:
      if ((*(uint *)(local_38 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      uVar4 = FUN_009892a0();
      FUN_00989220(0,uVar4);
      uVar4 = FUN_009892a0();
      FUN_00989220(0,uVar4);
      local_3c = FUN_00e52a00(&PTR_DAT_0154b700);
      if ((*(uint *)(local_3c + 0x1c) & 0x1600000) == 0) {
        local_14 = 0x17;
        *(undefined4 *)(param_1 + 0x28) = 0x17;
        FUN_00eaecdd();
        FUN_00d95080();
        FUN_00dfca00(&PTR_DAT_0155c204);
        FUN_007861dc();
        FUN_00786208();
        FUN_0078622b();
        FUN_00786257();
        return;
      }
LAB_00783c5b:
      if ((*(uint *)(local_3c + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      if (((int)local_14 < 0) && (*(int *)(param_1 + 0x18) != 0)) {
        FUN_008f3b90();
        FUN_009024f0();
      }
      *(undefined4 *)(param_1 + 0x18) = 0;
      if (((int)local_14 < 0) && (*(int *)(param_1 + 0x14) != 0)) {
        FUN_008fa280();
      }
      *(undefined4 *)(param_1 + 0x14) = 0;
    }
    else {
      FUN_0099d430(1);
      uVar2 = _UNK_018d373c;
      uVar1 = _UNK_018d3738;
      uVar4 = _UNK_018d3734;
      puVar10 = local_120;
      puVar16 = local_54;
      for (iVar13 = 6; iVar13 != 0; iVar13 = iVar13 + -1) {
        *puVar16 = *puVar10;
        puVar10 = puVar10 + 1;
        puVar16 = puVar16 + 1;
      }
      if (local_40 < local_54[2]) {
LAB_00785d4b:
                    /* WARNING: Subroutine does not return */
        FUN_009318f0();
      }
      puVar9 = (undefined4 *)(local_44 + local_54[2] * 2);
      if (local_40 - local_54[2] < 0x10) {
        FUN_0099d6f0();
      }
      else {
        *puVar9 = _DAT_018d3730;
        puVar9[1] = uVar4;
        puVar9[2] = uVar1;
        puVar9[3] = uVar2;
        uVar2 = _UNK_018d374c;
        uVar1 = _UNK_018d3748;
        uVar4 = DAT_018d3744;
        puVar9[4] = _DAT_018d3740;
        puVar9[5] = uVar4;
        puVar9[6] = uVar1;
        puVar9[7] = uVar2;
        local_54[2] = local_54[2] + 0x10;
      }
      FUN_00de77e0();
      if (local_40 < local_54[2]) goto LAB_00785d4b;
      if (local_40 - local_54[2] < 2) {
        FUN_0099d6f0();
      }
      else {
        *(undefined4 *)(local_44 + local_54[2] * 2) = 0xa000d;
        local_54[2] = local_54[2] + 2;
      }
      FUN_0099d560();
      FUN_00906aa0(&PTR_DAT_01b607c8);
      if (PTR_LAB_01c22148 != (undefined *)0x0) {
        FUN_00e8eba9();
      }
      iVar13 = FUN_009d4fe0();
      FUN_009d4fe0();
      FUN_00eaeca8();
      local_38 = FUN_008f4130(0,*(undefined4 *)(iVar13 + 4),0);
      if ((*(uint *)(local_38 + 0x1c) & 0x1600000) == 0) {
        local_14 = 5;
        *(undefined4 *)(param_1 + 0x28) = 5;
        FUN_00eaecdd();
        FUN_00d95080();
        FUN_00dfc9c0();
        FUN_0078622b();
        FUN_00786257();
        return;
      }
LAB_00785827:
      if ((*(uint *)(local_38 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      local_38 = FUN_008f4130(0,*(undefined4 *)(*(int *)(param_1 + 0x1c) + 4),0);
      if ((*(uint *)(local_38 + 0x1c) & 0x1600000) == 0) {
        local_14 = 6;
        *(undefined4 *)(param_1 + 0x28) = 6;
        FUN_00eaecdd();
        FUN_00d95080();
        FUN_00dfc9c0();
        FUN_0078622b();
        FUN_00786257();
        return;
      }
LAB_007857c4:
      if ((*(uint *)(local_38 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
    }
    *(undefined4 *)(param_1 + 0x1c) = 0;
    *(undefined4 *)(param_1 + 0x10) = 0;
    if (((int)local_14 < 0) && (*(int *)(param_1 + 0xc) != 0)) {
      FUN_008f3b90();
      FUN_009024f0();
    }
    *(undefined4 *)(param_1 + 0xc) = 0;
    if (((int)local_14 < 0) && (*(int *)(param_1 + 8) != 0)) {
      FUN_008fa280();
    }
    *(undefined4 *)(param_1 + 8) = 0;
    goto LAB_00786048;
  }
  auVar17._0_4_ = -(uint)((*(uint *)(iVar5 + 8) | _DAT_018d36c0) == _DAT_018d36d0);
  auVar17._4_4_ = -(uint)((*(uint *)(iVar5 + 0xc) | _UNK_018d36c4) == _UNK_018d36d4);
  auVar17._8_4_ = -(uint)((*(uint *)(iVar5 + 0x10) | DAT_018d36c8) == _UNK_018d36d8);
  auVar17._12_4_ = -(uint)((*(uint *)(iVar5 + 0x14) | _UNK_018d36cc) == _UNK_018d36dc);
  if ((ushort)((ushort)(SUB161(auVar17 >> 7,0) & 1) | (ushort)(SUB161(auVar17 >> 0xf,0) & 1) << 1 |
               (ushort)(SUB161(auVar17 >> 0x17,0) & 1) << 2 |
               (ushort)(SUB161(auVar17 >> 0x1f,0) & 1) << 3 |
               (ushort)(SUB161(auVar17 >> 0x27,0) & 1) << 4 |
               (ushort)(SUB161(auVar17 >> 0x2f,0) & 1) << 5 |
               (ushort)(SUB161(auVar17 >> 0x37,0) & 1) << 6 |
               (ushort)(SUB161(auVar17 >> 0x3f,0) & 1) << 7 |
               (ushort)(SUB161(auVar17 >> 0x47,0) & 1) << 8 |
               (ushort)(SUB161(auVar17 >> 0x4f,0) & 1) << 9 |
               (ushort)(SUB161(auVar17 >> 0x57,0) & 1) << 10 |
               (ushort)(SUB161(auVar17 >> 0x5f,0) & 1) << 0xb |
               (ushort)((byte)(auVar17._12_4_ >> 7) & 1) << 0xc |
               (ushort)((byte)(auVar17._12_4_ >> 0xf) & 1) << 0xd |
               (ushort)((byte)(auVar17._12_4_ >> 0x17) & 1) << 0xe |
              (ushort)(byte)(auVar17._12_4_ >> 0x1f) << 0xf) != 0xffff) goto LAB_0078356b;
LAB_007858b6:
  if (local_14 - 1 < 4) {
LAB_00785999:
    if (local_14 == 1) {
      local_38 = *(int *)(param_1 + 0x38);
      *(undefined4 *)(param_1 + 0x38) = 0;
      local_14 = 0xffffffff;
      *(undefined4 *)(param_1 + 0x28) = 0xffffffff;
LAB_007859b8:
      if ((*(uint *)(local_38 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      FUN_008fa1f0();
      FUN_00eaeca8();
    }
    else if (2 < local_14 - 2) {
      FUN_008f6da0(local_34);
      local_38 = FUN_008fa1b0();
      if ((*(uint *)(local_38 + 0x1c) & 0x1600000) == 0) {
        local_14 = 1;
        *(undefined4 *)(param_1 + 0x28) = 1;
        FUN_00eaecdd();
        FUN_00d95080();
        FUN_00dfc9c0();
        FUN_007860ce();
        FUN_0078622b();
        FUN_00786257();
        return;
      }
      goto LAB_007859b8;
    }
    switch(local_14) {
    case 2:
      local_38 = *(int *)(param_1 + 0x38);
      *(undefined4 *)(param_1 + 0x38) = 0;
      local_14 = 0xffffffff;
      *(undefined4 *)(param_1 + 0x28) = 0xffffffff;
      break;
    case 3:
      local_38 = *(int *)(param_1 + 0x38);
      *(undefined4 *)(param_1 + 0x38) = 0;
      local_14 = 0xffffffff;
      *(undefined4 *)(param_1 + 0x28) = 0xffffffff;
      goto LAB_00785ad6;
    case 4:
      local_3c = *(int *)(param_1 + 0x3c);
      *(undefined4 *)(param_1 + 0x3c) = 0;
      local_14 = 0xffffffff;
      *(undefined4 *)(param_1 + 0x28) = 0xffffffff;
      goto LAB_00785a98;
    default:
      if (PTR_LAB_01c22148 != (undefined *)0x0) {
        FUN_00e8eba9();
      }
      iVar13 = FUN_009d4fe0();
      local_38 = FUN_008f4130(0,*(undefined4 *)(iVar13 + 4),0);
      if ((*(uint *)(local_38 + 0x1c) & 0x1600000) == 0) {
        local_14 = 2;
        *(undefined4 *)(param_1 + 0x28) = 2;
        FUN_00eaecdd();
        FUN_00d95080();
        FUN_00dfc9c0();
        FUN_007860a4();
        FUN_007860ce();
        FUN_0078622b();
        FUN_00786257();
        return;
      }
    }
    if ((*(uint *)(local_38 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if (PTR_FUN_01c22110 != (undefined *)0x0) {
      FUN_00e8eaee();
    }
    local_38 = *(int *)(DAT_01c28f00 + 0x10);
    if ((*(uint *)(local_38 + 0x1c) & 0x1600000) == 0) {
      local_14 = 3;
      *(undefined4 *)(param_1 + 0x28) = 3;
      FUN_00eaecdd();
      FUN_00d95080();
      FUN_00dfc9c0();
      FUN_007860a4();
      FUN_007860ce();
      FUN_0078622b();
      FUN_00786257();
      return;
    }
LAB_00785ad6:
    if ((*(uint *)(local_38 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    uVar4 = FUN_009892a0();
    FUN_00989220(0,uVar4);
    uVar4 = FUN_009892a0();
    FUN_00989220(0,uVar4);
    local_3c = FUN_00e52a00(&PTR_DAT_0154b700);
    if ((*(uint *)(local_3c + 0x1c) & 0x1600000) == 0) {
      local_14 = 4;
      *(undefined4 *)(param_1 + 0x28) = 4;
      FUN_00eaecdd();
      FUN_00d95080();
      FUN_00dfca00(&PTR_DAT_0155c204);
      FUN_007860a4();
      FUN_007860ce();
      FUN_0078622b();
      FUN_00786257();
      return;
    }
LAB_00785a98:
    if ((*(uint *)(local_3c + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    if (((int)local_14 < 0) && (*(int *)(param_1 + 0x18) != 0)) {
      FUN_008f3b90();
      FUN_009024f0();
    }
    *(undefined4 *)(param_1 + 0x18) = 0;
    if (((int)local_14 < 0) && (*(int *)(param_1 + 0x14) != 0)) {
      FUN_008fa280();
    }
    *(undefined4 *)(param_1 + 0x14) = 0;
  }
  else {
    local_154 = 0x20;
    iVar13 = FUN_00908570(0,&local_154,1);
    if (1 < *(int *)(iVar13 + 4)) {
      local_34 = 0x1bb;
      iVar13 = FUN_00909ad0();
      if (iVar13 != 0) {
        local_158 = 0x3a;
        iVar13 = FUN_00908570(0,&local_158,1);
        if ((*(int *)(iVar13 + 4) == 0) || (*(uint *)(iVar13 + 4) < 2)) {
                    /* WARNING: Subroutine does not return */
          FUN_009c2bf0();
        }
        iVar13 = *(int *)(iVar13 + 0xc);
        if (iVar13 == 0) {
          local_34 = 0;
        }
        else {
          iVar3 = iVar13 + 8;
          uVar4 = *(undefined4 *)(iVar13 + 4);
          FUN_00958ea0(iVar3,uVar4);
          FUN_00dd21c0(&local_34,iVar3,uVar4);
        }
      }
      FUN_00eae9ce();
      FUN_008fa160();
      FUN_00eaed7c();
      goto LAB_00785999;
    }
  }
  FUN_0078622b();
  FUN_00786257();
LAB_00786048:
  *(undefined4 *)(param_1 + 0x28) = 0xfffffffe;
  if (*(int *)(param_1 + 0x30) == 0) {
    if (PTR_FUN_01c22110 != (undefined *)0x0) {
      FUN_00e8eaee();
    }
    FUN_00eaeca8();
  }
  else {
    iVar13 = FUN_00c0a790(0);
    if (iVar13 == 0) {
                    /* WARNING: Subroutine does not return */
      FUN_00931e50();
    }
  }
  return;
}

