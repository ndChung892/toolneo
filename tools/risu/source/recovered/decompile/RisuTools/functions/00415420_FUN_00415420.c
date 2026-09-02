/* Address: 00415420 | Ghidra name: FUN_00415420 */

undefined ** __fastcall
FUN_00415420(int param_1,uint param_2,uint param_3,uint param_4,undefined4 param_5,
            undefined4 param_6)

{
  wchar_t *pwVar1;
  undefined4 *puVar2;
  uint *puVar3;
  ushort uVar4;
  uint uVar5;
  uint uVar6;
  uint uVar7;
  uint uVar8;
  undefined4 uVar9;
  undefined4 uVar10;
  undefined4 uVar11;
  int iVar12;
  undefined **ppuVar13;
  int iVar14;
  uint uVar15;
  uint local_68;
  int local_60;
  uint local_5c;
  uint local_50;
  int local_48;
  uint local_44;
  uint local_34;
  int local_2c;
  uint local_28;
  int local_20;
  int local_1c;
  int local_18;
  undefined1 local_14;
  byte local_13;
  
  iVar12 = -0x60;
  do {
    *(undefined4 *)(&stack0xfffffff0 + iVar12) = 0;
    *(undefined4 *)(&stack0xfffffff4 + iVar12) = 0;
    *(undefined4 *)(&stack0xfffffff8 + iVar12) = 0;
    *(undefined4 *)(&stack0xfffffffc + iVar12) = 0;
    puVar2 = (undefined4 *)(&stack0x00000000 + iVar12);
    *puVar2 = 0;
    puVar2[1] = 0;
    puVar2[2] = 0;
    puVar2[3] = 0;
    *(undefined4 *)((int)&param_6 + iVar12) = 0;
    *(undefined4 *)(&stack0x00000014 + iVar12) = 0;
    *(undefined4 *)(&stack0x00000018 + iVar12) = 0;
    *(undefined4 *)(&stack0x0000001c + iVar12) = 0;
    iVar12 = iVar12 + 0x30;
  } while (iVar12 != 0);
  local_1c = param_1;
  if ((param_2 & 0xffff) == (param_4 & 0xffff)) {
    FUN_0099d430(1);
    if (local_34 <= local_28) {
      if (local_28 - local_34 < 0x42) {
        FUN_0099d6f0();
      }
      else {
        FUN_00930280(0x84);
        local_34 = local_34 + 0x42;
      }
      FUN_00dd0120();
      if (local_34 <= local_28) {
        if (local_28 - local_34 < 2) {
          FUN_0099d6f0();
        }
        else {
          *(undefined4 *)(local_2c + local_34 * 2) = 0x2e0027;
        }
        FUN_00eae9a0();
        FUN_0099d560();
        FUN_009115d0(&PTR_DAT_01be3ba8);
                    /* WARNING: Subroutine does not return */
        FUN_00eaeefb();
      }
    }
LAB_00415922:
                    /* WARNING: Subroutine does not return */
    FUN_009318f0();
  }
  if (param_1 != 0) {
    uVar5 = *(uint *)(param_1 + 4);
    local_18 = FUN_00eae9a0();
    *(undefined ***)(local_18 + 4) = &PTR_DAT_01c06be0;
    local_20 = 0;
    local_13 = (byte)param_3 & 1;
    local_14 = (param_3 & 2) != 0;
    iVar12 = 0;
    if ((int)uVar5 < 1) {
      local_20 = 0;
    }
    else {
      do {
        uVar4 = *(ushort *)(param_1 + 8 + iVar12 * 2);
        if ((uint)uVar4 == (param_2 & 0xffff)) {
          local_20 = local_20 + 1;
        }
        else if ((uint)uVar4 == (param_4 & 0xffff)) {
          if (local_20 < 1) {
            FUN_0099d430(2);
            uVar11 = u_Unmatched_closing_bracke__at_pos_018cc410._12_4_;
            uVar10 = u_Unmatched_closing_bracke__at_pos_018cc410._8_4_;
            uVar9 = u_Unmatched_closing_bracke__at_pos_018cc410._4_4_;
            if (local_50 <= local_44) {
              pwVar1 = (wchar_t *)(local_48 + local_50 * 2);
              if (local_44 - local_50 < 0x1b) {
                FUN_0099d6f0();
              }
              else {
                *(undefined4 *)pwVar1 = u_Unmatched_closing_bracke__at_pos_018cc410._0_4_;
                *(undefined4 *)(pwVar1 + 2) = uVar9;
                *(undefined4 *)(pwVar1 + 4) = uVar10;
                *(undefined4 *)(pwVar1 + 6) = uVar11;
                uVar11 = u_Unmatched_closing_bracke__at_pos_018cc410._28_4_;
                uVar10 = u_Unmatched_closing_bracke__at_pos_018cc410._24_4_;
                uVar9 = u_Unmatched_closing_bracke__at_pos_018cc410._20_4_;
                *(undefined4 *)(pwVar1 + 8) = u_Unmatched_closing_bracke__at_pos_018cc410._16_4_;
                *(undefined4 *)(pwVar1 + 10) = uVar9;
                *(undefined4 *)(pwVar1 + 0xc) = uVar10;
                *(undefined4 *)(pwVar1 + 0xe) = uVar11;
                uVar11 = u_Unmatched_closing_bracke__at_pos_018cc410._44_4_;
                uVar10 = u_Unmatched_closing_bracke__at_pos_018cc410._40_4_;
                uVar9 = u_Unmatched_closing_bracke__at_pos_018cc410._36_4_;
                *(undefined4 *)(pwVar1 + 0x10) = u_Unmatched_closing_bracke__at_pos_018cc410._32_4_;
                *(undefined4 *)(pwVar1 + 0x12) = uVar9;
                *(undefined4 *)(pwVar1 + 0x14) = uVar10;
                *(undefined4 *)(pwVar1 + 0x16) = uVar11;
                pwVar1[0x18] = L't';
                pwVar1[0x19] = L' ';
                pwVar1[0x1a] = L'\'';
                local_50 = local_50 + 0x1b;
              }
              FUN_00dd0120();
              uVar11 = u_Unmatched_closing_bracke__at_pos_018cc410._60_4_;
              uVar10 = u_Unmatched_closing_bracke__at_pos_018cc410._56_4_;
              uVar9 = u_Unmatched_closing_bracke__at_pos_018cc410._52_4_;
              if (local_50 <= local_44) {
                pwVar1 = (wchar_t *)(local_48 + local_50 * 2);
                if (local_44 - local_50 < 0xe) {
                  FUN_0099d6f0();
                }
                else {
                  *(undefined4 *)pwVar1 = u_Unmatched_closing_bracke__at_pos_018cc410._48_4_;
                  *(undefined4 *)(pwVar1 + 2) = uVar9;
                  *(undefined4 *)(pwVar1 + 4) = uVar10;
                  *(undefined4 *)(pwVar1 + 6) = uVar11;
                  pwVar1[8] = L'i';
                  pwVar1[9] = L't';
                  pwVar1[10] = L'i';
                  pwVar1[0xb] = L'o';
                  pwVar1[0xc] = L'n';
                  pwVar1[0xd] = L' ';
                  local_50 = local_50 + 0xe;
                }
                FUN_00de77e0();
                if (local_50 <= local_44) {
                  if (local_44 == local_50) {
                    FUN_0099d6f0();
                  }
                  else {
                    *(undefined2 *)(local_48 + local_50 * 2) = 0x2e;
                  }
                  FUN_00eae9a0();
                  FUN_0099d560();
                  FUN_0091d220();
                    /* WARNING: Subroutine does not return */
                  FUN_00eaeefb();
                }
              }
            }
            goto LAB_00415922;
          }
          local_20 = local_20 + -1;
        }
        else {
          if (uVar4 - 1 < 0xfe) {
            iVar14 = FUN_00930e00(param_6);
          }
          else {
            iVar14 = FUN_00de10c0(param_6);
          }
          if ((iVar14 != 0) && (local_20 == 0)) {
            FUN_00415940(&local_1c);
          }
        }
        iVar12 = iVar12 + 1;
      } while (iVar12 < (int)uVar5);
    }
    if (local_20 != 0) {
      FUN_0099d430(1);
      uVar11 = u_Unmatched_closing_bracke__at_pos_018cc410._12_4_;
      uVar10 = u_Unmatched_closing_bracke__at_pos_018cc410._8_4_;
      uVar9 = u_Unmatched_closing_bracke__at_pos_018cc410._4_4_;
      if (local_68 <= local_5c) {
        pwVar1 = (wchar_t *)(local_60 + local_68 * 2);
        if (local_5c - local_68 < 0x1b) {
          FUN_0099d6f0();
        }
        else {
          *(undefined4 *)pwVar1 = u_Unmatched_closing_bracke__at_pos_018cc410._0_4_;
          *(undefined4 *)(pwVar1 + 2) = uVar9;
          *(undefined4 *)(pwVar1 + 4) = uVar10;
          *(undefined4 *)(pwVar1 + 6) = uVar11;
          uVar11 = u_Unmatched_closing_bracke__at_pos_018cc410._76_4_;
          uVar10 = u_Unmatched_closing_bracke__at_pos_018cc410._72_4_;
          uVar9 = u_Unmatched_closing_bracke__at_pos_018cc410._68_4_;
          *(undefined4 *)(pwVar1 + 8) = u_Unmatched_closing_bracke__at_pos_018cc410._64_4_;
          *(undefined4 *)(pwVar1 + 10) = uVar9;
          *(undefined4 *)(pwVar1 + 0xc) = uVar10;
          *(undefined4 *)(pwVar1 + 0xe) = uVar11;
          uVar11 = u_Unmatched_closing_bracke__at_pos_018cc410._44_4_;
          uVar10 = u_Unmatched_closing_bracke__at_pos_018cc410._40_4_;
          uVar9 = u_Unmatched_closing_bracke__at_pos_018cc410._36_4_;
          *(undefined4 *)(pwVar1 + 0x10) = u_Unmatched_closing_bracke__at_pos_018cc410._32_4_;
          *(undefined4 *)(pwVar1 + 0x12) = uVar9;
          *(undefined4 *)(pwVar1 + 0x14) = uVar10;
          *(undefined4 *)(pwVar1 + 0x16) = uVar11;
          pwVar1[0x18] = L't';
          pwVar1[0x19] = L' ';
          pwVar1[0x1a] = L'\'';
          local_68 = local_68 + 0x1b;
        }
        FUN_00dd0120();
        uVar11 = u_Unmatched_closing_bracke__at_pos_018cc410._92_4_;
        uVar10 = u_Unmatched_closing_bracke__at_pos_018cc410._88_4_;
        uVar9 = u_Unmatched_closing_bracke__at_pos_018cc410._84_4_;
        if (local_68 <= local_5c) {
          pwVar1 = (wchar_t *)(local_60 + local_68 * 2);
          if (local_5c - local_68 < 0x12) {
            FUN_0099d6f0();
          }
          else {
            *(undefined4 *)pwVar1 = u_Unmatched_closing_bracke__at_pos_018cc410._80_4_;
            *(undefined4 *)(pwVar1 + 2) = uVar9;
            *(undefined4 *)(pwVar1 + 4) = uVar10;
            *(undefined4 *)(pwVar1 + 6) = uVar11;
            uVar11 = u_Unmatched_closing_bracke__at_pos_018cc410._108_4_;
            uVar10 = u_Unmatched_closing_bracke__at_pos_018cc410._104_4_;
            uVar9 = u_Unmatched_closing_bracke__at_pos_018cc410._100_4_;
            *(undefined4 *)(pwVar1 + 8) = u_Unmatched_closing_bracke__at_pos_018cc410._96_4_;
            *(undefined4 *)(pwVar1 + 10) = uVar9;
            *(undefined4 *)(pwVar1 + 0xc) = uVar10;
            *(undefined4 *)(pwVar1 + 0xe) = uVar11;
            pwVar1[0x10] = L'g';
            pwVar1[0x11] = L'.';
          }
          FUN_00eae9a0();
          FUN_0099d560();
          FUN_0091d220();
                    /* WARNING: Subroutine does not return */
          FUN_00eaeefb();
        }
      }
      goto LAB_00415922;
    }
    FUN_00415940(&local_1c);
    uVar6 = *(uint *)(local_18 + 8);
    if (uVar6 != 0) {
      ppuVar13 = (undefined **)FUN_00eaeae1();
      uVar15 = 0;
      if (0 < (int)uVar6) {
        do {
          if (*(uint *)(local_18 + 8) <= uVar15) {
                    /* WARNING: Subroutine does not return */
            FUN_009319a0();
          }
          if (*(uint *)(*(int *)(local_18 + 4) + 4) <= uVar15) {
LAB_00415928:
                    /* WARNING: Subroutine does not return */
            FUN_009c2bf0();
          }
          puVar3 = (uint *)(*(int *)(local_18 + 4) + 8 + uVar15 * 8);
          uVar7 = *puVar3;
          uVar8 = puVar3[1];
          if ((uVar5 < uVar7) || (uVar5 - uVar7 < uVar8)) goto LAB_00415922;
          FUN_009060f0(param_1 + 8 + uVar7 * 2,uVar8);
          if (uVar6 <= uVar15) goto LAB_00415928;
          FUN_00eaebca();
          uVar15 = uVar15 + 1;
        } while ((int)uVar15 < *(int *)(local_18 + 8));
      }
      return ppuVar13;
    }
  }
  return &PTR_DAT_01c0f36c;
}

