/* Address: 00996b60 | Ghidra name: FUN_00996b60 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

uint __fastcall FUN_00996b60(int param_1,int param_2,uint param_3)

{
  byte *pbVar1;
  int iVar2;
  undefined1 auVar3 [16];
  undefined1 auVar4 [16];
  byte bVar5;
  byte bVar6;
  byte bVar7;
  byte bVar8;
  byte bVar9;
  byte bVar10;
  byte bVar11;
  byte bVar12;
  byte bVar13;
  byte bVar14;
  byte bVar15;
  byte bVar16;
  byte bVar17;
  byte bVar18;
  byte bVar19;
  byte bVar20;
  undefined1 auVar21 [16];
  int iVar22;
  uint uVar23;
  uint uVar24;
  uint uVar25;
  uint uVar26;
  uint uVar27;
  uint uVar28;
  byte bVar29;
  byte bVar30;
  byte bVar31;
  byte bVar32;
  byte bVar33;
  byte bVar34;
  byte bVar35;
  byte bVar36;
  byte bVar37;
  byte bVar38;
  byte bVar39;
  byte bVar40;
  byte bVar41;
  byte bVar42;
  byte bVar43;
  byte bVar44;
  undefined1 auVar45 [16];
  int local_5c;
  int local_54;
  
  if (param_2 == 0) {
                    /* WARNING: Subroutine does not return */
    FUN_00911740();
  }
  if ((int)param_3 < 0) {
                    /* WARNING: Subroutine does not return */
    FUN_00de6f20();
  }
  iVar22 = FUN_009bfdf0();
  if (iVar22 != 1) {
    FUN_00eae9a0();
    FUN_009115d0(&PTR_DAT_01be18d4);
                    /* WARNING: Subroutine does not return */
    FUN_00eaeefb();
  }
  uVar23 = FUN_0099a900();
  if (uVar23 == 0) {
    uVar23 = FUN_0099a900();
    if (uVar23 == 0) {
      uVar23 = FUN_0099a900();
      auVar21 = _DAT_018db940;
      bVar20 = UNK_018db93f;
      bVar19 = UNK_018db93e;
      bVar18 = UNK_018db93d;
      bVar17 = UNK_018db93c;
      bVar16 = UNK_018db93b;
      bVar15 = UNK_018db93a;
      bVar14 = UNK_018db939;
      bVar13 = UNK_018db938;
      bVar12 = UNK_018db937;
      bVar11 = UNK_018db936;
      bVar10 = UNK_018db935;
      bVar9 = UNK_018db934;
      bVar8 = UNK_018db933;
      bVar7 = UNK_018db932;
      bVar6 = UNK_018db931;
      bVar5 = DAT_018db930;
      auVar4 = _DAT_018db920;
      auVar3 = _DAT_018db910;
      if (uVar23 == 0) {
        FUN_00eae9a0();
        FUN_009115d0(&PTR_DAT_01be18d4);
                    /* WARNING: Subroutine does not return */
        FUN_00eaeefb();
      }
      uVar27 = *(uint *)(uVar23 + 4);
      uVar24 = *(uint *)(param_1 + 8);
      if ((int)(uVar27 - param_3) < (int)uVar24) {
        FUN_00eae9a0();
        FUN_00911540();
                    /* WARNING: Subroutine does not return */
        FUN_00eaeefb();
      }
      uVar26 = 0;
      if (0x1f < (int)uVar24) {
        iVar22 = *(int *)(param_1 + 4);
        if (iVar22 == 0) {
          local_5c = 0;
          uVar28 = 0;
        }
        else {
          local_5c = iVar22 + 8;
          uVar28 = *(uint *)(iVar22 + 4);
        }
        if ((((byte)DAT_01c81030 & 1) != 0) && (0x1f < uVar24)) {
          if (uVar27 <= param_3) {
LAB_00996f70:
                    /* WARNING: Subroutine does not return */
            FUN_009c2bf0();
          }
          iVar22 = uVar23 + 8 + param_3;
          uVar25 = uVar26;
          if (0x1f < uVar24) {
            do {
              if (uVar28 >> 2 <= uVar25 >> 5) goto LAB_00996f70;
              uVar24 = *(uint *)(local_5c + (uVar25 >> 5) * 4);
              auVar45 = pshufb(ZEXT416(uVar24),auVar3);
              auVar45 = auVar45 & auVar21;
              bVar29 = auVar45[0];
              bVar30 = auVar45[1];
              bVar31 = auVar45[2];
              bVar32 = auVar45[3];
              bVar33 = auVar45[4];
              bVar34 = auVar45[5];
              bVar35 = auVar45[6];
              bVar36 = auVar45[7];
              bVar37 = auVar45[8];
              bVar38 = auVar45[9];
              bVar39 = auVar45[10];
              bVar40 = auVar45[0xb];
              bVar41 = auVar45[0xc];
              bVar42 = auVar45[0xd];
              bVar43 = auVar45[0xe];
              bVar44 = auVar45[0xf];
              pbVar1 = (byte *)(iVar22 + uVar25);
              *pbVar1 = (bVar5 < bVar29) * bVar5 | (bVar5 >= bVar29) * bVar29;
              pbVar1[1] = (bVar6 < bVar30) * bVar6 | (bVar6 >= bVar30) * bVar30;
              pbVar1[2] = (bVar7 < bVar31) * bVar7 | (bVar7 >= bVar31) * bVar31;
              pbVar1[3] = (bVar8 < bVar32) * bVar8 | (bVar8 >= bVar32) * bVar32;
              pbVar1[4] = (bVar9 < bVar33) * bVar9 | (bVar9 >= bVar33) * bVar33;
              pbVar1[5] = (bVar10 < bVar34) * bVar10 | (bVar10 >= bVar34) * bVar34;
              pbVar1[6] = (bVar11 < bVar35) * bVar11 | (bVar11 >= bVar35) * bVar35;
              pbVar1[7] = (bVar12 < bVar36) * bVar12 | (bVar12 >= bVar36) * bVar36;
              pbVar1[8] = (bVar13 < bVar37) * bVar13 | (bVar13 >= bVar37) * bVar37;
              pbVar1[9] = (bVar14 < bVar38) * bVar14 | (bVar14 >= bVar38) * bVar38;
              pbVar1[10] = (bVar15 < bVar39) * bVar15 | (bVar15 >= bVar39) * bVar39;
              pbVar1[0xb] = (bVar16 < bVar40) * bVar16 | (bVar16 >= bVar40) * bVar40;
              pbVar1[0xc] = (bVar17 < bVar41) * bVar17 | (bVar17 >= bVar41) * bVar41;
              pbVar1[0xd] = (bVar18 < bVar42) * bVar18 | (bVar18 >= bVar42) * bVar42;
              pbVar1[0xe] = (bVar19 < bVar43) * bVar19 | (bVar19 >= bVar43) * bVar43;
              pbVar1[0xf] = (bVar20 < bVar44) * bVar20 | (bVar20 >= bVar44) * bVar44;
              auVar45 = pshufb(ZEXT416(uVar24),auVar4);
              auVar45 = auVar45 & auVar21;
              bVar29 = auVar45[0];
              bVar30 = auVar45[1];
              bVar31 = auVar45[2];
              bVar32 = auVar45[3];
              bVar33 = auVar45[4];
              bVar34 = auVar45[5];
              bVar35 = auVar45[6];
              bVar36 = auVar45[7];
              bVar37 = auVar45[8];
              bVar38 = auVar45[9];
              bVar39 = auVar45[10];
              bVar40 = auVar45[0xb];
              bVar41 = auVar45[0xc];
              bVar42 = auVar45[0xd];
              bVar43 = auVar45[0xe];
              bVar44 = auVar45[0xf];
              pbVar1 = (byte *)(iVar22 + 0x10 + uVar25);
              *pbVar1 = (bVar5 < bVar29) * bVar5 | (bVar5 >= bVar29) * bVar29;
              pbVar1[1] = (bVar6 < bVar30) * bVar6 | (bVar6 >= bVar30) * bVar30;
              pbVar1[2] = (bVar7 < bVar31) * bVar7 | (bVar7 >= bVar31) * bVar31;
              pbVar1[3] = (bVar8 < bVar32) * bVar8 | (bVar8 >= bVar32) * bVar32;
              pbVar1[4] = (bVar9 < bVar33) * bVar9 | (bVar9 >= bVar33) * bVar33;
              pbVar1[5] = (bVar10 < bVar34) * bVar10 | (bVar10 >= bVar34) * bVar34;
              pbVar1[6] = (bVar11 < bVar35) * bVar11 | (bVar11 >= bVar35) * bVar35;
              pbVar1[7] = (bVar12 < bVar36) * bVar12 | (bVar12 >= bVar36) * bVar36;
              pbVar1[8] = (bVar13 < bVar37) * bVar13 | (bVar13 >= bVar37) * bVar37;
              pbVar1[9] = (bVar14 < bVar38) * bVar14 | (bVar14 >= bVar38) * bVar38;
              pbVar1[10] = (bVar15 < bVar39) * bVar15 | (bVar15 >= bVar39) * bVar39;
              pbVar1[0xb] = (bVar16 < bVar40) * bVar16 | (bVar16 >= bVar40) * bVar40;
              pbVar1[0xc] = (bVar17 < bVar41) * bVar17 | (bVar17 >= bVar41) * bVar41;
              pbVar1[0xd] = (bVar18 < bVar42) * bVar18 | (bVar18 >= bVar42) * bVar42;
              pbVar1[0xe] = (bVar19 < bVar43) * bVar19 | (bVar19 >= bVar43) * bVar43;
              pbVar1[0xf] = (bVar20 < bVar44) * bVar20 | (bVar20 >= bVar44) * bVar44;
              uVar26 = uVar25 + 0x20;
              uVar24 = (uint)(*(uint *)(param_1 + 8) < uVar25 + 0x40);
              iVar2 = -(uint)(0xffffffdf < uVar26);
              uVar25 = uVar26;
            } while ((SBORROW4(0,(uint)(0xffffffdf < uVar26)) != SBORROW4(iVar2,uVar24)) ==
                     (int)(iVar2 - uVar24) < 0);
          }
        }
      }
      uVar28 = *(uint *)(param_1 + 8);
      uVar24 = uVar23;
      for (; uVar26 < uVar28; uVar26 = uVar26 + 1) {
        uVar25 = uVar26 >> 3;
        if (*(uint *)(*(int *)(param_1 + 4) + 4) <= uVar25) goto LAB_00996f70;
        uVar24 = param_3 + uVar26;
        if (uVar27 <= uVar24) goto LAB_00996f70;
        *(bool *)(uVar23 + 8 + uVar24) =
             (*(byte *)(*(int *)(param_1 + 4) + 8 + uVar25) >> (uVar26 + uVar25 * -8 & 0x1f) & 1) !=
             0;
      }
    }
    else {
      uVar27 = *(int *)(param_1 + 8) + 7U >> 3;
      if (*(int *)(param_2 + 4) < 0) goto LAB_00996f76;
      if ((int)(*(int *)(param_2 + 4) - param_3) < (int)uVar27) {
        FUN_00eae9a0();
        FUN_00911540();
                    /* WARNING: Subroutine does not return */
        FUN_00eaeefb();
      }
      uVar24 = uVar23;
      if (uVar27 != 0) {
        iVar22 = *(int *)(param_1 + 4);
        if (((iVar22 == 0) || (*(uint *)(iVar22 + 4) < uVar27)) || (*(uint *)(uVar23 + 4) < param_3)
           ) goto LAB_00996f1e;
        if (*(int *)(uVar23 + 4) - param_3 < uVar27) goto LAB_00996f24;
        uVar24 = FUN_00930280(uVar27);
        uVar26 = *(uint *)(param_1 + 8) & 7;
        if (uVar26 != 0) {
          if (uVar27 - 1 < uVar27) {
            uVar24 = (uint)*(byte *)(iVar22 + 8 + (uVar27 - 1)) & (1 << (sbyte)uVar26) - 1U;
            uVar27 = (param_3 - 1) + uVar27;
            if (uVar27 < *(uint *)(uVar23 + 4)) {
              *(char *)(uVar23 + 8 + uVar27) = (char)uVar24;
              return uVar24;
            }
          }
          goto LAB_00996f70;
        }
      }
    }
  }
  else {
    uVar27 = *(int *)(param_1 + 8) + 0x1fU >> 5;
    if (*(int *)(param_2 + 4) < 0) {
LAB_00996f76:
                    /* WARNING: Subroutine does not return */
      FUN_009c2c10();
    }
    if ((int)(*(int *)(param_2 + 4) - param_3) < (int)uVar27) {
      FUN_00eae9a0();
      FUN_00911540();
                    /* WARNING: Subroutine does not return */
      FUN_00eaeefb();
    }
    uVar24 = uVar23;
    if (uVar27 != 0) {
      iVar22 = *(int *)(param_1 + 4);
      if (iVar22 == 0) {
        local_54 = 0;
        uVar24 = 0;
      }
      else {
        local_54 = iVar22 + 8;
        uVar24 = *(uint *)(iVar22 + 4);
      }
      if ((uVar24 >> 2 < uVar27) || (*(uint *)(uVar23 + 4) < param_3)) {
LAB_00996f1e:
                    /* WARNING: Subroutine does not return */
        FUN_009318f0();
      }
      if (*(int *)(uVar23 + 4) - param_3 < uVar27) {
LAB_00996f24:
                    /* WARNING: Subroutine does not return */
        FUN_00931910();
      }
      uVar24 = FUN_00930280(uVar27 * 4);
      uVar26 = *(uint *)(param_1 + 8) & 0x1f;
      if (uVar26 != 0) {
        uVar24 = (param_3 - 1) + uVar27;
        if (*(uint *)(uVar23 + 4) <= uVar24) goto LAB_00996f70;
        *(uint *)(uVar23 + 8 + uVar24 * 4) =
             (1 << (sbyte)uVar26) - 1U & *(uint *)(local_54 + (uVar27 - 1) * 4);
      }
    }
  }
  return uVar24;
}

