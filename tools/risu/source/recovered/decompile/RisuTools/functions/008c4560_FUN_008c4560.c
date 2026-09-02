/* Address: 008c4560 | Ghidra name: FUN_008c4560 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined4 __fastcall FUN_008c4560(int param_1)

{
  undefined4 *puVar1;
  bool bVar2;
  uint uVar3;
  int iVar4;
  int iVar5;
  uint uVar6;
  undefined4 uVar7;
  undefined **ppuVar8;
  uint uVar9;
  uint *puVar10;
  uint *puVar11;
  undefined1 auVar12 [16];
  uint uVar15;
  undefined1 auVar13 [16];
  undefined1 auVar14 [16];
  undefined1 auVar16 [16];
  uint uVar17;
  uint uVar18;
  uint uVar19;
  uint uVar20;
  undefined **local_84;
  uint local_68 [13];
  uint local_34;
  undefined4 local_30;
  uint local_2c;
  int local_28;
  uint local_1c;
  int local_18;
  int local_14;
  
  local_68[0] = 0;
  local_68[1] = 0;
  local_68[2] = 0;
  local_68[3] = 0;
  local_68[4] = 0;
  local_68[5] = 0;
  local_68[6] = 0;
  local_68[7] = 0;
  local_68[8] = 0;
  local_68[9] = 0;
  local_68[10] = 0;
  local_68[0xb] = 0;
  local_14 = DAT_01c56b40;
  if ((param_1 == 0) || (iVar4 = *(int *)(param_1 + 4), iVar4 == 0)) goto LAB_008c48b0;
  bVar2 = false;
  local_30 = 0x50;
  if ((6 < iVar4) &&
     ((((*(uint *)(param_1 + 8) | 0x200020) == 0x740068 &&
       (*(uint *)(param_1 + 0xc) | 0x200020) == 0x700074) && *(int *)(param_1 + 0x10) == 0x2f003a)
      && *(short *)(param_1 + 0x14) == 0x2f)) goto LAB_008c4731;
  if (iVar4 < 8) {
LAB_008c461a:
    if (iVar4 < 9) {
LAB_008c46a1:
      if (9 < iVar4) {
        auVar14._0_4_ =
             -(uint)((*(uint *)(param_1 + 8) | u_ocks4___socks5__ocks5____018d96b0._48_4_) ==
                     u_socks4a__018d96f0._0_4_ &&
                    (*(uint *)(param_1 + 0xc) | u_socks4a__018d96f0._16_4_) == _DAT_018d9710);
        auVar14._4_4_ =
             -(uint)((*(uint *)(param_1 + 0xc) | u_ocks4___socks5__ocks5____018d96b0._52_4_) ==
                     u_socks4a__018d96f0._4_4_ &&
                    (*(uint *)(param_1 + 0x10) | u_socks4a__018d96f0._20_4_) == _UNK_018d9714);
        auVar14._8_4_ =
             -(uint)((*(uint *)(param_1 + 0x10) | u_ocks4___socks5__ocks5____018d96b0._56_4_) ==
                     u_socks4a__018d96f0._8_4_ &&
                    (*(uint *)(param_1 + 0x14) | _UNK_018d9708) == _UNK_018d9718);
        auVar14._12_4_ =
             -(uint)((*(uint *)(param_1 + 0x14) | _UNK_018d96ec) == u_socks4a__018d96f0._12_4_ &&
                    (*(uint *)(param_1 + 0x18) | _UNK_018d970c) == _UNK_018d971c);
        if ((ushort)((ushort)(SUB161(auVar14 >> 7,0) & 1) |
                     (ushort)(SUB161(auVar14 >> 0xf,0) & 1) << 1 |
                     (ushort)(SUB161(auVar14 >> 0x17,0) & 1) << 2 |
                     (ushort)(SUB161(auVar14 >> 0x1f,0) & 1) << 3 |
                     (ushort)(SUB161(auVar14 >> 0x27,0) & 1) << 4 |
                     (ushort)(SUB161(auVar14 >> 0x2f,0) & 1) << 5 |
                     (ushort)(SUB161(auVar14 >> 0x37,0) & 1) << 6 |
                     (ushort)(SUB161(auVar14 >> 0x3f,0) & 1) << 7 |
                     (ushort)(SUB161(auVar14 >> 0x47,0) & 1) << 8 |
                     (ushort)(SUB161(auVar14 >> 0x4f,0) & 1) << 9 |
                     (ushort)(SUB161(auVar14 >> 0x57,0) & 1) << 10 |
                     (ushort)(SUB161(auVar14 >> 0x5f,0) & 1) << 0xb |
                     (ushort)((byte)(auVar14._12_4_ >> 7) & 1) << 0xc |
                     (ushort)((byte)(auVar14._12_4_ >> 0xf) & 1) << 0xd |
                     (ushort)((byte)(auVar14._12_4_ >> 0x17) & 1) << 0xe |
                    (ushort)(byte)(auVar14._12_4_ >> 0x1f) << 0xf) == 0xffff) goto LAB_008c4731;
      }
      goto LAB_008c4726;
    }
    uVar3 = *(uint *)(param_1 + 8) | u__018d9670._0_4_;
    uVar6 = *(uint *)(param_1 + 0xc) | u__018d9670._4_4_;
    uVar9 = *(uint *)(param_1 + 0x10) | u__018d9670._8_4_;
    uVar15 = *(uint *)(param_1 + 0x14) | _UNK_018d967c;
    uVar17 = *(uint *)(param_1 + 10) | u_https___socks4___018d9680._32_4_;
    uVar18 = *(uint *)(param_1 + 0xe) | u_https___socks4___018d9680._36_4_;
    uVar19 = *(uint *)(param_1 + 0x12) | u_https___socks4___018d9680._40_4_;
    uVar20 = *(uint *)(param_1 + 0x16) | _UNK_018d96ac;
    auVar16._0_4_ =
         -(uint)(uVar3 == u_https___socks4___018d9680._16_4_ &&
                uVar17 == u_ocks4___socks5__ocks5____018d96b0._0_4_);
    auVar16._4_4_ =
         -(uint)(uVar6 == u_https___socks4___018d9680._20_4_ &&
                uVar18 == u_ocks4___socks5__ocks5____018d96b0._4_4_);
    auVar16._8_4_ =
         -(uint)(uVar9 == u_https___socks4___018d9680._24_4_ &&
                uVar19 == u_ocks4___socks5__ocks5____018d96b0._8_4_);
    auVar16._12_4_ =
         -(uint)(uVar15 == u_https___socks4___018d9680._28_4_ &&
                uVar20 == u_ocks4___socks5__ocks5____018d96b0._12_4_);
    if ((ushort)((ushort)(SUB161(auVar16 >> 7,0) & 1) | (ushort)(SUB161(auVar16 >> 0xf,0) & 1) << 1
                 | (ushort)(SUB161(auVar16 >> 0x17,0) & 1) << 2 |
                 (ushort)(SUB161(auVar16 >> 0x1f,0) & 1) << 3 |
                 (ushort)(SUB161(auVar16 >> 0x27,0) & 1) << 4 |
                 (ushort)(SUB161(auVar16 >> 0x2f,0) & 1) << 5 |
                 (ushort)(SUB161(auVar16 >> 0x37,0) & 1) << 6 |
                 (ushort)(SUB161(auVar16 >> 0x3f,0) & 1) << 7 |
                 (ushort)(SUB161(auVar16 >> 0x47,0) & 1) << 8 |
                 (ushort)(SUB161(auVar16 >> 0x4f,0) & 1) << 9 |
                 (ushort)(SUB161(auVar16 >> 0x57,0) & 1) << 10 |
                 (ushort)(SUB161(auVar16 >> 0x5f,0) & 1) << 0xb |
                 (ushort)((byte)(auVar16._12_4_ >> 7) & 1) << 0xc |
                 (ushort)((byte)(auVar16._12_4_ >> 0xf) & 1) << 0xd |
                 (ushort)((byte)(auVar16._12_4_ >> 0x17) & 1) << 0xe |
                (ushort)(byte)(auVar16._12_4_ >> 0x1f) << 0xf) != 0xffff) {
      auVar13._0_4_ =
           -(uint)(uVar3 == u_ocks4___socks5__ocks5____018d96b0._16_4_ &&
                  uVar17 == u_ocks4___socks5__ocks5____018d96b0._32_4_);
      auVar13._4_4_ =
           -(uint)(uVar6 == u_ocks4___socks5__ocks5____018d96b0._20_4_ &&
                  uVar18 == u_ocks4___socks5__ocks5____018d96b0._36_4_);
      auVar13._8_4_ =
           -(uint)(uVar9 == u_ocks4___socks5__ocks5____018d96b0._24_4_ &&
                  uVar19 == u_ocks4___socks5__ocks5____018d96b0._40_4_);
      auVar13._12_4_ =
           -(uint)(uVar15 == u_ocks4___socks5__ocks5____018d96b0._28_4_ &&
                  uVar20 == u_ocks4___socks5__ocks5____018d96b0._44_4_);
      if ((ushort)((ushort)(SUB161(auVar13 >> 7,0) & 1) |
                   (ushort)(SUB161(auVar13 >> 0xf,0) & 1) << 1 |
                   (ushort)(SUB161(auVar13 >> 0x17,0) & 1) << 2 |
                   (ushort)(SUB161(auVar13 >> 0x1f,0) & 1) << 3 |
                   (ushort)(SUB161(auVar13 >> 0x27,0) & 1) << 4 |
                   (ushort)(SUB161(auVar13 >> 0x2f,0) & 1) << 5 |
                   (ushort)(SUB161(auVar13 >> 0x37,0) & 1) << 6 |
                   (ushort)(SUB161(auVar13 >> 0x3f,0) & 1) << 7 |
                   (ushort)(SUB161(auVar13 >> 0x47,0) & 1) << 8 |
                   (ushort)(SUB161(auVar13 >> 0x4f,0) & 1) << 9 |
                   (ushort)(SUB161(auVar13 >> 0x57,0) & 1) << 10 |
                   (ushort)(SUB161(auVar13 >> 0x5f,0) & 1) << 0xb |
                   (ushort)((byte)(auVar13._12_4_ >> 7) & 1) << 0xc |
                   (ushort)((byte)(auVar13._12_4_ >> 0xf) & 1) << 0xd |
                   (ushort)((byte)(auVar13._12_4_ >> 0x17) & 1) << 0xe |
                  (ushort)(byte)(auVar13._12_4_ >> 0x1f) << 0xf) != 0xffff) goto LAB_008c46a1;
    }
LAB_008c4731:
    param_1 = FUN_00909650();
  }
  else {
    auVar12._0_4_ =
         -(uint)((*(uint *)(param_1 + 8) | u__018d9670._0_4_) == u_https___socks4___018d9680._0_4_);
    auVar12._4_4_ =
         -(uint)((*(uint *)(param_1 + 0xc) | u__018d9670._4_4_) == u_https___socks4___018d9680._4_4_
                );
    auVar12._8_4_ =
         -(uint)((*(uint *)(param_1 + 0x10) | u__018d9670._8_4_) ==
                u_https___socks4___018d9680._8_4_);
    auVar12._12_4_ =
         -(uint)((*(uint *)(param_1 + 0x14) | _UNK_018d967c) == u_https___socks4___018d9680._12_4_);
    if ((ushort)((ushort)(SUB161(auVar12 >> 7,0) & 1) | (ushort)(SUB161(auVar12 >> 0xf,0) & 1) << 1
                 | (ushort)(SUB161(auVar12 >> 0x17,0) & 1) << 2 |
                 (ushort)(SUB161(auVar12 >> 0x1f,0) & 1) << 3 |
                 (ushort)(SUB161(auVar12 >> 0x27,0) & 1) << 4 |
                 (ushort)(SUB161(auVar12 >> 0x2f,0) & 1) << 5 |
                 (ushort)(SUB161(auVar12 >> 0x37,0) & 1) << 6 |
                 (ushort)(SUB161(auVar12 >> 0x3f,0) & 1) << 7 |
                 (ushort)(SUB161(auVar12 >> 0x47,0) & 1) << 8 |
                 (ushort)(SUB161(auVar12 >> 0x4f,0) & 1) << 9 |
                 (ushort)(SUB161(auVar12 >> 0x57,0) & 1) << 10 |
                 (ushort)(SUB161(auVar12 >> 0x5f,0) & 1) << 0xb |
                 (ushort)((byte)(auVar12._12_4_ >> 7) & 1) << 0xc |
                 (ushort)((byte)(auVar12._12_4_ >> 0xf) & 1) << 0xd |
                 (ushort)((byte)(auVar12._12_4_ >> 0x17) & 1) << 0xe |
                (ushort)(byte)(auVar12._12_4_ >> 0x1f) << 0xf) != 0xffff) goto LAB_008c461a;
    bVar2 = true;
    local_30 = 0x1bb;
LAB_008c4726:
    if (bVar2) goto LAB_008c4731;
  }
  ppuVar8 = (undefined **)0x0;
  local_84 = (undefined **)0x0;
  uVar3 = FUN_00909cd0();
  if (uVar3 != 0xffffffff) {
    if (*(uint *)(param_1 + 4) < uVar3) goto LAB_008c4c08;
    local_34 = uVar3;
    ppuVar8 = (undefined **)FUN_00a07b00(param_1 + 8,uVar3);
    param_1 = FUN_00909650();
    iVar4 = FUN_00e1dd60(ppuVar8[1]);
    if (iVar4 != -1) {
      ppuVar8 = (undefined **)FUN_00909690(iVar4);
      local_84 = (undefined **)FUN_00909650();
    }
  }
  uVar3 = *(uint *)(param_1 + 4);
  iVar5 = FUN_00e1dd60(uVar3);
  uVar6 = FUN_00909cd0();
  iVar4 = param_1;
  if ((uVar6 != 0xffffffff) && ((iVar5 == -1 || (iVar5 <= (int)uVar6)))) {
    local_34 = uVar6;
    iVar4 = FUN_00909690(uVar6);
    uVar6 = local_34 + 1;
    if ((int)uVar6 < (int)uVar3) {
      if ((int)uVar6 < 0) {
        do {
          if (uVar3 <= uVar6) {
                    /* WARNING: Subroutine does not return */
            FUN_009c2bf0();
          }
          uVar9 = (uint)*(ushort *)(param_1 + 8 + uVar6 * 2);
          local_68[0xc] = uVar6;
          if (uVar9 < 0x100) {
            if (9 < uVar9 - 0x30) break;
          }
          else {
            iVar5 = FUN_00945aa0();
            uVar6 = local_68[0xc];
            if (iVar5 != 8) break;
          }
          uVar6 = local_68[0xc] + 1;
        } while ((int)uVar6 < (int)uVar3);
      }
      else {
        do {
          uVar9 = (uint)*(ushort *)(param_1 + 8 + uVar6 * 2);
          local_68[0xc] = uVar6;
          if (uVar9 < 0x100) {
            if (9 < uVar9 - 0x30) break;
          }
          else {
            iVar5 = FUN_00945aa0();
            uVar6 = local_68[0xc];
            if (iVar5 != 8) break;
          }
          uVar6 = local_68[0xc] + 1;
        } while ((int)uVar6 < (int)uVar3);
      }
    }
    uVar9 = local_34 + 1;
    uVar6 = (uVar6 - local_34) - 1;
    if ((uVar3 < uVar9) || (uVar3 - uVar9 < uVar6)) {
LAB_008c4c08:
                    /* WARNING: Subroutine does not return */
      FUN_00931d90();
    }
    iVar5 = param_1 + 8 + uVar9 * 2;
    FUN_00958ea0(iVar5,uVar6);
    iVar5 = FUN_00dd3d00(&local_30,iVar5,uVar6);
    if (iVar5 != 0) {
LAB_008c48b0:
      uVar7 = 0;
      if (local_14 != DAT_01c56b40) {
        uVar7 = FUN_00ebc890();
      }
      return uVar7;
    }
  }
  iVar5 = FUN_00eae9a0();
  FUN_00a08630(iVar4);
  FUN_00a087a0();
  if (ppuVar8 != (undefined **)0x0) {
    if (PTR_FUN_01c22370 != (undefined *)0x0) {
      FUN_00e8eea6();
    }
    FUN_00a09140(*(undefined4 *)(DAT_01c29130 + 4));
    FUN_00eaebca();
    *(undefined1 *)(iVar5 + 0x28) = 1;
  }
  if (local_84 != (undefined **)0x0) {
    if (PTR_FUN_01c22370 != (undefined *)0x0) {
      FUN_00e8eea6();
    }
    FUN_00a09140(*(undefined4 *)(DAT_01c29130 + 4));
    FUN_00eaebca();
    *(undefined1 *)(iVar5 + 0x28) = 1;
  }
  uVar7 = FUN_00a08880();
  if (((ppuVar8 == &PTR_DAT_01b39360) ||
      ((ppuVar8 != (undefined **)0x0 && (ppuVar8[1] == (undefined *)0x0)))) &&
     ((local_84 == &PTR_DAT_01b39360 ||
      ((local_84 != (undefined **)0x0 && (local_84[1] == (undefined *)0x0)))))) {
    iVar4 = FUN_00a01110();
    if (iVar4 == 0) {
      iVar5 = 0;
      uVar3 = 0;
    }
    else {
      iVar5 = iVar4 + 8;
      uVar3 = *(uint *)(iVar4 + 4);
    }
    iVar4 = FUN_00928f00(&local_2c,3,iVar5,uVar3);
    if (iVar4 == 3) {
      FUN_0099d430(2);
      puVar10 = local_68;
      puVar11 = local_68 + 6;
      for (iVar4 = 6; iVar4 != 0; iVar4 = iVar4 + -1) {
        *puVar11 = *puVar10;
        puVar10 = puVar10 + 1;
        puVar11 = puVar11 + 1;
      }
      if ((int)local_2c < 0) {
        local_2c = local_2c + 1 + uVar3;
      }
      if (local_28 < 0) {
        local_28 = local_28 + 1 + uVar3;
      }
      uVar6 = local_28 - local_2c;
      if (((local_2c <= uVar3) && (uVar6 <= uVar3 - local_2c)) && (local_68[8] <= local_68[0xb])) {
        if (local_68[0xb] - local_68[8] < uVar6) {
          FUN_0099d740(iVar5 + local_2c * 2,uVar6);
        }
        else {
          FUN_00930280(uVar6 * 2);
          local_68[8] = uVar6 + local_68[8];
        }
        if (local_68[8] <= local_68[0xb]) {
          puVar1 = (undefined4 *)(local_68[10] + local_68[8] * 2);
          if (local_68[0xb] - local_68[8] < 4) {
            FUN_0099d6f0();
          }
          else {
            *puVar1 = 0x2f002f;
            puVar1[1] = 0x40003a;
            local_68[8] = local_68[8] + 4;
          }
          if ((int)local_1c < 0) {
            local_1c = local_1c + 1 + uVar3;
          }
          if (local_18 < 0) {
            local_18 = local_18 + 1 + uVar3;
          }
          uVar6 = local_18 - local_1c;
          if (((local_1c <= uVar3) && (uVar6 <= uVar3 - local_1c)) && (local_68[8] <= local_68[0xb])
             ) {
            if (local_68[0xb] - local_68[8] < uVar6) {
              FUN_0099d740(iVar5 + local_1c * 2,uVar6);
            }
            else {
              FUN_00930280(uVar6 * 2);
              local_68[8] = uVar6 + local_68[8];
            }
            uVar7 = FUN_00eae9a0();
            FUN_0099d560();
            FUN_009ffe20();
            goto LAB_008c4b94;
          }
        }
      }
                    /* WARNING: Subroutine does not return */
      FUN_009318f0();
    }
  }
LAB_008c4b94:
  if (local_14 != DAT_01c56b40) {
    uVar7 = FUN_00ebc890();
  }
  return uVar7;
}

