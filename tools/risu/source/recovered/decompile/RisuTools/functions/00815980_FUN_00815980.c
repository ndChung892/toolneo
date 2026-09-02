/* Address: 00815980 | Ghidra name: FUN_00815980 */

/* WARNING: Removing unreachable block (ram,0x00817d72) */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_00815980(int *param_1)

{
  undefined4 *puVar1;
  undefined **ppuVar2;
  longlong lVar3;
  double dVar4;
  undefined1 uVar5;
  int iVar6;
  undefined4 uVar7;
  uint uVar8;
  int iVar9;
  int iVar10;
  int *piVar11;
  undefined4 extraout_ECX;
  undefined4 extraout_ECX_00;
  undefined4 extraout_ECX_01;
  int *piVar12;
  float10 fVar13;
  uint uVar14;
  uint uVar15;
  undefined4 uVar16;
  undefined4 uVar17;
  undefined4 local_220;
  uint local_21c;
  uint local_218;
  undefined1 local_17c [4];
  undefined4 local_178;
  undefined4 local_174;
  undefined1 local_170 [4];
  undefined1 local_16c [4];
  int local_168;
  int local_164;
  double local_160;
  int local_158 [19];
  int local_10c [6];
  int local_f4 [6];
  int local_dc [6];
  undefined4 local_c4;
  int local_c0;
  int local_bc;
  undefined1 local_b8;
  int local_b4;
  undefined4 local_b0;
  int local_ac;
  undefined4 local_a8;
  int local_a4;
  uint local_a0;
  char local_9c;
  undefined4 *local_98;
  uint local_94;
  undefined4 local_90;
  int local_8c;
  uint local_88;
  char local_84;
  undefined4 *local_80;
  uint local_7c;
  undefined4 local_78;
  int local_74;
  uint local_70;
  char local_6c;
  int local_68;
  uint local_64;
  undefined4 local_60;
  int local_5c;
  uint local_58;
  char local_54;
  int local_50;
  uint local_4c;
  int local_48;
  int local_44;
  int local_40;
  undefined4 local_3c;
  int local_38;
  uint local_34;
  char local_30;
  undefined4 *local_2c;
  uint local_28;
  int local_24;
  int local_20;
  int local_1c;
  int local_18;
  int local_14;
  
  iVar6 = -0x1e0;
  do {
    *(undefined4 *)((int)&local_14 + iVar6) = 0;
    *(undefined4 *)(&stack0xfffffff0 + iVar6) = 0;
    *(undefined4 *)(&stack0xfffffff4 + iVar6) = 0;
    *(undefined4 *)(&stack0xfffffff8 + iVar6) = 0;
    *(undefined4 *)(&stack0xfffffffc + iVar6) = 0;
    *(undefined4 *)(&stack0x00000000 + iVar6) = 0;
    *(undefined4 *)(&stack0x00000004 + iVar6) = 0;
    *(undefined4 *)(&stack0x00000008 + iVar6) = 0;
    *(undefined4 *)(&stack0x0000000c + iVar6) = 0;
    *(undefined4 *)(&stack0x00000010 + iVar6) = 0;
    *(undefined4 *)(&stack0x00000014 + iVar6) = 0;
    *(undefined4 *)(&stack0x00000018 + iVar6) = 0;
    iVar6 = iVar6 + 0x30;
  } while (iVar6 != 0);
  local_14 = param_1[4];
  iVar6 = *param_1;
  switch(local_14) {
  case 0:
    local_18 = param_1[0xc];
    param_1[0xc] = 0;
    local_14 = -1;
    param_1[4] = -1;
    do {
      if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      FUN_00eaecdd();
      local_1c = FUN_00975000(*(undefined4 *)(iVar6 + 0x1c));
      if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
        param_1[4] = 1;
        FUN_00eaecdd();
        FUN_00da4c20();
        FUN_00dfc9c0();
        return;
      }
LAB_0081849e:
      if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      if ((param_1[2] != 0) && (*(char *)(param_1[2] + 0x69) == '\0')) {
        local_20 = FUN_0077ad90();
        if ((*(uint *)(local_20 + 0x1c) & 0x1600000) == 0) {
          param_1[4] = 2;
          FUN_00eaecdd();
          FUN_00da4c20();
          FUN_00dfca00(&PTR_DAT_01568f14);
          return;
        }
LAB_008183fe:
        if ((*(uint *)(local_20 + 0x1c) & 0x11000000) != 0x1000000) {
          FUN_0099dbc0();
        }
        if (*(int *)(DAT_01c28a74 + 8) == 0) {
          FUN_00eae9a0();
          FUN_00e9affa();
          FUN_00eaebef();
        }
        iVar9 = FUN_00e4e4a0(&PTR_DAT_01544bfc,local_16c);
        iVar10 = FUN_00909ad0();
        if (iVar10 == 0) {
          uVar5 = FUN_00909ad0();
        }
        else {
          uVar5 = 1;
        }
        *(undefined1 *)(param_1 + 10) = uVar5;
        if (iVar9 == 0) {
          FUN_00813ce0();
          local_40 = FUN_00b6e1a0();
          iVar9 = FUN_00b6fc00();
          if (iVar9 == 0) {
            param_1[4] = 0x2a;
            goto LAB_00817eed;
          }
LAB_00815a0e:
          local_158[0x12] = FUN_00b6fc70();
          param_1[1] = 0;
          param_1[7] = 0;
          FUN_00787620();
          iVar9 = FUN_00eaeae1();
          *(undefined ***)(iVar9 + 8) = &PTR_DAT_01baec30;
          FUN_00792de0(iVar9);
          FUN_00787620();
          uVar7 = FUN_00e51290();
          FUN_00792de0(uVar7);
          if (local_158[0x12] == 0) {
            FUN_007876b0();
            FUN_00787620();
            iVar6 = FUN_00eaeae1();
            *(undefined ***)(iVar6 + 8) = &PTR_DAT_01b4cac0;
            FUN_00792de0(iVar6);
            goto LAB_00818ede;
          }
          FUN_007876f0();
          local_1c = FUN_00973a50();
          iVar9 = FUN_0099db90();
          if (iVar9 == 0) {
            param_1[4] = 0x2b;
            goto LAB_00815feb;
          }
LAB_00815c67:
          FUN_0099dba0();
LAB_00815c6f:
          param_1[2] = 0;
        }
        else {
          iVar10 = FUN_00772d90();
          param_1[5] = iVar10;
          if ((param_1[5] == -1) || (10 < param_1[5])) goto LAB_00818ede;
          if (param_1[6] != param_1[5]) {
            param_1[1] = 0;
            param_1[7] = 0;
            param_1[6] = param_1[5];
            iVar10 = FUN_00eaeae1();
            *(undefined ***)(iVar10 + 8) = &PTR_DAT_01baec30;
            FUN_0077afa0(iVar10,&PTR_DAT_01bf0ecc);
            FUN_0077afa0(&PTR_DAT_01c0f488,&PTR_DAT_01be39d8);
          }
          if (*(char *)(iVar9 + 0x3c) != '\0') {
            FUN_00813ca0();
            local_1c = FUN_00973a50();
            iVar9 = FUN_0099db90();
            if (iVar9 == 0) {
              param_1[4] = 0x28;
              goto LAB_00815feb;
            }
LAB_00815b35:
            FUN_0099dba0();
            param_1[1] = 0;
            param_1[7] = 0;
            FUN_00787620();
            iVar9 = FUN_00eaeae1();
            *(undefined ***)(iVar9 + 8) = &PTR_DAT_01baec30;
            FUN_00792de0(iVar9);
            FUN_00787620();
            uVar7 = FUN_00e51290();
            FUN_00792de0(uVar7);
            local_158[0xc] = 0;
            local_158[0xd] = 0;
            local_158[0xe] = 0;
            local_158[0xf] = 0;
            local_158[0x10] = 0;
            local_158[0x11] = 0;
            FUN_0099d430(1);
            piVar11 = local_158 + 0xc;
            piVar12 = local_10c;
            for (iVar9 = 6; iVar9 != 0; iVar9 = iVar9 + -1) {
              *piVar12 = *piVar11;
              piVar11 = piVar11 + 1;
              piVar12 = piVar12 + 1;
            }
            FUN_0099d5d0();
            FUN_00de77e0();
            FUN_0099d5d0();
            FUN_0099d560();
            FUN_007876b0();
            if (param_1[5] < 10) goto LAB_00815c6f;
            FUN_007876f0();
            local_1c = FUN_00973a50();
            iVar6 = FUN_0099db90();
            if (iVar6 == 0) {
              param_1[4] = 0x29;
              goto LAB_00815feb;
            }
            goto LAB_00815ad4;
          }
          param_1[5] = param_1[5] + -1;
          local_1c = FUN_00975000(*(undefined4 *)(iVar6 + 0x1c));
          if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
            param_1[4] = 3;
            FUN_00eaecdd();
            FUN_00da4c20();
            FUN_00dfc9c0();
            return;
          }
LAB_00818374:
          if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          local_18 = FUN_0077abc0();
          if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
            param_1[4] = 4;
            FUN_00eaecdd();
            FUN_00da4c20();
            FUN_00dfca00(&PTR_DAT_01553fd0);
            return;
          }
LAB_008182d2:
          if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
            FUN_0099dbc0();
          }
          FUN_00eaecdd();
          if (param_1[1] == 0) {
LAB_00818b08:
            if (param_1[1] == 0) {
              local_44 = FUN_0077b0f0(&PTR_DAT_01b39360,&PTR_DAT_01bea6dc);
              if ((*(uint *)(local_44 + 0x1c) & 0x1600000) == 0) {
                param_1[4] = 8;
                FUN_00eaecdd();
                FUN_00da4c20();
                FUN_00dfca00(&PTR_DAT_01568c60);
                return;
              }
LAB_00818028:
              if ((*(uint *)(local_44 + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
              if (*(int *)(DAT_01c28a74 + 0xc) == 0) {
                FUN_00eae9a0();
                FUN_00e9b00b();
                FUN_00eaebef();
              }
              FUN_00e4e4a0(&PTR_DAT_01543f40,local_170);
              FUN_00eaeca8();
              if (param_1[3] == 0) {
                if ((param_1[2] != 0) && (5 < *(int *)(param_1[2] + 0x2c))) {
                  local_48 = FUN_0077af40(0,0);
                  if ((*(uint *)(local_48 + 0x1c) & 0x1600000) == 0) {
                    param_1[4] = 0xc;
                    FUN_00eaecdd();
                    FUN_00da4c20();
                    FUN_00dfca00(&PTR_DAT_01557398);
                    return;
                  }
LAB_00816bb4:
                  if ((*(uint *)(local_48 + 0x1c) & 0x11000000) != 0x1000000) {
                    FUN_0099dbc0();
                  }
                  if ((*(int *)(local_48 + 0x20) != 0) &&
                     (*(int *)(*(int *)(local_48 + 0x20) + 4) != 0)) {
                    FUN_00772900();
                    FUN_00e4e800();
                    iVar9 = (*(code *)PTR_FUN_01c46620)();
                    do {
                      iVar10 = (*(code *)PTR_FUN_01c3a380)();
                      if (iVar10 == 0) goto LAB_00818e2a;
                      (*(code *)PTR_FUN_01c46828)();
                      iVar10 = FUN_00772a50();
                    } while (((((iVar10 == 0) ||
                               (ppuVar2 = *(undefined ***)(iVar10 + 4), ppuVar2 == (undefined **)0x0
                               )) || (ppuVar2[1] == (undefined *)0x0)) ||
                             (ppuVar2 == &PTR_DAT_01bedf10)) ||
                            ((ppuVar2[1] == (undefined *)0x6 &&
                             (ppuVar2[4] == (undefined *)0x640065 &&
                              (ppuVar2[2] == (undefined *)0x70006f && ppuVar2[3] == &DAT_006e0065)))
                            ));
                    FUN_00eaeca8();
                    param_1[7] = 0;
                    if (PTR_LAB_01c23e7c != (undefined *)0x0) {
                      FUN_00e8f54a();
                    }
                    local_74 = FUN_00b848a0();
                    if (local_74 == 0) {
                      local_68 = 0;
                      local_64 = 0;
                    }
                    else {
                      local_68 = local_74 + 8;
                      local_64 = *(uint *)(local_74 + 4);
                    }
                    local_78 = 0;
                    local_70 = 0;
                    local_6c = '\0';
                    if (local_64 < 0x2f) {
                      FUN_0099d6f0();
                    }
                    else {
                      FUN_00930280(0x5e);
                      local_70 = local_70 + 0x2f;
                    }
                    iVar10 = *(int *)(param_1[1] + 4);
                    if ((local_6c == '\0') && (iVar10 != 0)) {
                      if (local_64 < local_70) goto LAB_00818e24;
                      if (local_64 - local_70 < *(uint *)(iVar10 + 4)) goto LAB_00818d2a;
                      FUN_00930280(*(int *)(iVar10 + 4) * 2);
                      local_70 = local_70 + *(int *)(iVar10 + 4);
                    }
                    else {
LAB_00818d2a:
                      FUN_0099d670();
                    }
                    if (local_64 < local_70) {
LAB_00818e24:
                    /* WARNING: Subroutine does not return */
                      FUN_009318f0();
                    }
                    if (local_64 - local_70 < 2) {
                      FUN_0099d6f0();
                    }
                    else {
                      *(undefined4 *)(local_68 + local_70 * 2) = 0x280020;
                      local_70 = local_70 + 2;
                    }
                    FUN_00de77e0();
                    if (local_64 < local_70) goto LAB_00818e24;
                    if (local_64 == local_70) {
                      FUN_0099d6f0();
                    }
                    else {
                      *(undefined2 *)(local_68 + local_70 * 2) = 0x2c;
                      local_70 = local_70 + 1;
                    }
                    FUN_00de77e0();
                    if (local_64 < local_70) goto LAB_00818e24;
                    if (local_64 == local_70) {
                      FUN_0099d6f0();
                    }
                    else {
                      *(undefined2 *)(local_68 + local_70 * 2) = 0x29;
                      local_70 = local_70 + 1;
                    }
                    FUN_0099d560();
                    FUN_007876b0();
LAB_00818e2a:
                    if ((local_14 < 0) && (iVar9 != 0)) {
                      (*(code *)PTR_FUN_01c371d8)();
                    }
                  }
                }
              }
              else {
                FUN_007876b0();
                iVar9 = FUN_00eaeae1();
                *(undefined ***)(iVar9 + 8) = &PTR_DAT_01baec30;
                FUN_0077afa0(iVar9,&PTR_DAT_01bf0ecc);
                FUN_0077afa0(&PTR_DAT_01c0f488,&PTR_DAT_01be39d8);
                local_1c = FUN_00975000(*(undefined4 *)(iVar6 + 0x1c));
                if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
                  param_1[4] = 9;
                  FUN_00eaecdd();
                  FUN_00da4c20();
                  FUN_00dfc9c0();
                  return;
                }
LAB_00816d9a:
                if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
                uVar17 = 1;
                uVar7 = 0;
                uVar16 = 0;
                fVar13 = (float10)FUN_00eb6270(*(undefined4 *)(param_1[3] + 4),
                                               *(undefined4 *)(param_1[3] + 8));
                FUN_0077a9f0((double)fVar13,uVar7,uVar16,uVar17);
                param_1[8] = 0;
                while( true ) {
                  if ((param_1[1] != 0) || (7 < param_1[8])) goto LAB_00818e4a;
                  local_1c = FUN_00975000(*(undefined4 *)(iVar6 + 0x1c));
                  if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
                    param_1[4] = 10;
                    FUN_00eaecdd();
                    FUN_00da4c20();
                    FUN_00dfc9c0();
                    return;
                  }
LAB_00816d08:
                  if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
                    FUN_0099dbc0();
                  }
                  local_48 = FUN_0077af40(0,0);
                  if ((*(uint *)(local_48 + 0x1c) & 0x1600000) == 0) {
                    param_1[4] = 0xb;
                    FUN_00eaecdd();
                    FUN_00da4c20();
                    FUN_00dfca00(&PTR_DAT_01557398);
                    return;
                  }
LAB_00816c29:
                  if ((*(uint *)(local_48 + 0x1c) & 0x11000000) != 0x1000000) {
                    FUN_0099dbc0();
                  }
                  FUN_007727e0();
                  iVar9 = FUN_00772a50();
                  if ((((iVar9 != 0) &&
                       (ppuVar2 = *(undefined ***)(iVar9 + 4), ppuVar2 != (undefined **)0x0)) &&
                      (ppuVar2[1] != (undefined *)0x0)) &&
                     ((ppuVar2 != &PTR_DAT_01bedf10 &&
                      ((ppuVar2[1] != (undefined *)0x6 ||
                       (ppuVar2[4] != (undefined *)0x640065 ||
                        (ppuVar2[2] != (undefined *)0x70006f || ppuVar2[3] != &DAT_006e0065)))))))
                  break;
                  param_1[8] = param_1[8] + 1;
                }
                FUN_00eaeca8();
                param_1[7] = 0;
                if (PTR_LAB_01c23e7c != (undefined *)0x0) {
                  FUN_00e8f54a();
                }
                local_5c = FUN_00b848a0();
                if (local_5c == 0) {
                  local_50 = 0;
                  local_4c = 0;
                }
                else {
                  local_50 = local_5c + 8;
                  local_4c = *(uint *)(local_5c + 4);
                }
                local_60 = 0;
                local_58 = 0;
                local_54 = '\0';
                if (local_4c < 0x27) {
                  FUN_0099d6f0();
                }
                else {
                  FUN_00930280(0x4e);
                  local_58 = local_58 + 0x27;
                }
                iVar9 = *(int *)(param_1[1] + 4);
                if ((local_54 == '\0') && (iVar9 != 0)) {
                  if (local_4c < local_58) goto LAB_00818ece;
                  if (local_4c - local_58 < *(uint *)(iVar9 + 4)) goto LAB_00816f05;
                  FUN_00930280(*(int *)(iVar9 + 4) * 2);
                  local_58 = local_58 + *(int *)(iVar9 + 4);
                }
                else {
LAB_00816f05:
                  FUN_0099d670();
                }
                if (local_4c < local_58) goto LAB_00818ece;
                if (local_4c - local_58 < 2) {
                  FUN_0099d6f0();
                }
                else {
                  *(undefined4 *)(local_50 + local_58 * 2) = 0x280020;
                  local_58 = local_58 + 2;
                }
                FUN_00de77e0();
                if (local_4c < local_58) goto LAB_00818ece;
                if (local_4c == local_58) {
                  FUN_0099d6f0();
                }
                else {
                  *(undefined2 *)(local_50 + local_58 * 2) = 0x2c;
                  local_58 = local_58 + 1;
                }
                FUN_00de77e0();
                if (local_4c < local_58) goto LAB_00818ece;
                if (local_4c == local_58) {
                  FUN_0099d6f0();
                }
                else {
                  *(undefined2 *)(local_50 + local_58 * 2) = 0x29;
                  local_58 = local_58 + 1;
                }
                FUN_0099d560();
                FUN_007876b0();
              }
LAB_00818e4a:
              param_1[3] = 0;
            }
            if (((param_1[1] == 0) || (*(int *)(param_1[1] + 4) == 0)) ||
               (*(int *)(*(int *)(param_1[1] + 4) + 4) == 0)) {
LAB_00817f09:
              if (param_1[1] == 0) {
                FUN_007876b0();
                FUN_00813c60();
                local_1c = FUN_00973a50();
                iVar9 = FUN_0099db90();
                if (iVar9 == 0) {
                  param_1[4] = 0x26;
LAB_00815feb:
                  FUN_00eaecdd();
                  FUN_00dfcb00(param_1);
                  return;
                }
LAB_00815c92:
                FUN_0099dba0();
                FUN_007876f0();
                local_1c = FUN_00973a50();
                iVar9 = FUN_0099db90();
                if (iVar9 == 0) {
                  param_1[4] = 0x27;
                  goto LAB_00815feb;
                }
                goto LAB_00815c67;
              }
              goto LAB_00815c6f;
            }
            if (PTR_FUN_01c21b04 != (undefined *)0x0) {
              FUN_00e8e290();
            }
            piVar11 = (int *)FUN_00ce3620();
            if (piVar11 == (int *)0x0) {
              iVar9 = -1;
            }
            else {
              iVar9 = *piVar11;
            }
            if (((0 < iVar9) && (iVar10 = param_1[2], iVar10 != 0)) &&
               ((*(int *)(iVar10 + 0x28) != iVar9 && (*(int *)(iVar10 + 0x2c) < 3)))) {
              if (PTR_LAB_01c23e7c != (undefined *)0x0) {
                FUN_00e8f54a();
              }
              local_8c = FUN_00b848a0();
              uVar17 = _UNK_018d75cc;
              uVar16 = _UNK_018d75c8;
              uVar7 = _UNK_018d75c4;
              if (local_8c == 0) {
                local_80 = (undefined4 *)0x0;
                local_21c = 0;
              }
              else {
                local_80 = (undefined4 *)(local_8c + 8);
                local_21c = *(uint *)(local_8c + 4);
              }
              local_90 = 0;
              local_88 = 0;
              local_84 = '\0';
              local_7c = local_21c;
              if (local_21c < 8) {
                FUN_0099d6f0();
              }
              else {
                *local_80 = _DAT_018d75c0;
                local_80[1] = uVar7;
                local_80[2] = uVar16;
                local_80[3] = uVar17;
                local_88 = 8;
              }
              iVar10 = *(int *)(param_1[1] + 4);
              if ((local_84 == '\0') && (iVar10 != 0)) {
                if (local_7c < local_88) goto LAB_00818ece;
                if (local_7c - local_88 < *(uint *)(iVar10 + 4)) goto LAB_0081711e;
                FUN_00930280(*(int *)(iVar10 + 4) * 2);
                local_88 = local_88 + *(int *)(iVar10 + 4);
              }
              else {
LAB_0081711e:
                FUN_0099d670();
              }
              if (local_7c < local_88) goto LAB_00818ece;
              puVar1 = (undefined4 *)((int)local_80 + local_88 * 2);
              if (local_7c - local_88 < 6) {
                FUN_0099d6f0();
              }
              else {
                *puVar1 = 0x280020;
                puVar1[1] = 0x61004d;
                puVar1[2] = 0x200070;
                local_88 = local_88 + 6;
              }
              FUN_00de77e0();
              if (local_7c < local_88) goto LAB_00818ece;
              if (local_7c == local_88) {
                FUN_0099d6f0();
              }
              else {
                *(undefined2 *)((int)local_80 + local_88 * 2) = 0x29;
                local_88 = local_88 + 1;
              }
              FUN_0099d560();
              FUN_007876b0();
              local_174 = *(undefined4 *)(*(int *)(iVar6 + 0x14) + 8);
              uVar7 = FUN_00eaeae1();
              iVar10 = FUN_00eae9a0();
              *(int *)(iVar10 + 4) = iVar9;
              FUN_00eaebca();
              iVar9 = FUN_00eae9a0();
              *(undefined4 *)(iVar9 + 4) = 0;
              FUN_00eaebca();
              FUN_0077a610(uVar7,&PTR_DAT_01bec2f4);
              while( true ) {
                local_40 = FUN_0077ac40();
                if ((*(uint *)(local_40 + 0x1c) & 0x1600000) == 0) {
                  param_1[4] = 0xe;
                  FUN_00eaecdd();
                  FUN_00da4c20();
                  FUN_00dfc9c0();
                  return;
                }
LAB_00816ae8:
                if ((*(uint *)(local_40 + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
                if (*(char *)(local_40 + 0x20) == '\0') break;
                local_1c = FUN_00975000(*(undefined4 *)(iVar6 + 0x1c));
                if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
                  param_1[4] = 0xd;
                  FUN_00eaecdd();
                  FUN_00da4c20();
                  FUN_00dfc9c0();
                  return;
                }
LAB_00816b77:
                if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
              }
            }
            while( true ) {
              local_40 = FUN_0077ac00();
              if ((*(uint *)(local_40 + 0x1c) & 0x1600000) == 0) {
                param_1[4] = 0x10;
                FUN_00eaecdd();
                FUN_00da4c20();
                FUN_00dfc9c0();
                return;
              }
LAB_008169ae:
              if ((*(uint *)(local_40 + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
              if (*(char *)(local_40 + 0x20) != '\0') break;
              local_178 = *(undefined4 *)(*(int *)(iVar6 + 0x14) + 8);
              FUN_00eaeae1();
              iVar9 = FUN_00eae9a0();
              *(undefined4 *)(iVar9 + 4) = 0;
              FUN_00eaebca();
              FUN_0077a610(extraout_ECX,&PTR_DAT_01be70d8);
              local_1c = FUN_00975000(*(undefined4 *)(iVar6 + 0x1c));
              if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
                param_1[4] = 0xf;
                FUN_00eaecdd();
                FUN_00da4c20();
                FUN_00dfc9c0();
                return;
              }
LAB_00816a64:
              if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
            }
            local_1c = FUN_007877c0(0,0,0,(double)*(int *)(param_1[1] + 0xc),
                                    (double)*(int *)(param_1[1] + 8));
            if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
              param_1[4] = 0x11;
              FUN_00eaecdd();
              FUN_00da4c20();
              FUN_00dfc9c0();
              return;
            }
LAB_0081691f:
            if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            param_1[8] = 0;
            do {
              local_18 = FUN_0077abc0();
              if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
                param_1[4] = 0x12;
                FUN_00eaecdd();
                FUN_00da4c20();
                FUN_00dfca00(&PTR_DAT_01553fd0);
                return;
              }
LAB_0081688b:
              if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
              FUN_00eaecdd();
              local_1c = FUN_00975000(*(undefined4 *)(iVar6 + 0x1c));
              if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
                param_1[4] = 0x13;
                FUN_00eaecdd();
                FUN_00da4c20();
                FUN_00dfc9c0();
                return;
              }
LAB_00816781:
              if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
              param_1[8] = param_1[8] + 1;
            } while ((param_1[2] != 0) &&
                    (((dVar4 = *(double *)(param_1[2] + 4) / _DAT_018d7590 -
                               (double)*(int *)(param_1[1] + 8),
                      uVar14 = SUB84(dVar4,0) & _DAT_018d75a0,
                      uVar15 = (uint)((ulonglong)dVar4 >> 0x20) & _UNK_018d75a4,
                      _DAT_018d75b0 <= (double)CONCAT44(uVar15,uVar14) &&
                      (double)CONCAT44(uVar15,uVar14) != _DAT_018d75b0 ||
                      (dVar4 = *(double *)(param_1[2] + 0xc) / _DAT_018d7590 -
                               (double)*(int *)(param_1[1] + 0xc),
                      uVar14 = SUB84(dVar4,0) & _DAT_018d75a0,
                      uVar15 = (uint)((ulonglong)dVar4 >> 0x20) & _UNK_018d75a4,
                      _DAT_018d75b0 <= (double)CONCAT44(uVar15,uVar14) &&
                      (double)CONCAT44(uVar15,uVar14) != _DAT_018d75b0)) && (param_1[8] < 0xc))));
            local_44 = FUN_0077b0f0(&PTR_DAT_01b39360,&PTR_DAT_01bea6dc);
            if ((*(uint *)(local_44 + 0x1c) & 0x1600000) == 0) {
              param_1[4] = 0x14;
              FUN_00eaecdd();
              FUN_00da4c20();
              FUN_00dfca00(&PTR_DAT_01568c60);
              return;
            }
LAB_008166ad:
            if ((*(uint *)(local_44 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            if (*(int *)(DAT_01c28a74 + 0x10) == 0) {
              FUN_00eae9a0();
              FUN_00e9b01c();
              FUN_00eaebef();
            }
            iVar9 = FUN_00e4e4a0(&PTR_DAT_01543f40,local_17c);
            if (iVar9 != 0) {
              if (PTR_LAB_01c23e7c != (undefined *)0x0) {
                FUN_00e8f54a();
              }
              local_a4 = FUN_00b848a0();
              uVar17 = _UNK_018d75dc;
              uVar16 = _UNK_018d75d8;
              uVar7 = _UNK_018d75d4;
              if (local_a4 == 0) {
                local_98 = (undefined4 *)0x0;
                local_94 = 0;
              }
              else {
                local_98 = (undefined4 *)(local_a4 + 8);
                local_94 = *(uint *)(local_a4 + 4);
              }
              local_a8 = 0;
              local_a0 = 0;
              local_9c = '\0';
              if (local_94 < 0xf) {
                FUN_0099d6f0();
              }
              else {
                *local_98 = _DAT_018d75d0;
                local_98[1] = uVar7;
                local_98[2] = uVar16;
                local_98[3] = uVar17;
                local_98[4] = 0x201ecb;
                local_98[5] = 0x720074;
                local_98[6] = 0x2000ed;
                *(undefined2 *)(local_98 + 7) = 0x28;
                local_a0 = 0xf;
              }
              FUN_00de77e0();
              if (local_94 < local_a0) goto LAB_00818ece;
              if (local_94 - local_a0 < 2) {
                FUN_0099d6f0();
              }
              else {
                *(undefined4 *)((int)local_98 + local_a0 * 2) = 0x20002c;
                local_a0 = local_a0 + 2;
              }
              FUN_00de77e0();
              uVar17 = _UNK_018d75ec;
              uVar16 = _UNK_018d75e8;
              uVar7 = _UNK_018d75e4;
              if (local_94 < local_a0) goto LAB_00818ece;
              puVar1 = (undefined4 *)((int)local_98 + local_a0 * 2);
              if (local_94 - local_a0 < 0xb) {
                FUN_0099d6f0();
              }
              else {
                *puVar1 = _DAT_018d75e0;
                puVar1[1] = uVar7;
                puVar1[2] = uVar16;
                puVar1[3] = uVar17;
                puVar1[4] = 0x700061;
                *(undefined2 *)(puVar1 + 5) = 0x20;
                local_a0 = local_a0 + 0xb;
              }
              iVar10 = *(int *)(param_1[1] + 4);
              if ((local_9c == '\0') && (iVar10 != 0)) {
                if (local_94 < local_a0) goto LAB_00818ece;
                if (local_94 - local_a0 < *(uint *)(iVar10 + 4)) goto LAB_00817527;
                FUN_00930280(*(int *)(iVar10 + 4) * 2);
                local_a0 = local_a0 + *(int *)(iVar10 + 4);
              }
              else {
LAB_00817527:
                FUN_0099d670();
              }
              if (local_94 < local_a0) {
LAB_00818ece:
                    /* WARNING: Subroutine does not return */
                FUN_009318f0();
              }
              if (local_94 - local_a0 < 0x2c) {
                FUN_0099d6f0();
              }
              else {
                FUN_00930280(0x58);
                local_a0 = local_a0 + 0x2c;
              }
              FUN_0099d560();
              FUN_007876b0();
              uVar17 = 1;
              uVar7 = 0;
              uVar16 = 0;
              fVar13 = (float10)FUN_00eb6270(*(undefined4 *)(iVar9 + 4),*(undefined4 *)(iVar9 + 8));
              FUN_0077a9f0((double)fVar13,uVar7,uVar16,uVar17);
              local_1c = FUN_00975000(*(undefined4 *)(iVar6 + 0x1c));
              if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
                param_1[4] = 0x15;
                FUN_00eaecdd();
                FUN_00da4c20();
                FUN_00dfc9c0();
                return;
              }
LAB_00816624:
              if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
            }
            param_1[9] = 0;
            while( true ) {
              local_40 = FUN_0077ac00();
              if ((*(uint *)(local_40 + 0x1c) & 0x1600000) == 0) {
                param_1[4] = 0x17;
                FUN_00eaecdd();
                FUN_00da4c20();
                FUN_00dfc9c0();
                return;
              }
LAB_00816554:
              if ((*(uint *)(local_40 + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
              if ((*(char *)(local_40 + 0x20) == '\0') || (2 < param_1[9])) break;
              FUN_00eaeae1();
              iVar9 = FUN_00eae9a0();
              *(undefined4 *)(iVar9 + 4) = 0;
              FUN_00eaebca();
              FUN_0077a610(extraout_ECX_00,&PTR_DAT_01be70bc);
              local_1c = FUN_00975000(*(undefined4 *)(iVar6 + 0x1c));
              if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
                param_1[4] = 0x16;
                FUN_00eaecdd();
                FUN_00da4c20();
                FUN_00dfc9c0();
                return;
              }
LAB_008165eb:
              if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
              param_1[9] = param_1[9] + 1;
            }
            local_40 = FUN_0077ac00();
            if ((*(uint *)(local_40 + 0x1c) & 0x1600000) == 0) {
              param_1[4] = 0x18;
              FUN_00eaecdd();
              FUN_00da4c20();
              FUN_00dfc9c0();
              return;
            }
LAB_008164b1:
            if ((*(uint *)(local_40 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            if (*(char *)(local_40 + 0x20) != '\0') {
              FUN_007876b0();
              local_18 = FUN_0077abc0();
              if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
                param_1[4] = 0x19;
                FUN_00eaecdd();
                FUN_00da4c20();
                FUN_00dfca00(&PTR_DAT_01553fd0);
                return;
              }
LAB_008162c7:
              if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
                FUN_0099dbc0();
              }
              FUN_00eaecdd();
              if (param_1[2] != 0) {
                iVar9 = FUN_00eae9a0();
                FUN_0092f2f0();
                puVar1 = *(undefined4 **)(iVar9 + 4);
                if ((undefined *)*puVar1 == &DAT_0161c980) {
                  uVar14 = puVar1[2];
                  uVar15 = puVar1[3] ^ puVar1[1];
                  uVar8 = puVar1[4] ^ uVar14;
                  puVar1[1] = uVar8 ^ puVar1[1];
                  puVar1[2] = uVar14 ^ uVar15;
                  puVar1[3] = uVar15 ^ uVar14 << 9;
                  puVar1[4] = uVar8 << 0xb | uVar8 >> 0x15;
                  lVar3 = (ulonglong)((uVar14 * 0x280 | uVar14 * 5 >> 0x19) * 9) * 10;
                  local_164 = (int)((ulonglong)lVar3 >> 0x20);
                  if ((uint)lVar3 < 10) {
                    while (local_164 = (int)((ulonglong)lVar3 >> 0x20), (uint)lVar3 < 6) {
                      uVar14 = puVar1[2];
                      uVar8 = puVar1[3] ^ puVar1[1];
                      uVar15 = puVar1[4] ^ uVar14;
                      puVar1[1] = uVar15 ^ puVar1[1];
                      puVar1[2] = uVar14 ^ uVar8;
                      puVar1[3] = uVar8 ^ uVar14 << 9;
                      puVar1[4] = uVar15 << 0xb | uVar15 >> 0x15;
                      lVar3 = (ulonglong)((uVar14 * 0x280 | uVar14 * 5 >> 0x19) * 9) * 10;
                    }
                  }
                  local_164 = local_164 + 5;
                }
                else {
                  local_164 = FUN_009cc710(0xf);
                }
                puVar1 = *(undefined4 **)(iVar9 + 4);
                if ((undefined *)*puVar1 == &DAT_0161c980) {
                  uVar14 = puVar1[2];
                  uVar8 = puVar1[3] ^ puVar1[1];
                  uVar15 = puVar1[4] ^ uVar14;
                  puVar1[1] = uVar15 ^ puVar1[1];
                  puVar1[2] = uVar14 ^ uVar8;
                  puVar1[3] = uVar8 ^ uVar14 << 9;
                  puVar1[4] = uVar15 << 0xb | uVar15 >> 0x15;
                  iVar10 = (int)((ulonglong)((uVar14 * 0x280 | uVar14 * 5 >> 0x19) * 9) * 2 >> 0x20)
                  ;
                }
                else {
                  iVar10 = FUN_009cc670();
                }
                if (iVar10 == 0) {
                  local_ac = 1;
                }
                else {
                  local_ac = -1;
                }
                local_ac = local_164 * local_ac;
                puVar1 = *(undefined4 **)(iVar9 + 4);
                if ((undefined *)*puVar1 == &DAT_0161c980) {
                  uVar14 = puVar1[2];
                  uVar15 = puVar1[3] ^ puVar1[1];
                  uVar8 = puVar1[4] ^ uVar14;
                  puVar1[1] = uVar8 ^ puVar1[1];
                  puVar1[2] = uVar14 ^ uVar15;
                  puVar1[3] = uVar15 ^ uVar14 << 9;
                  puVar1[4] = uVar8 << 0xb | uVar8 >> 0x15;
                  lVar3 = (ulonglong)((uVar14 * 0x280 | uVar14 * 5 >> 0x19) * 9) * 10;
                  local_168 = (int)((ulonglong)lVar3 >> 0x20);
                  if ((uint)lVar3 < 10) {
                    while (local_168 = (int)((ulonglong)lVar3 >> 0x20), (uint)lVar3 < 6) {
                      uVar14 = puVar1[2];
                      uVar8 = puVar1[3] ^ puVar1[1];
                      uVar15 = puVar1[4] ^ uVar14;
                      puVar1[1] = uVar15 ^ puVar1[1];
                      puVar1[2] = uVar14 ^ uVar8;
                      puVar1[3] = uVar8 ^ uVar14 << 9;
                      puVar1[4] = uVar15 << 0xb | uVar15 >> 0x15;
                      lVar3 = (ulonglong)((uVar14 * 0x280 | uVar14 * 5 >> 0x19) * 9) * 10;
                    }
                  }
                  local_168 = local_168 + 5;
                }
                else {
                  local_168 = FUN_009cc710(0xf);
                }
                puVar1 = *(undefined4 **)(iVar9 + 4);
                if ((undefined *)*puVar1 == &DAT_0161c980) {
                  uVar14 = puVar1[2];
                  uVar15 = puVar1[3] ^ puVar1[1];
                  uVar8 = puVar1[4] ^ uVar14;
                  puVar1[1] = uVar8 ^ puVar1[1];
                  puVar1[2] = uVar14 ^ uVar15;
                  puVar1[3] = uVar15 ^ uVar14 << 9;
                  puVar1[4] = uVar8 << 0xb | uVar8 >> 0x15;
                  iVar9 = (int)((ulonglong)((uVar14 * 0x280 | uVar14 * 5 >> 0x19) * 9) * 2 >> 0x20);
                }
                else {
                  iVar9 = FUN_009cc670();
                }
                if (iVar9 == 0) {
                  iVar9 = 1;
                }
                else {
                  iVar9 = -1;
                }
                local_1c = FUN_007877c0(0,0,0,*(double *)(param_1[2] + 0xc) / _DAT_018d7590 +
                                              (double)(iVar9 * local_168),
                                        *(double *)(param_1[2] + 4) / _DAT_018d7590 +
                                        (double)local_ac);
                if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
                  param_1[4] = 0x1a;
                  FUN_00eaecdd();
                  FUN_00da4c20();
                  FUN_00dfc9c0();
                  return;
                }
LAB_0081620f:
                if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
                FUN_007876b0();
                local_1c = FUN_007877c0(0,0,0,(double)*(int *)(param_1[1] + 0xc),
                                        (double)*(int *)(param_1[1] + 8));
                if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
                  param_1[4] = 0x1b;
                  FUN_00eaecdd();
                  FUN_00da4c20();
                  FUN_00dfc9c0();
                  return;
                }
LAB_00816186:
                if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
                  FUN_0099dbc0();
                }
                param_1[9] = 0;
                while( true ) {
                  local_40 = FUN_0077ac00();
                  if ((*(uint *)(local_40 + 0x1c) & 0x1600000) == 0) {
                    param_1[4] = 0x1d;
                    FUN_00eaecdd();
                    FUN_00da4c20();
                    FUN_00dfc9c0();
                    return;
                  }
LAB_008160b0:
                  if ((*(uint *)(local_40 + 0x1c) & 0x11000000) != 0x1000000) {
                    FUN_0099dbc0();
                  }
                  if ((*(char *)(local_40 + 0x20) == '\0') || (2 < param_1[9])) break;
                  FUN_00eaeae1();
                  iVar9 = FUN_00eae9a0();
                  *(undefined4 *)(iVar9 + 4) = 0;
                  FUN_00eaebca();
                  FUN_0077a610(extraout_ECX_01,&PTR_DAT_01be70bc);
                  local_1c = FUN_00975000(*(undefined4 *)(iVar6 + 0x1c));
                  if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
                    param_1[4] = 0x1c;
                    FUN_00eaecdd();
                    FUN_00da4c20();
                    FUN_00dfc9c0();
                    return;
                  }
LAB_0081614d:
                  if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
                    FUN_0099dbc0();
                  }
                  param_1[9] = param_1[9] + 1;
                }
              }
            }
            local_24 = FUN_0077acc0();
            if ((*(uint *)(local_24 + 0x1c) & 0x1600000) == 0) {
              param_1[4] = 0x1e;
              FUN_00eaecdd();
              FUN_00da4c20();
              FUN_00dfca00(&PTR_DAT_01568d68);
              return;
            }
LAB_00816020:
            if ((*(uint *)(local_24 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            iVar9 = FUN_00813ad0(param_1[1],(char)param_1[10]);
            if (iVar9 != 0) {
              if (PTR_LAB_01c23e7c != (undefined *)0x0) {
                FUN_00e8f54a();
              }
              local_c0 = FUN_00b848a0();
              if (local_c0 == 0) {
                local_b4 = 0;
                local_220 = 0;
              }
              else {
                local_b4 = local_c0 + 8;
                local_220 = *(undefined4 *)(local_c0 + 4);
              }
              local_c4 = 0;
              local_bc = 0;
              local_b8 = 0;
              local_b0 = local_220;
              FUN_00b847f0(local_220);
              iVar9 = FUN_009061f0(0,0);
              if (iVar9 == 0) {
                FUN_0099d6f0();
              }
              else {
                local_bc = local_bc + 0x14;
              }
              FUN_00777d30();
              FUN_0099d620();
              FUN_0099d5d0();
              FUN_00777d20();
              FUN_00de77e0();
              FUN_0099d5d0();
              fVar13 = (float10)FUN_00777d40();
              FUN_00dde1c0((double)fVar13 / _DAT_018d7590);
              FUN_0099d5d0();
              fVar13 = (float10)FUN_00777d60();
              FUN_00dde1c0((double)fVar13 / _DAT_018d7590);
              FUN_0099d5d0();
              FUN_0099d560();
              FUN_007876b0();
              FUN_00813be0();
              local_40 = FUN_00b6e1a0();
              iVar9 = FUN_00b6fc00();
              if (iVar9 == 0) {
                param_1[4] = 0x1f;
LAB_00817eed:
                FUN_00eaecdd();
                FUN_00e17970(param_1);
                return;
              }
LAB_00815fb1:
              iVar9 = FUN_00b6fc70();
              if (iVar9 == 0) goto LAB_00817f09;
              FUN_00813c20();
              local_1c = FUN_00973a50();
              iVar9 = FUN_0099db90();
              if (iVar9 == 0) {
                param_1[4] = 0x20;
                goto LAB_00815feb;
              }
LAB_00815f5f:
              FUN_0099dba0();
              FUN_007876f0();
              local_1c = FUN_00973a50();
              iVar9 = FUN_0099db90();
              if (iVar9 == 0) {
                param_1[4] = 0x21;
                goto LAB_00815feb;
              }
LAB_00815ee8:
              FUN_0099dba0();
              FUN_00787620();
              FUN_00792dd0();
              local_20 = FUN_00cc8cb0();
              iVar9 = FUN_00b6fc00();
              if (iVar9 == 0) {
                param_1[4] = 0x22;
                FUN_00eaecdd();
                FUN_00e395f0(&PTR_PTR_01568f4c,param_1);
                return;
              }
LAB_00815eb1:
              iVar9 = FUN_00cce6b0();
              if (iVar9 == 0) {
                iVar9 = 0;
              }
              else {
                if (*(int *)(DAT_01c28a74 + 0x14) == 0) {
                  FUN_00eae9a0();
                  FUN_00e9b02d();
                  FUN_00eaebef();
                }
                iVar9 = FUN_00e4e370(&PTR_PTR_01544bf4);
              }
              if ((iVar9 != 0) && (iVar9 = FUN_007794d0(), iVar9 != 0)) {
                FUN_007876b0();
                goto LAB_008185d7;
              }
              FUN_007876b0();
              goto LAB_008185dc;
            }
            param_1[7] = param_1[7] + 1;
            local_158[6] = 0;
            local_158[7] = 0;
            local_158[8] = 0;
            local_158[9] = 0;
            local_158[10] = 0;
            local_158[0xb] = 0;
            FUN_0099d430(3);
            piVar11 = local_158 + 6;
            piVar12 = local_dc;
            for (iVar9 = 6; iVar9 != 0; iVar9 = iVar9 + -1) {
              *piVar12 = *piVar11;
              piVar11 = piVar11 + 1;
              piVar12 = piVar12 + 1;
            }
            FUN_0099d5d0();
            FUN_00de77e0();
            FUN_0099d5d0();
            FUN_00774850();
            FUN_00de77e0();
            FUN_0099d5d0();
            FUN_00774860();
            FUN_00de77e0();
            FUN_0099d5d0();
            FUN_0099d560();
            FUN_007876b0();
            FUN_00787620();
            FUN_00792d90();
            local_18 = FUN_00cc8cb0();
            iVar9 = FUN_00b6fc00();
            if (iVar9 == 0) {
              param_1[4] = 0x23;
              FUN_00eaecdd();
              FUN_00e395f0(&PTR_PTR_01554024,param_1);
              return;
            }
LAB_00815e3d:
            FUN_00cce6b0();
            FUN_00eaeca8();
            if (param_1[2] != 0) {
              fVar13 = (float10)FUN_00778e10();
              local_160 = (double)fVar13 / _DAT_018d7590;
              if ((*(byte *)(param_1 + 7) & 1) == 0) {
                iVar9 = 2;
              }
              else {
                iVar9 = -2;
              }
              fVar13 = (float10)FUN_00778e30();
              FUN_007877c0(0,0,0,(double)fVar13 / _DAT_018d7590,(double)iVar9 + local_160);
              local_1c = FUN_00973a50();
              iVar9 = FUN_0099db90();
              if (iVar9 == 0) {
                param_1[4] = 0x24;
                goto LAB_00815feb;
              }
LAB_00815de8:
              FUN_0099dba0();
              FUN_007876f0();
              local_1c = FUN_00973a50();
              iVar9 = FUN_0099db90();
              if (iVar9 == 0) {
                param_1[4] = 0x25;
                goto LAB_00815feb;
              }
LAB_00815ce3:
              FUN_0099dba0();
            }
            if (5 < param_1[7]) {
              local_158[0] = 0;
              local_158[1] = 0;
              local_158[2] = 0;
              local_158[3] = 0;
              local_158[4] = 0;
              local_158[5] = 0;
              FUN_0099d430(3);
              piVar11 = local_158;
              piVar12 = local_f4;
              for (iVar9 = 6; iVar9 != 0; iVar9 = iVar9 + -1) {
                *piVar12 = *piVar11;
                piVar11 = piVar11 + 1;
                piVar12 = piVar12 + 1;
              }
              FUN_0099d5d0();
              FUN_00774840();
              FUN_0099d620();
              FUN_0099d5d0();
              FUN_00774850();
              FUN_00de77e0();
              FUN_0099d5d0();
              FUN_00774860();
              FUN_00de77e0();
              FUN_0099d5d0();
              FUN_0099d560();
              FUN_007876b0();
              goto LAB_008185d7;
            }
          }
          else {
            local_24 = FUN_0077acc0();
            if ((*(uint *)(local_24 + 0x1c) & 0x1600000) == 0) {
              param_1[4] = 5;
              FUN_00eaecdd();
              FUN_00da4c20();
              FUN_00dfca00(&PTR_DAT_01568d68);
              return;
            }
LAB_00818242:
            if ((*(uint *)(local_24 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            iVar9 = FUN_00813ad0(param_1[1],(char)param_1[10]);
            if (iVar9 == 0) goto LAB_00818b08;
            if (PTR_LAB_01c23e7c != (undefined *)0x0) {
              FUN_00e8f54a();
            }
            local_38 = FUN_00b848a0();
            uVar17 = _UNK_018d75fc;
            uVar16 = _UNK_018d75f8;
            uVar7 = _UNK_018d75f4;
            if (local_38 == 0) {
              local_2c = (undefined4 *)0x0;
              local_218 = 0;
            }
            else {
              local_2c = (undefined4 *)(local_38 + 8);
              local_218 = *(uint *)(local_38 + 4);
            }
            local_3c = 0;
            local_34 = 0;
            local_30 = '\0';
            local_28 = local_218;
            if (local_218 < 0x1c) {
              FUN_0099d6f0();
            }
            else {
              *local_2c = _DAT_018d75f0;
              local_2c[1] = uVar7;
              local_2c[2] = uVar16;
              local_2c[3] = uVar17;
              uVar17 = _UNK_018d760c;
              uVar16 = _UNK_018d7608;
              uVar7 = _UNK_018d7604;
              local_2c[4] = _DAT_018d7600;
              local_2c[5] = uVar7;
              local_2c[6] = uVar16;
              local_2c[7] = uVar17;
              uVar17 = _UNK_018d761c;
              uVar16 = _UNK_018d7618;
              uVar7 = _UNK_018d7614;
              local_2c[8] = _DAT_018d7610;
              local_2c[9] = uVar7;
              local_2c[10] = uVar16;
              local_2c[0xb] = uVar17;
              local_2c[0xc] = 0x741ea5;
              local_2c[0xd] = 0x20003a;
              local_34 = 0x1c;
            }
            iVar10 = *(int *)(iVar9 + 0x20);
            if ((local_30 == '\0') && (iVar10 != 0)) {
              if (local_28 < local_34) goto LAB_00818ece;
              if (local_28 - local_34 < *(uint *)(iVar10 + 4)) goto LAB_00818909;
              FUN_00930280(*(int *)(iVar10 + 4) * 2);
              local_34 = local_34 + *(int *)(iVar10 + 4);
            }
            else {
LAB_00818909:
              FUN_0099d670();
            }
            if (local_28 < local_34) goto LAB_00818ece;
            puVar1 = (undefined4 *)((int)local_2c + local_34 * 2);
            if (local_28 - local_34 < 6) {
              FUN_0099d6f0();
            }
            else {
              *puVar1 = 0x280020;
              puVar1[1] = 0x440049;
              puVar1[2] = 0x20003a;
              local_34 = local_34 + 6;
            }
            FUN_00de77e0();
            if (local_28 < local_34) goto LAB_00818ece;
            puVar1 = (undefined4 *)((int)local_2c + local_34 * 2);
            if (local_28 - local_34 < 7) {
              FUN_0099d6f0();
            }
            else {
              *puVar1 = 0x200029;
              puVar1[1] = 0x1ea10074;
              puVar1[2] = 0x200069;
              *(undefined2 *)(puVar1 + 3) = 0x28;
              local_34 = local_34 + 7;
            }
            FUN_00dde1c0(*(double *)(iVar9 + 4) / _DAT_018d7590);
            if (local_28 < local_34) goto LAB_00818ece;
            if (local_28 - local_34 < 2) {
              FUN_0099d6f0();
            }
            else {
              *(undefined4 *)((int)local_2c + local_34 * 2) = 0x20002c;
              local_34 = local_34 + 2;
            }
            FUN_00dde1c0(*(double *)(iVar9 + 0xc) / _DAT_018d7590);
            uVar17 = _UNK_018d762c;
            uVar16 = _UNK_018d7628;
            uVar7 = _UNK_018d7624;
            if (local_28 < local_34) goto LAB_00818ece;
            puVar1 = (undefined4 *)((int)local_2c + local_34 * 2);
            if (local_28 - local_34 < 0x1b) {
              FUN_0099d6f0();
            }
            else {
              *puVar1 = _DAT_018d7620;
              puVar1[1] = uVar7;
              puVar1[2] = uVar16;
              puVar1[3] = uVar17;
              uVar17 = _UNK_018d763c;
              uVar16 = _UNK_018d7638;
              uVar7 = _UNK_018d7634;
              puVar1[4] = _DAT_018d7630;
              puVar1[5] = uVar7;
              puVar1[6] = uVar16;
              puVar1[7] = uVar17;
              *(undefined1 (*) [16])(puVar1 + 8) = _DAT_018d7640;
              puVar1[0xc] = 0x2e002e;
              *(undefined2 *)(puVar1 + 0xd) = 0x2e;
              local_34 = local_34 + 0x1b;
            }
            FUN_0099d560();
            FUN_007876b0();
            local_40 = FUN_00813be0();
            if ((*(uint *)(local_40 + 0x1c) & 0x1600000) == 0) {
              param_1[4] = 6;
              FUN_00eaecdd();
              FUN_00da4c20();
              FUN_00dfc9c0();
              return;
            }
LAB_008181be:
            if ((*(uint *)(local_40 + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
            if (*(char *)(local_40 + 0x20) == '\0') goto LAB_00818b08;
            local_1c = FUN_00813c20();
            if ((*(uint *)(local_1c + 0x1c) & 0x1600000) == 0) {
              param_1[4] = 7;
              FUN_00eaecdd();
              FUN_00da4c20();
              FUN_00dfc9c0();
              return;
            }
LAB_00818181:
            if ((*(uint *)(local_1c + 0x1c) & 0x11000000) != 0x1000000) {
              FUN_0099dbc0();
            }
LAB_008185d7:
            param_1[1] = 0;
LAB_008185dc:
            param_1[7] = 0;
          }
        }
        if (9 < param_1[5]) {
          FUN_00787620();
          iVar6 = FUN_00eaeae1();
          *(undefined ***)(iVar6 + 8) = &PTR_DAT_01b4cac0;
          FUN_00792de0(iVar6);
          FUN_007876b0();
          goto LAB_00818ede;
        }
      }
      local_18 = FUN_0077abc0();
      if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
        param_1[4] = 0;
        FUN_00eaecdd();
        FUN_00da4c20();
        FUN_00dfca00(&PTR_DAT_01553fd0);
        return;
      }
    } while( true );
  case 1:
    local_1c = param_1[0xd];
    param_1[0xd] = 0;
    local_14 = -1;
    param_1[4] = -1;
    goto LAB_0081849e;
  case 2:
    local_20 = param_1[0xe];
    param_1[0xe] = 0;
    local_14 = -1;
    param_1[4] = -1;
    goto LAB_008183fe;
  case 3:
    local_1c = param_1[0xd];
    param_1[0xd] = 0;
    local_14 = -1;
    param_1[4] = -1;
    goto LAB_00818374;
  case 4:
    local_18 = param_1[0xc];
    param_1[0xc] = 0;
    local_14 = -1;
    param_1[4] = -1;
    goto LAB_008182d2;
  case 5:
    local_24 = param_1[0xf];
    param_1[0xf] = 0;
    local_14 = -1;
    param_1[4] = -1;
    goto LAB_00818242;
  case 6:
    local_40 = param_1[0x10];
    param_1[0x10] = 0;
    local_14 = -1;
    param_1[4] = -1;
    goto LAB_008181be;
  case 7:
    local_1c = param_1[0xd];
    param_1[0xd] = 0;
    local_14 = -1;
    param_1[4] = -1;
    goto LAB_00818181;
  case 8:
    local_44 = param_1[0x11];
    param_1[0x11] = 0;
    local_14 = -1;
    param_1[4] = -1;
    goto LAB_00818028;
  case 9:
    local_1c = param_1[0xd];
    param_1[0xd] = 0;
    local_14 = -1;
    param_1[4] = -1;
    goto LAB_00816d9a;
  case 10:
    local_1c = param_1[0xd];
    param_1[0xd] = 0;
    local_14 = -1;
    param_1[4] = -1;
    goto LAB_00816d08;
  case 0xb:
    local_48 = param_1[0x12];
    param_1[0x12] = 0;
    local_14 = -1;
    param_1[4] = -1;
    goto LAB_00816c29;
  case 0xc:
    local_48 = param_1[0x12];
    param_1[0x12] = 0;
    local_14 = -1;
    param_1[4] = -1;
    goto LAB_00816bb4;
  case 0xd:
    local_1c = param_1[0xd];
    param_1[0xd] = 0;
    local_14 = -1;
    param_1[4] = -1;
    goto LAB_00816b77;
  case 0xe:
    local_40 = param_1[0x10];
    param_1[0x10] = 0;
    local_14 = -1;
    param_1[4] = -1;
    goto LAB_00816ae8;
  case 0xf:
    local_1c = param_1[0xd];
    param_1[0xd] = 0;
    local_14 = -1;
    param_1[4] = -1;
    goto LAB_00816a64;
  case 0x10:
    local_40 = param_1[0x10];
    param_1[0x10] = 0;
    local_14 = -1;
    param_1[4] = -1;
    goto LAB_008169ae;
  case 0x11:
    local_1c = param_1[0xd];
    param_1[0xd] = 0;
    local_14 = -1;
    param_1[4] = -1;
    goto LAB_0081691f;
  case 0x12:
    local_18 = param_1[0xc];
    param_1[0xc] = 0;
    local_14 = -1;
    param_1[4] = -1;
    goto LAB_0081688b;
  case 0x13:
    local_1c = param_1[0xd];
    param_1[0xd] = 0;
    local_14 = -1;
    param_1[4] = -1;
    goto LAB_00816781;
  case 0x14:
    local_44 = param_1[0x11];
    param_1[0x11] = 0;
    local_14 = -1;
    param_1[4] = -1;
    goto LAB_008166ad;
  case 0x15:
    local_1c = param_1[0xd];
    param_1[0xd] = 0;
    local_14 = -1;
    param_1[4] = -1;
    goto LAB_00816624;
  case 0x16:
    local_1c = param_1[0xd];
    param_1[0xd] = 0;
    local_14 = -1;
    param_1[4] = -1;
    goto LAB_008165eb;
  case 0x17:
    local_40 = param_1[0x10];
    param_1[0x10] = 0;
    local_14 = -1;
    param_1[4] = -1;
    goto LAB_00816554;
  case 0x18:
    local_40 = param_1[0x10];
    param_1[0x10] = 0;
    local_14 = -1;
    param_1[4] = -1;
    goto LAB_008164b1;
  case 0x19:
    local_18 = param_1[0xc];
    param_1[0xc] = 0;
    local_14 = -1;
    param_1[4] = -1;
    goto LAB_008162c7;
  case 0x1a:
    local_1c = param_1[0xd];
    param_1[0xd] = 0;
    local_14 = -1;
    param_1[4] = -1;
    goto LAB_0081620f;
  case 0x1b:
    local_1c = param_1[0xd];
    param_1[0xd] = 0;
    local_14 = -1;
    param_1[4] = -1;
    goto LAB_00816186;
  case 0x1c:
    local_1c = param_1[0xd];
    param_1[0xd] = 0;
    local_14 = -1;
    param_1[4] = -1;
    goto LAB_0081614d;
  case 0x1d:
    local_40 = param_1[0x10];
    param_1[0x10] = 0;
    local_14 = -1;
    param_1[4] = -1;
    goto LAB_008160b0;
  case 0x1e:
    local_24 = param_1[0xf];
    param_1[0xf] = 0;
    local_14 = -1;
    param_1[4] = -1;
    goto LAB_00816020;
  case 0x1f:
    local_40 = param_1[0x10];
    param_1[0x10] = 0;
    local_14 = -1;
    param_1[4] = -1;
    goto LAB_00815fb1;
  case 0x20:
    local_1c = param_1[0xd];
    param_1[0xd] = 0;
    local_14 = -1;
    param_1[4] = -1;
    goto LAB_00815f5f;
  case 0x21:
    local_1c = param_1[0xd];
    param_1[0xd] = 0;
    local_14 = -1;
    param_1[4] = -1;
    goto LAB_00815ee8;
  case 0x22:
    local_20 = param_1[0xe];
    param_1[0xe] = 0;
    local_14 = -1;
    param_1[4] = -1;
    goto LAB_00815eb1;
  case 0x23:
    local_18 = param_1[0xc];
    param_1[0xc] = 0;
    local_14 = -1;
    param_1[4] = -1;
    goto LAB_00815e3d;
  case 0x24:
    local_1c = param_1[0xd];
    param_1[0xd] = 0;
    local_14 = -1;
    param_1[4] = -1;
    goto LAB_00815de8;
  case 0x25:
    local_1c = param_1[0xd];
    param_1[0xd] = 0;
    local_14 = -1;
    param_1[4] = -1;
    goto LAB_00815ce3;
  case 0x26:
    local_1c = param_1[0xd];
    param_1[0xd] = 0;
    local_14 = -1;
    param_1[4] = -1;
    goto LAB_00815c92;
  case 0x27:
    local_1c = param_1[0xd];
    param_1[0xd] = 0;
    break;
  case 0x28:
    local_1c = param_1[0xd];
    param_1[0xd] = 0;
    local_14 = -1;
    param_1[4] = -1;
    goto LAB_00815b35;
  case 0x29:
    local_1c = param_1[0xd];
    param_1[0xd] = 0;
    param_1[4] = -1;
LAB_00815ad4:
    FUN_0099dba0();
    FUN_007876b0();
    FUN_00787620();
    iVar6 = FUN_00eaeae1();
    *(undefined ***)(iVar6 + 8) = &PTR_DAT_01b4cac0;
    FUN_00792de0(iVar6);
LAB_00818ede:
    param_1[4] = -2;
    param_1[1] = 0;
    FUN_0099cd70();
    return;
  case 0x2a:
    local_40 = param_1[0x10];
    param_1[0x10] = 0;
    local_14 = -1;
    param_1[4] = -1;
    goto LAB_00815a0e;
  case 0x2b:
    local_1c = param_1[0xd];
    param_1[0xd] = 0;
    break;
  default:
    FUN_007876b0();
    FUN_00787780();
    param_1[5] = 0;
    param_1[6] = -1;
    goto LAB_008185d7;
  }
  local_14 = -1;
  param_1[4] = -1;
  goto LAB_00815c67;
}

