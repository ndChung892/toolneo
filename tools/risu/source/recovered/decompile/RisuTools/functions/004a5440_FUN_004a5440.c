/* Address: 004a5440 | Ghidra name: FUN_004a5440 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined4 __fastcall FUN_004a5440(undefined **param_1)

{
  ushort uVar1;
  short sVar2;
  undefined *puVar3;
  undefined8 uVar4;
  int iVar5;
  undefined4 uVar6;
  undefined1 auVar7 [16];
  undefined1 auVar8 [16];
  undefined1 auVar9 [16];
  undefined1 auVar10 [16];
  undefined1 auVar11 [16];
  undefined1 auVar12 [16];
  undefined1 auVar13 [16];
  undefined1 auVar14 [16];
  undefined1 auVar15 [16];
  undefined1 auVar16 [16];
  undefined1 auVar17 [16];
  undefined1 auVar18 [16];
  undefined1 auVar19 [16];
  undefined1 auVar20 [16];
  undefined1 auVar21 [16];
  undefined1 auVar22 [16];
  undefined1 auVar23 [16];
  undefined1 auVar24 [16];
  undefined1 auVar25 [16];
  undefined1 auVar26 [16];
  undefined1 auVar27 [16];
  undefined1 auVar28 [16];
  undefined1 auVar29 [16];
  undefined1 auVar30 [16];
  undefined1 auVar31 [16];
  undefined1 auVar32 [16];
  undefined1 auVar33 [16];
  undefined1 auVar34 [16];
  
  if (param_1 != (undefined **)0x0) {
    puVar3 = param_1[1];
    switch(puVar3) {
    case (undefined *)0xa:
      if (*(short *)(param_1 + 2) == 0x42) {
        if (param_1 != &PTR_DAT_01b524ec) {
          auVar33._0_4_ =
               -(uint)(param_1[2] ==
                       (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._208_4_ &&
                      param_1[3] == _DAT_018ce4e0);
          auVar33._4_4_ =
               -(uint)(param_1[3] ==
                       (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._212_4_ &&
                      param_1[4] == _UNK_018ce4e4);
          auVar33._8_4_ =
               -(uint)(param_1[4] ==
                       (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._216_4_ &&
                      param_1[5] == _UNK_018ce4e8);
          auVar33._12_4_ =
               -(uint)(param_1[5] ==
                       (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._220_4_ &&
                      param_1[6] == _UNK_018ce4ec);
          if ((ushort)((ushort)(SUB161(auVar33 >> 7,0) & 1) |
                       (ushort)(SUB161(auVar33 >> 0xf,0) & 1) << 1 |
                       (ushort)(SUB161(auVar33 >> 0x17,0) & 1) << 2 |
                       (ushort)(SUB161(auVar33 >> 0x1f,0) & 1) << 3 |
                       (ushort)(SUB161(auVar33 >> 0x27,0) & 1) << 4 |
                       (ushort)(SUB161(auVar33 >> 0x2f,0) & 1) << 5 |
                       (ushort)(SUB161(auVar33 >> 0x37,0) & 1) << 6 |
                       (ushort)(SUB161(auVar33 >> 0x3f,0) & 1) << 7 |
                       (ushort)(SUB161(auVar33 >> 0x47,0) & 1) << 8 |
                       (ushort)(SUB161(auVar33 >> 0x4f,0) & 1) << 9 |
                       (ushort)(SUB161(auVar33 >> 0x57,0) & 1) << 10 |
                       (ushort)(SUB161(auVar33 >> 0x5f,0) & 1) << 0xb |
                       (ushort)((byte)(auVar33._12_4_ >> 7) & 1) << 0xc |
                       (ushort)((byte)(auVar33._12_4_ >> 0xf) & 1) << 0xd |
                       (ushort)((byte)(auVar33._12_4_ >> 0x17) & 1) << 0xe |
                      (ushort)(byte)(auVar33._12_4_ >> 0x1f) << 0xf) != 0xffff) break;
        }
        FUN_00eae9a0();
        uVar6 = 1;
        goto LAB_004a605b;
      }
      if (*(short *)(param_1 + 2) == 0x53) {
        if (param_1 != &PTR_DAT_01ba9968) {
          auVar34._0_4_ =
               -(uint)(param_1[2] ==
                       (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._224_4_ &&
                      param_1[3] == _DAT_018ce4f0);
          auVar34._4_4_ =
               -(uint)(param_1[3] ==
                       (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._228_4_ &&
                      param_1[4] == _UNK_018ce4f4);
          auVar34._8_4_ =
               -(uint)(param_1[4] ==
                       (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._232_4_ &&
                      param_1[5] == _UNK_018ce4f8);
          auVar34._12_4_ =
               -(uint)(param_1[5] ==
                       (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._236_4_ &&
                      param_1[6] == _UNK_018ce4fc);
          if ((ushort)((ushort)(SUB161(auVar34 >> 7,0) & 1) |
                       (ushort)(SUB161(auVar34 >> 0xf,0) & 1) << 1 |
                       (ushort)(SUB161(auVar34 >> 0x17,0) & 1) << 2 |
                       (ushort)(SUB161(auVar34 >> 0x1f,0) & 1) << 3 |
                       (ushort)(SUB161(auVar34 >> 0x27,0) & 1) << 4 |
                       (ushort)(SUB161(auVar34 >> 0x2f,0) & 1) << 5 |
                       (ushort)(SUB161(auVar34 >> 0x37,0) & 1) << 6 |
                       (ushort)(SUB161(auVar34 >> 0x3f,0) & 1) << 7 |
                       (ushort)(SUB161(auVar34 >> 0x47,0) & 1) << 8 |
                       (ushort)(SUB161(auVar34 >> 0x4f,0) & 1) << 9 |
                       (ushort)(SUB161(auVar34 >> 0x57,0) & 1) << 10 |
                       (ushort)(SUB161(auVar34 >> 0x5f,0) & 1) << 0xb |
                       (ushort)((byte)(auVar34._12_4_ >> 7) & 1) << 0xc |
                       (ushort)((byte)(auVar34._12_4_ >> 0xf) & 1) << 0xd |
                       (ushort)((byte)(auVar34._12_4_ >> 0x17) & 1) << 0xe |
                      (ushort)(byte)(auVar34._12_4_ >> 0x1f) << 0xf) != 0xffff) break;
        }
        FUN_00eae9a0();
        uVar6 = 1;
        goto LAB_004a605b;
      }
      break;
    case (undefined *)0xb:
      sVar2 = *(short *)(param_1 + 2);
      if (sVar2 == 0x42) {
        if (param_1 != &PTR_DAT_01b52538) {
          auVar30._0_4_ =
               -(uint)(param_1[2] ==
                       (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._208_4_ &&
                      *(int *)((int)param_1 + 0xe) == _DAT_018ce4d0);
          auVar30._4_4_ =
               -(uint)(param_1[3] ==
                       (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._212_4_ &&
                      *(int *)((int)param_1 + 0x12) == _UNK_018ce4d4);
          auVar30._8_4_ =
               -(uint)(param_1[4] ==
                       (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._216_4_ &&
                      *(int *)((int)param_1 + 0x16) == _UNK_018ce4d8);
          auVar30._12_4_ =
               -(uint)(param_1[5] ==
                       (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._220_4_ &&
                      *(int *)((int)param_1 + 0x1a) == _UNK_018ce4dc);
          if ((ushort)((ushort)(SUB161(auVar30 >> 7,0) & 1) |
                       (ushort)(SUB161(auVar30 >> 0xf,0) & 1) << 1 |
                       (ushort)(SUB161(auVar30 >> 0x17,0) & 1) << 2 |
                       (ushort)(SUB161(auVar30 >> 0x1f,0) & 1) << 3 |
                       (ushort)(SUB161(auVar30 >> 0x27,0) & 1) << 4 |
                       (ushort)(SUB161(auVar30 >> 0x2f,0) & 1) << 5 |
                       (ushort)(SUB161(auVar30 >> 0x37,0) & 1) << 6 |
                       (ushort)(SUB161(auVar30 >> 0x3f,0) & 1) << 7 |
                       (ushort)(SUB161(auVar30 >> 0x47,0) & 1) << 8 |
                       (ushort)(SUB161(auVar30 >> 0x4f,0) & 1) << 9 |
                       (ushort)(SUB161(auVar30 >> 0x57,0) & 1) << 10 |
                       (ushort)(SUB161(auVar30 >> 0x5f,0) & 1) << 0xb |
                       (ushort)((byte)(auVar30._12_4_ >> 7) & 1) << 0xc |
                       (ushort)((byte)(auVar30._12_4_ >> 0xf) & 1) << 0xd |
                       (ushort)((byte)(auVar30._12_4_ >> 0x17) & 1) << 0xe |
                      (ushort)(byte)(auVar30._12_4_ >> 0x1f) << 0xf) != 0xffff) break;
        }
        FUN_00eae9a0();
        uVar6 = 1;
        goto LAB_004a605b;
      }
      if (sVar2 == 0x43) {
        if (param_1 != &PTR_DAT_01b65a5c) {
          auVar31._0_4_ =
               -(uint)(param_1[2] ==
                       (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._176_4_ &&
                      *(int *)((int)param_1 + 0xe) ==
                      u_QuarticEaseInOutElasticEQuadrati_018ce360._144_4_);
          auVar31._4_4_ =
               -(uint)(param_1[3] ==
                       (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._180_4_ &&
                      *(int *)((int)param_1 + 0x12) ==
                      u_QuarticEaseInOutElasticEQuadrati_018ce360._148_4_);
          auVar31._8_4_ =
               -(uint)(param_1[4] ==
                       (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._184_4_ &&
                      *(int *)((int)param_1 + 0x16) ==
                      u_QuarticEaseInOutElasticEQuadrati_018ce360._152_4_);
          auVar31._12_4_ =
               -(uint)(param_1[5] ==
                       (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._188_4_ &&
                      *(int *)((int)param_1 + 0x1a) ==
                      u_QuarticEaseInOutElasticEQuadrati_018ce360._156_4_);
          if ((ushort)((ushort)(SUB161(auVar31 >> 7,0) & 1) |
                       (ushort)(SUB161(auVar31 >> 0xf,0) & 1) << 1 |
                       (ushort)(SUB161(auVar31 >> 0x17,0) & 1) << 2 |
                       (ushort)(SUB161(auVar31 >> 0x1f,0) & 1) << 3 |
                       (ushort)(SUB161(auVar31 >> 0x27,0) & 1) << 4 |
                       (ushort)(SUB161(auVar31 >> 0x2f,0) & 1) << 5 |
                       (ushort)(SUB161(auVar31 >> 0x37,0) & 1) << 6 |
                       (ushort)(SUB161(auVar31 >> 0x3f,0) & 1) << 7 |
                       (ushort)(SUB161(auVar31 >> 0x47,0) & 1) << 8 |
                       (ushort)(SUB161(auVar31 >> 0x4f,0) & 1) << 9 |
                       (ushort)(SUB161(auVar31 >> 0x57,0) & 1) << 10 |
                       (ushort)(SUB161(auVar31 >> 0x5f,0) & 1) << 0xb |
                       (ushort)((byte)(auVar31._12_4_ >> 7) & 1) << 0xc |
                       (ushort)((byte)(auVar31._12_4_ >> 0xf) & 1) << 0xd |
                       (ushort)((byte)(auVar31._12_4_ >> 0x17) & 1) << 0xe |
                      (ushort)(byte)(auVar31._12_4_ >> 0x1f) << 0xf) != 0xffff) break;
        }
        FUN_00eae9a0();
        uVar6 = 1;
        goto LAB_004a605b;
      }
      if (sVar2 == 0x53) {
        if (param_1 != &PTR_DAT_01ba99b4) {
          auVar32._0_4_ =
               -(uint)(param_1[2] ==
                       (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._224_4_ &&
                      *(int *)((int)param_1 + 0xe) ==
                      u_QuarticEaseInOutElasticEQuadrati_018ce360._192_4_);
          auVar32._4_4_ =
               -(uint)(param_1[3] ==
                       (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._228_4_ &&
                      *(int *)((int)param_1 + 0x12) ==
                      u_QuarticEaseInOutElasticEQuadrati_018ce360._196_4_);
          auVar32._8_4_ =
               -(uint)(param_1[4] ==
                       (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._232_4_ &&
                      *(int *)((int)param_1 + 0x16) ==
                      u_QuarticEaseInOutElasticEQuadrati_018ce360._200_4_);
          auVar32._12_4_ =
               -(uint)(param_1[5] ==
                       (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._236_4_ &&
                      *(int *)((int)param_1 + 0x1a) ==
                      u_QuarticEaseInOutElasticEQuadrati_018ce360._204_4_);
          if ((ushort)((ushort)(SUB161(auVar32 >> 7,0) & 1) |
                       (ushort)(SUB161(auVar32 >> 0xf,0) & 1) << 1 |
                       (ushort)(SUB161(auVar32 >> 0x17,0) & 1) << 2 |
                       (ushort)(SUB161(auVar32 >> 0x1f,0) & 1) << 3 |
                       (ushort)(SUB161(auVar32 >> 0x27,0) & 1) << 4 |
                       (ushort)(SUB161(auVar32 >> 0x2f,0) & 1) << 5 |
                       (ushort)(SUB161(auVar32 >> 0x37,0) & 1) << 6 |
                       (ushort)(SUB161(auVar32 >> 0x3f,0) & 1) << 7 |
                       (ushort)(SUB161(auVar32 >> 0x47,0) & 1) << 8 |
                       (ushort)(SUB161(auVar32 >> 0x4f,0) & 1) << 9 |
                       (ushort)(SUB161(auVar32 >> 0x57,0) & 1) << 10 |
                       (ushort)(SUB161(auVar32 >> 0x5f,0) & 1) << 0xb |
                       (ushort)((byte)(auVar32._12_4_ >> 7) & 1) << 0xc |
                       (ushort)((byte)(auVar32._12_4_ >> 0xf) & 1) << 0xd |
                       (ushort)((byte)(auVar32._12_4_ >> 0x17) & 1) << 0xe |
                      (ushort)(byte)(auVar32._12_4_ >> 0x1f) << 0xf) != 0xffff) break;
        }
        FUN_00eae9a0();
        uVar6 = 1;
        goto LAB_004a605b;
      }
      break;
    case (undefined *)0xc:
      uVar1 = *(ushort *)(param_1 + 3);
      if (uVar1 < 0x6d) {
        if (uVar1 == 0x62) {
          if (param_1 != &PTR_DAT_01b65aac) {
            auVar28._0_4_ =
                 -(uint)(param_1[2] ==
                         (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._176_4_ &&
                        param_1[4] ==
                        (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._64_4_);
            auVar28._4_4_ =
                 -(uint)(param_1[3] ==
                         (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._180_4_ &&
                        param_1[5] ==
                        (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._68_4_);
            auVar28._8_4_ =
                 -(uint)(param_1[4] ==
                         (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._184_4_ &&
                        param_1[6] ==
                        (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._72_4_);
            auVar28._12_4_ =
                 -(uint)(param_1[5] ==
                         (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._188_4_ &&
                        param_1[7] ==
                        (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._76_4_);
            if ((ushort)((ushort)(SUB161(auVar28 >> 7,0) & 1) |
                         (ushort)(SUB161(auVar28 >> 0xf,0) & 1) << 1 |
                         (ushort)(SUB161(auVar28 >> 0x17,0) & 1) << 2 |
                         (ushort)(SUB161(auVar28 >> 0x1f,0) & 1) << 3 |
                         (ushort)(SUB161(auVar28 >> 0x27,0) & 1) << 4 |
                         (ushort)(SUB161(auVar28 >> 0x2f,0) & 1) << 5 |
                         (ushort)(SUB161(auVar28 >> 0x37,0) & 1) << 6 |
                         (ushort)(SUB161(auVar28 >> 0x3f,0) & 1) << 7 |
                         (ushort)(SUB161(auVar28 >> 0x47,0) & 1) << 8 |
                         (ushort)(SUB161(auVar28 >> 0x4f,0) & 1) << 9 |
                         (ushort)(SUB161(auVar28 >> 0x57,0) & 1) << 10 |
                         (ushort)(SUB161(auVar28 >> 0x5f,0) & 1) << 0xb |
                         (ushort)((byte)(auVar28._12_4_ >> 7) & 1) << 0xc |
                         (ushort)((byte)(auVar28._12_4_ >> 0xf) & 1) << 0xd |
                         (ushort)((byte)(auVar28._12_4_ >> 0x17) & 1) << 0xe |
                        (ushort)(byte)(auVar28._12_4_ >> 0x1f) << 0xf) != 0xffff) break;
          }
          FUN_00eae9a0();
          uVar6 = 1;
          goto LAB_004a605b;
        }
        if (uVar1 == 0x6c) {
          if (param_1 != &PTR_DAT_01bab7c8) {
            auVar29._0_4_ =
                 -(uint)(param_1[2] ==
                         (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._320_4_ &&
                        param_1[4] ==
                        (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._336_4_);
            auVar29._4_4_ =
                 -(uint)(param_1[3] ==
                         (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._324_4_ &&
                        param_1[5] ==
                        (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._340_4_);
            auVar29._8_4_ =
                 -(uint)(param_1[4] ==
                         (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._328_4_ &&
                        param_1[6] ==
                        (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._344_4_);
            auVar29._12_4_ =
                 -(uint)(param_1[5] ==
                         (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._332_4_ &&
                        param_1[7] ==
                        (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._348_4_);
            if ((ushort)((ushort)(SUB161(auVar29 >> 7,0) & 1) |
                         (ushort)(SUB161(auVar29 >> 0xf,0) & 1) << 1 |
                         (ushort)(SUB161(auVar29 >> 0x17,0) & 1) << 2 |
                         (ushort)(SUB161(auVar29 >> 0x1f,0) & 1) << 3 |
                         (ushort)(SUB161(auVar29 >> 0x27,0) & 1) << 4 |
                         (ushort)(SUB161(auVar29 >> 0x2f,0) & 1) << 5 |
                         (ushort)(SUB161(auVar29 >> 0x37,0) & 1) << 6 |
                         (ushort)(SUB161(auVar29 >> 0x3f,0) & 1) << 7 |
                         (ushort)(SUB161(auVar29 >> 0x47,0) & 1) << 8 |
                         (ushort)(SUB161(auVar29 >> 0x4f,0) & 1) << 9 |
                         (ushort)(SUB161(auVar29 >> 0x57,0) & 1) << 10 |
                         (ushort)(SUB161(auVar29 >> 0x5f,0) & 1) << 0xb |
                         (ushort)((byte)(auVar29._12_4_ >> 7) & 1) << 0xc |
                         (ushort)((byte)(auVar29._12_4_ >> 0xf) & 1) << 0xd |
                         (ushort)((byte)(auVar29._12_4_ >> 0x17) & 1) << 0xe |
                        (ushort)(byte)(auVar29._12_4_ >> 0x1f) << 0xf) != 0xffff) break;
          }
          FUN_00eae9a0();
          iVar5 = FUN_00eae9a0();
          FUN_004098c0();
          *(undefined8 *)(iVar5 + 0x1c) = 0;
          *(undefined8 *)(iVar5 + 0x24) = 0;
          uVar4 = ram0x018ce4c0;
          *(undefined8 *)(iVar5 + 0x2c) = ram0x018ce4c0;
          *(undefined8 *)(iVar5 + 0x34) = uVar4;
          *(undefined1 *)(iVar5 + 0x75) = 1;
          FUN_00eaec14();
          uVar6 = 1;
          goto LAB_004a605b;
        }
      }
      else {
        if (uVar1 == 0x6e) {
          if (param_1 != &PTR_DAT_01b881f0) {
            auVar25._0_4_ =
                 -(uint)(param_1[2] ==
                         (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._240_4_ &&
                        param_1[4] ==
                        (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._256_4_);
            auVar25._4_4_ =
                 -(uint)(param_1[3] ==
                         (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._244_4_ &&
                        param_1[5] ==
                        (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._260_4_);
            auVar25._8_4_ =
                 -(uint)(param_1[4] ==
                         (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._248_4_ &&
                        param_1[6] ==
                        (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._264_4_);
            auVar25._12_4_ =
                 -(uint)(param_1[5] ==
                         (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._252_4_ &&
                        param_1[7] ==
                        (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._268_4_);
            if ((ushort)((ushort)(SUB161(auVar25 >> 7,0) & 1) |
                         (ushort)(SUB161(auVar25 >> 0xf,0) & 1) << 1 |
                         (ushort)(SUB161(auVar25 >> 0x17,0) & 1) << 2 |
                         (ushort)(SUB161(auVar25 >> 0x1f,0) & 1) << 3 |
                         (ushort)(SUB161(auVar25 >> 0x27,0) & 1) << 4 |
                         (ushort)(SUB161(auVar25 >> 0x2f,0) & 1) << 5 |
                         (ushort)(SUB161(auVar25 >> 0x37,0) & 1) << 6 |
                         (ushort)(SUB161(auVar25 >> 0x3f,0) & 1) << 7 |
                         (ushort)(SUB161(auVar25 >> 0x47,0) & 1) << 8 |
                         (ushort)(SUB161(auVar25 >> 0x4f,0) & 1) << 9 |
                         (ushort)(SUB161(auVar25 >> 0x57,0) & 1) << 10 |
                         (ushort)(SUB161(auVar25 >> 0x5f,0) & 1) << 0xb |
                         (ushort)((byte)(auVar25._12_4_ >> 7) & 1) << 0xc |
                         (ushort)((byte)(auVar25._12_4_ >> 0xf) & 1) << 0xd |
                         (ushort)((byte)(auVar25._12_4_ >> 0x17) & 1) << 0xe |
                        (ushort)(byte)(auVar25._12_4_ >> 0x1f) << 0xf) != 0xffff) break;
          }
          FUN_00eae9a0();
          uVar6 = 1;
          goto LAB_004a605b;
        }
        if (uVar1 == 0x72) {
          if (param_1 != &PTR_DAT_01bac2f4) {
            auVar26._0_4_ =
                 -(uint)(param_1[2] ==
                         (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._272_4_ &&
                        param_1[4] ==
                        (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._288_4_);
            auVar26._4_4_ =
                 -(uint)(param_1[3] ==
                         (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._276_4_ &&
                        param_1[5] ==
                        (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._292_4_);
            auVar26._8_4_ =
                 -(uint)(param_1[4] ==
                         (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._280_4_ &&
                        param_1[6] ==
                        (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._296_4_);
            auVar26._12_4_ =
                 -(uint)(param_1[5] ==
                         (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._284_4_ &&
                        param_1[7] ==
                        (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._300_4_);
            if ((ushort)((ushort)(SUB161(auVar26 >> 7,0) & 1) |
                         (ushort)(SUB161(auVar26 >> 0xf,0) & 1) << 1 |
                         (ushort)(SUB161(auVar26 >> 0x17,0) & 1) << 2 |
                         (ushort)(SUB161(auVar26 >> 0x1f,0) & 1) << 3 |
                         (ushort)(SUB161(auVar26 >> 0x27,0) & 1) << 4 |
                         (ushort)(SUB161(auVar26 >> 0x2f,0) & 1) << 5 |
                         (ushort)(SUB161(auVar26 >> 0x37,0) & 1) << 6 |
                         (ushort)(SUB161(auVar26 >> 0x3f,0) & 1) << 7 |
                         (ushort)(SUB161(auVar26 >> 0x47,0) & 1) << 8 |
                         (ushort)(SUB161(auVar26 >> 0x4f,0) & 1) << 9 |
                         (ushort)(SUB161(auVar26 >> 0x57,0) & 1) << 10 |
                         (ushort)(SUB161(auVar26 >> 0x5f,0) & 1) << 0xb |
                         (ushort)((byte)(auVar26._12_4_ >> 7) & 1) << 0xc |
                         (ushort)((byte)(auVar26._12_4_ >> 0xf) & 1) << 0xd |
                         (ushort)((byte)(auVar26._12_4_ >> 0x17) & 1) << 0xe |
                        (ushort)(byte)(auVar26._12_4_ >> 0x1f) << 0xf) != 0xffff) break;
          }
          FUN_00eae9a0();
          iVar5 = FUN_00eae9a0();
          *(undefined8 *)(iVar5 + 4) = 0;
          *(undefined8 *)(iVar5 + 0xc) = 0;
          *(undefined8 *)(iVar5 + 0x14) = 0;
          *(undefined8 *)(iVar5 + 0x1c) = 0;
          *(undefined1 *)(iVar5 + 0x24) = 1;
          FUN_00eaebca();
          uVar6 = 1;
          goto LAB_004a605b;
        }
        if (uVar1 == 0x75) {
          if (param_1 != &PTR_DAT_01b536f0) {
            auVar27._0_4_ =
                 -(uint)(param_1[2] ==
                         (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._96_4_ &&
                        param_1[4] ==
                        (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._304_4_);
            auVar27._4_4_ =
                 -(uint)(param_1[3] ==
                         (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._100_4_ &&
                        param_1[5] ==
                        (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._308_4_);
            auVar27._8_4_ =
                 -(uint)(param_1[4] ==
                         (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._104_4_ &&
                        param_1[6] ==
                        (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._312_4_);
            auVar27._12_4_ =
                 -(uint)(param_1[5] ==
                         (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._108_4_ &&
                        param_1[7] ==
                        (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._316_4_);
            if ((ushort)((ushort)(SUB161(auVar27 >> 7,0) & 1) |
                         (ushort)(SUB161(auVar27 >> 0xf,0) & 1) << 1 |
                         (ushort)(SUB161(auVar27 >> 0x17,0) & 1) << 2 |
                         (ushort)(SUB161(auVar27 >> 0x1f,0) & 1) << 3 |
                         (ushort)(SUB161(auVar27 >> 0x27,0) & 1) << 4 |
                         (ushort)(SUB161(auVar27 >> 0x2f,0) & 1) << 5 |
                         (ushort)(SUB161(auVar27 >> 0x37,0) & 1) << 6 |
                         (ushort)(SUB161(auVar27 >> 0x3f,0) & 1) << 7 |
                         (ushort)(SUB161(auVar27 >> 0x47,0) & 1) << 8 |
                         (ushort)(SUB161(auVar27 >> 0x4f,0) & 1) << 9 |
                         (ushort)(SUB161(auVar27 >> 0x57,0) & 1) << 10 |
                         (ushort)(SUB161(auVar27 >> 0x5f,0) & 1) << 0xb |
                         (ushort)((byte)(auVar27._12_4_ >> 7) & 1) << 0xc |
                         (ushort)((byte)(auVar27._12_4_ >> 0xf) & 1) << 0xd |
                         (ushort)((byte)(auVar27._12_4_ >> 0x17) & 1) << 0xe |
                        (ushort)(byte)(auVar27._12_4_ >> 0x1f) << 0xf) != 0xffff) break;
          }
          FUN_00eae9a0();
          uVar6 = 1;
          goto LAB_004a605b;
        }
      }
      break;
    case (undefined *)0xd:
      uVar1 = *(ushort *)((int)param_1 + 10);
      if (uVar1 < 0x6a) {
        if (uVar1 == 0x61) {
          if (param_1 != &PTR_DAT_01b52510) {
            auVar23._0_4_ =
                 -(uint)(param_1[2] ==
                         (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._208_4_ &&
                        *(int *)((int)param_1 + 0x12) ==
                        u_QuarticEaseInOutElasticEQuadrati_018ce360._16_4_);
            auVar23._4_4_ =
                 -(uint)(param_1[3] ==
                         (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._212_4_ &&
                        *(int *)((int)param_1 + 0x16) ==
                        u_QuarticEaseInOutElasticEQuadrati_018ce360._20_4_);
            auVar23._8_4_ =
                 -(uint)(param_1[4] ==
                         (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._216_4_ &&
                        *(int *)((int)param_1 + 0x1a) ==
                        u_QuarticEaseInOutElasticEQuadrati_018ce360._24_4_);
            auVar23._12_4_ =
                 -(uint)(param_1[5] ==
                         (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._220_4_ &&
                        *(int *)((int)param_1 + 0x1e) ==
                        u_QuarticEaseInOutElasticEQuadrati_018ce360._28_4_);
            if ((ushort)((ushort)(SUB161(auVar23 >> 7,0) & 1) |
                         (ushort)(SUB161(auVar23 >> 0xf,0) & 1) << 1 |
                         (ushort)(SUB161(auVar23 >> 0x17,0) & 1) << 2 |
                         (ushort)(SUB161(auVar23 >> 0x1f,0) & 1) << 3 |
                         (ushort)(SUB161(auVar23 >> 0x27,0) & 1) << 4 |
                         (ushort)(SUB161(auVar23 >> 0x2f,0) & 1) << 5 |
                         (ushort)(SUB161(auVar23 >> 0x37,0) & 1) << 6 |
                         (ushort)(SUB161(auVar23 >> 0x3f,0) & 1) << 7 |
                         (ushort)(SUB161(auVar23 >> 0x47,0) & 1) << 8 |
                         (ushort)(SUB161(auVar23 >> 0x4f,0) & 1) << 9 |
                         (ushort)(SUB161(auVar23 >> 0x57,0) & 1) << 10 |
                         (ushort)(SUB161(auVar23 >> 0x5f,0) & 1) << 0xb |
                         (ushort)((byte)(auVar23._12_4_ >> 7) & 1) << 0xc |
                         (ushort)((byte)(auVar23._12_4_ >> 0xf) & 1) << 0xd |
                         (ushort)((byte)(auVar23._12_4_ >> 0x17) & 1) << 0xe |
                        (ushort)(byte)(auVar23._12_4_ >> 0x1f) << 0xf) != 0xffff) break;
          }
          FUN_00eae9a0();
          uVar6 = 1;
          goto LAB_004a605b;
        }
        if (uVar1 == 0x69) {
          if (param_1 != &PTR_DAT_01ba998c) {
            auVar24._0_4_ =
                 -(uint)(param_1[2] ==
                         (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._224_4_ &&
                        *(int *)((int)param_1 + 0x12) ==
                        u_QuarticEaseInOutElasticEQuadrati_018ce360._16_4_);
            auVar24._4_4_ =
                 -(uint)(param_1[3] ==
                         (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._228_4_ &&
                        *(int *)((int)param_1 + 0x16) ==
                        u_QuarticEaseInOutElasticEQuadrati_018ce360._20_4_);
            auVar24._8_4_ =
                 -(uint)(param_1[4] ==
                         (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._232_4_ &&
                        *(int *)((int)param_1 + 0x1a) ==
                        u_QuarticEaseInOutElasticEQuadrati_018ce360._24_4_);
            auVar24._12_4_ =
                 -(uint)(param_1[5] ==
                         (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._236_4_ &&
                        *(int *)((int)param_1 + 0x1e) ==
                        u_QuarticEaseInOutElasticEQuadrati_018ce360._28_4_);
            if ((ushort)((ushort)(SUB161(auVar24 >> 7,0) & 1) |
                         (ushort)(SUB161(auVar24 >> 0xf,0) & 1) << 1 |
                         (ushort)(SUB161(auVar24 >> 0x17,0) & 1) << 2 |
                         (ushort)(SUB161(auVar24 >> 0x1f,0) & 1) << 3 |
                         (ushort)(SUB161(auVar24 >> 0x27,0) & 1) << 4 |
                         (ushort)(SUB161(auVar24 >> 0x2f,0) & 1) << 5 |
                         (ushort)(SUB161(auVar24 >> 0x37,0) & 1) << 6 |
                         (ushort)(SUB161(auVar24 >> 0x3f,0) & 1) << 7 |
                         (ushort)(SUB161(auVar24 >> 0x47,0) & 1) << 8 |
                         (ushort)(SUB161(auVar24 >> 0x4f,0) & 1) << 9 |
                         (ushort)(SUB161(auVar24 >> 0x57,0) & 1) << 10 |
                         (ushort)(SUB161(auVar24 >> 0x5f,0) & 1) << 0xb |
                         (ushort)((byte)(auVar24._12_4_ >> 7) & 1) << 0xc |
                         (ushort)((byte)(auVar24._12_4_ >> 0xf) & 1) << 0xd |
                         (ushort)((byte)(auVar24._12_4_ >> 0x17) & 1) << 0xe |
                        (ushort)(byte)(auVar24._12_4_ >> 0x1f) << 0xf) != 0xffff) break;
          }
          FUN_00eae9a0();
          uVar6 = 1;
          goto LAB_004a605b;
        }
      }
      else {
        if (uVar1 == 0x6c) {
          if (param_1 != &PTR_DAT_01b6e2ec) {
            auVar19._0_4_ =
                 -(uint)(param_1[2] ==
                         (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._32_4_ &&
                        *(int *)((int)param_1 + 0x12) ==
                        u_QuarticEaseInOutElasticEQuadrati_018ce360._144_4_);
            auVar19._4_4_ =
                 -(uint)(param_1[3] ==
                         (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._36_4_ &&
                        *(int *)((int)param_1 + 0x16) ==
                        u_QuarticEaseInOutElasticEQuadrati_018ce360._148_4_);
            auVar19._8_4_ =
                 -(uint)(param_1[4] ==
                         (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._40_4_ &&
                        *(int *)((int)param_1 + 0x1a) ==
                        u_QuarticEaseInOutElasticEQuadrati_018ce360._152_4_);
            auVar19._12_4_ =
                 -(uint)(param_1[5] ==
                         (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._44_4_ &&
                        *(int *)((int)param_1 + 0x1e) ==
                        u_QuarticEaseInOutElasticEQuadrati_018ce360._156_4_);
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
                        (ushort)(byte)(auVar19._12_4_ >> 0x1f) << 0xf) != 0xffff) break;
          }
          FUN_00eae9a0();
          uVar6 = 1;
          goto LAB_004a605b;
        }
        if (uVar1 == 0x6f) {
          if (param_1 != &PTR_DAT_01b53744) {
            auVar20._0_4_ =
                 -(uint)(param_1[2] ==
                         (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._96_4_ &&
                        *(int *)((int)param_1 + 0x12) ==
                        u_QuarticEaseInOutElasticEQuadrati_018ce360._192_4_);
            auVar20._4_4_ =
                 -(uint)(param_1[3] ==
                         (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._100_4_ &&
                        *(int *)((int)param_1 + 0x16) ==
                        u_QuarticEaseInOutElasticEQuadrati_018ce360._196_4_);
            auVar20._8_4_ =
                 -(uint)(param_1[4] ==
                         (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._104_4_ &&
                        *(int *)((int)param_1 + 0x1a) ==
                        u_QuarticEaseInOutElasticEQuadrati_018ce360._200_4_);
            auVar20._12_4_ =
                 -(uint)(param_1[5] ==
                         (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._108_4_ &&
                        *(int *)((int)param_1 + 0x1e) ==
                        u_QuarticEaseInOutElasticEQuadrati_018ce360._204_4_);
            if ((ushort)((ushort)(SUB161(auVar20 >> 7,0) & 1) |
                         (ushort)(SUB161(auVar20 >> 0xf,0) & 1) << 1 |
                         (ushort)(SUB161(auVar20 >> 0x17,0) & 1) << 2 |
                         (ushort)(SUB161(auVar20 >> 0x1f,0) & 1) << 3 |
                         (ushort)(SUB161(auVar20 >> 0x27,0) & 1) << 4 |
                         (ushort)(SUB161(auVar20 >> 0x2f,0) & 1) << 5 |
                         (ushort)(SUB161(auVar20 >> 0x37,0) & 1) << 6 |
                         (ushort)(SUB161(auVar20 >> 0x3f,0) & 1) << 7 |
                         (ushort)(SUB161(auVar20 >> 0x47,0) & 1) << 8 |
                         (ushort)(SUB161(auVar20 >> 0x4f,0) & 1) << 9 |
                         (ushort)(SUB161(auVar20 >> 0x57,0) & 1) << 10 |
                         (ushort)(SUB161(auVar20 >> 0x5f,0) & 1) << 0xb |
                         (ushort)((byte)(auVar20._12_4_ >> 7) & 1) << 0xc |
                         (ushort)((byte)(auVar20._12_4_ >> 0xf) & 1) << 0xd |
                         (ushort)((byte)(auVar20._12_4_ >> 0x17) & 1) << 0xe |
                        (ushort)(byte)(auVar20._12_4_ >> 0x1f) << 0xf) != 0xffff) break;
          }
          FUN_00eae9a0();
          uVar6 = 1;
          goto LAB_004a605b;
        }
        if (uVar1 == 0x75) {
          if (param_1 != &PTR_DAT_01ba0280) {
            auVar21._0_4_ =
                 -(uint)(param_1[2] ==
                         (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._0_4_ &&
                        *(int *)((int)param_1 + 0x12) ==
                        u_QuarticEaseInOutElasticEQuadrati_018ce360._144_4_);
            auVar21._4_4_ =
                 -(uint)(param_1[3] ==
                         (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._4_4_ &&
                        *(int *)((int)param_1 + 0x16) ==
                        u_QuarticEaseInOutElasticEQuadrati_018ce360._148_4_);
            auVar21._8_4_ =
                 -(uint)(param_1[4] ==
                         (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._8_4_ &&
                        *(int *)((int)param_1 + 0x1a) ==
                        u_QuarticEaseInOutElasticEQuadrati_018ce360._152_4_);
            auVar21._12_4_ =
                 -(uint)(param_1[5] ==
                         (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._12_4_ &&
                        *(int *)((int)param_1 + 0x1e) ==
                        u_QuarticEaseInOutElasticEQuadrati_018ce360._156_4_);
            if ((ushort)((ushort)(SUB161(auVar21 >> 7,0) & 1) |
                         (ushort)(SUB161(auVar21 >> 0xf,0) & 1) << 1 |
                         (ushort)(SUB161(auVar21 >> 0x17,0) & 1) << 2 |
                         (ushort)(SUB161(auVar21 >> 0x1f,0) & 1) << 3 |
                         (ushort)(SUB161(auVar21 >> 0x27,0) & 1) << 4 |
                         (ushort)(SUB161(auVar21 >> 0x2f,0) & 1) << 5 |
                         (ushort)(SUB161(auVar21 >> 0x37,0) & 1) << 6 |
                         (ushort)(SUB161(auVar21 >> 0x3f,0) & 1) << 7 |
                         (ushort)(SUB161(auVar21 >> 0x47,0) & 1) << 8 |
                         (ushort)(SUB161(auVar21 >> 0x4f,0) & 1) << 9 |
                         (ushort)(SUB161(auVar21 >> 0x57,0) & 1) << 10 |
                         (ushort)(SUB161(auVar21 >> 0x5f,0) & 1) << 0xb |
                         (ushort)((byte)(auVar21._12_4_ >> 7) & 1) << 0xc |
                         (ushort)((byte)(auVar21._12_4_ >> 0xf) & 1) << 0xd |
                         (ushort)((byte)(auVar21._12_4_ >> 0x17) & 1) << 0xe |
                        (ushort)(byte)(auVar21._12_4_ >> 0x1f) << 0xf) != 0xffff) {
              if (param_1 != &PTR_DAT_01ba0554) {
                auVar22._0_4_ =
                     -(uint)(param_1[2] ==
                             (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._80_4_ &&
                            *(int *)((int)param_1 + 0x12) ==
                            u_QuarticEaseInOutElasticEQuadrati_018ce360._144_4_);
                auVar22._4_4_ =
                     -(uint)(param_1[3] ==
                             (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._84_4_ &&
                            *(int *)((int)param_1 + 0x16) ==
                            u_QuarticEaseInOutElasticEQuadrati_018ce360._148_4_);
                auVar22._8_4_ =
                     -(uint)(param_1[4] ==
                             (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._88_4_ &&
                            *(int *)((int)param_1 + 0x1a) ==
                            u_QuarticEaseInOutElasticEQuadrati_018ce360._152_4_);
                auVar22._12_4_ =
                     -(uint)(param_1[5] ==
                             (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._92_4_ &&
                            *(int *)((int)param_1 + 0x1e) ==
                            u_QuarticEaseInOutElasticEQuadrati_018ce360._156_4_);
                if ((ushort)((ushort)(SUB161(auVar22 >> 7,0) & 1) |
                             (ushort)(SUB161(auVar22 >> 0xf,0) & 1) << 1 |
                             (ushort)(SUB161(auVar22 >> 0x17,0) & 1) << 2 |
                             (ushort)(SUB161(auVar22 >> 0x1f,0) & 1) << 3 |
                             (ushort)(SUB161(auVar22 >> 0x27,0) & 1) << 4 |
                             (ushort)(SUB161(auVar22 >> 0x2f,0) & 1) << 5 |
                             (ushort)(SUB161(auVar22 >> 0x37,0) & 1) << 6 |
                             (ushort)(SUB161(auVar22 >> 0x3f,0) & 1) << 7 |
                             (ushort)(SUB161(auVar22 >> 0x47,0) & 1) << 8 |
                             (ushort)(SUB161(auVar22 >> 0x4f,0) & 1) << 9 |
                             (ushort)(SUB161(auVar22 >> 0x57,0) & 1) << 10 |
                             (ushort)(SUB161(auVar22 >> 0x5f,0) & 1) << 0xb |
                             (ushort)((byte)(auVar22._12_4_ >> 7) & 1) << 0xc |
                             (ushort)((byte)(auVar22._12_4_ >> 0xf) & 1) << 0xd |
                             (ushort)((byte)(auVar22._12_4_ >> 0x17) & 1) << 0xe |
                            (ushort)(byte)(auVar22._12_4_ >> 0x1f) << 0xf) != 0xffff) break;
              }
              FUN_00eae9a0();
              uVar6 = 1;
              goto LAB_004a605b;
            }
          }
          FUN_00eae9a0();
          uVar6 = 1;
          goto LAB_004a605b;
        }
      }
      break;
    case (undefined *)0xe:
      uVar1 = *(ushort *)((int)param_1 + 0xe);
      if (uVar1 < 0x6a) {
        if (uVar1 == 99) {
          if (param_1 != &PTR_DAT_01b5ddcc) {
            auVar17._0_4_ =
                 -(uint)(param_1[2] ==
                         (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._112_4_ &&
                        param_1[5] ==
                        (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._160_4_);
            auVar17._4_4_ =
                 -(uint)(param_1[3] ==
                         (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._116_4_ &&
                        param_1[6] ==
                        (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._164_4_);
            auVar17._8_4_ =
                 -(uint)(param_1[4] ==
                         (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._120_4_ &&
                        param_1[7] ==
                        (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._168_4_);
            auVar17._12_4_ =
                 -(uint)(param_1[5] ==
                         (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._124_4_ &&
                        param_1[8] ==
                        (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._172_4_);
            if ((ushort)((ushort)(SUB161(auVar17 >> 7,0) & 1) |
                         (ushort)(SUB161(auVar17 >> 0xf,0) & 1) << 1 |
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
                        (ushort)(byte)(auVar17._12_4_ >> 0x1f) << 0xf) != 0xffff) break;
          }
          FUN_00eae9a0();
          uVar6 = 1;
          goto LAB_004a605b;
        }
        if (uVar1 == 0x69) {
          if (param_1 != &PTR_DAT_01b65a80) {
            auVar18._0_4_ =
                 -(uint)(param_1[2] ==
                         (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._176_4_ &&
                        param_1[5] ==
                        (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._16_4_);
            auVar18._4_4_ =
                 -(uint)(param_1[3] ==
                         (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._180_4_ &&
                        param_1[6] ==
                        (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._20_4_);
            auVar18._8_4_ =
                 -(uint)(param_1[4] ==
                         (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._184_4_ &&
                        param_1[7] ==
                        (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._24_4_);
            auVar18._12_4_ =
                 -(uint)(param_1[5] ==
                         (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._188_4_ &&
                        param_1[8] ==
                        (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._28_4_);
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
                        (ushort)(byte)(auVar18._12_4_ >> 0x1f) << 0xf) != 0xffff) break;
          }
          FUN_00eae9a0();
          uVar6 = 1;
          goto LAB_004a605b;
        }
      }
      else {
        if (uVar1 == 0x6e) {
          if (param_1 != &PTR_DAT_01ba05ac) {
            auVar14._0_4_ =
                 -(uint)(param_1[2] ==
                         (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._80_4_ &&
                        param_1[5] ==
                        (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._64_4_);
            auVar14._4_4_ =
                 -(uint)(param_1[3] ==
                         (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._84_4_ &&
                        param_1[6] ==
                        (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._68_4_);
            auVar14._8_4_ =
                 -(uint)(param_1[4] ==
                         (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._88_4_ &&
                        param_1[7] ==
                        (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._72_4_);
            auVar14._12_4_ =
                 -(uint)(param_1[5] ==
                         (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._92_4_ &&
                        param_1[8] ==
                        (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._76_4_);
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
                        (ushort)(byte)(auVar14._12_4_ >> 0x1f) << 0xf) != 0xffff) break;
          }
          FUN_00eae9a0();
          uVar6 = 1;
          goto LAB_004a605b;
        }
        if (uVar1 == 0x72) {
          if (param_1 != &PTR_DAT_01ba02d8) {
            auVar15._0_4_ =
                 -(uint)(param_1[2] ==
                         (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._0_4_ &&
                        param_1[5] ==
                        (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._64_4_);
            auVar15._4_4_ =
                 -(uint)(param_1[3] ==
                         (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._4_4_ &&
                        param_1[6] ==
                        (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._68_4_);
            auVar15._8_4_ =
                 -(uint)(param_1[4] ==
                         (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._8_4_ &&
                        param_1[7] ==
                        (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._72_4_);
            auVar15._12_4_ =
                 -(uint)(param_1[5] ==
                         (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._12_4_ &&
                        param_1[8] ==
                        (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._76_4_);
            if ((ushort)((ushort)(SUB161(auVar15 >> 7,0) & 1) |
                         (ushort)(SUB161(auVar15 >> 0xf,0) & 1) << 1 |
                         (ushort)(SUB161(auVar15 >> 0x17,0) & 1) << 2 |
                         (ushort)(SUB161(auVar15 >> 0x1f,0) & 1) << 3 |
                         (ushort)(SUB161(auVar15 >> 0x27,0) & 1) << 4 |
                         (ushort)(SUB161(auVar15 >> 0x2f,0) & 1) << 5 |
                         (ushort)(SUB161(auVar15 >> 0x37,0) & 1) << 6 |
                         (ushort)(SUB161(auVar15 >> 0x3f,0) & 1) << 7 |
                         (ushort)(SUB161(auVar15 >> 0x47,0) & 1) << 8 |
                         (ushort)(SUB161(auVar15 >> 0x4f,0) & 1) << 9 |
                         (ushort)(SUB161(auVar15 >> 0x57,0) & 1) << 10 |
                         (ushort)(SUB161(auVar15 >> 0x5f,0) & 1) << 0xb |
                         (ushort)((byte)(auVar15._12_4_ >> 7) & 1) << 0xc |
                         (ushort)((byte)(auVar15._12_4_ >> 0xf) & 1) << 0xd |
                         (ushort)((byte)(auVar15._12_4_ >> 0x17) & 1) << 0xe |
                        (ushort)(byte)(auVar15._12_4_ >> 0x1f) << 0xf) != 0xffff) break;
          }
          FUN_00eae9a0();
          uVar6 = 1;
          goto LAB_004a605b;
        }
        if (uVar1 == 0x73) {
          if (param_1 != &PTR_DAT_01b6e344) {
            auVar16._0_4_ =
                 -(uint)(param_1[2] ==
                         (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._32_4_ &&
                        param_1[5] ==
                        (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._64_4_);
            auVar16._4_4_ =
                 -(uint)(param_1[3] ==
                         (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._36_4_ &&
                        param_1[6] ==
                        (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._68_4_);
            auVar16._8_4_ =
                 -(uint)(param_1[4] ==
                         (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._40_4_ &&
                        param_1[7] ==
                        (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._72_4_);
            auVar16._12_4_ =
                 -(uint)(param_1[5] ==
                         (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._44_4_ &&
                        param_1[8] ==
                        (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._76_4_);
            if ((ushort)((ushort)(SUB161(auVar16 >> 7,0) & 1) |
                         (ushort)(SUB161(auVar16 >> 0xf,0) & 1) << 1 |
                         (ushort)(SUB161(auVar16 >> 0x17,0) & 1) << 2 |
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
                        (ushort)(byte)(auVar16._12_4_ >> 0x1f) << 0xf) != 0xffff) break;
          }
          FUN_00eae9a0();
          uVar6 = 1;
          goto LAB_004a605b;
        }
      }
      break;
    case (undefined *)0xf:
      sVar2 = *(short *)(param_1 + 2);
      if (sVar2 == 0x42) {
        if (param_1 != &PTR_DAT_01b53718) {
          auVar11._0_4_ =
               -(uint)(param_1[2] == (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._96_4_
                      && *(int *)((int)param_1 + 0x16) ==
                         u_QuarticEaseInOutElasticEQuadrati_018ce360._16_4_);
          auVar11._4_4_ =
               -(uint)(param_1[3] ==
                       (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._100_4_ &&
                      *(int *)((int)param_1 + 0x1a) ==
                      u_QuarticEaseInOutElasticEQuadrati_018ce360._20_4_);
          auVar11._8_4_ =
               -(uint)(param_1[4] ==
                       (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._104_4_ &&
                      *(int *)((int)param_1 + 0x1e) ==
                      u_QuarticEaseInOutElasticEQuadrati_018ce360._24_4_);
          auVar11._12_4_ =
               -(uint)(param_1[5] ==
                       (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._108_4_ &&
                      *(int *)((int)param_1 + 0x22) ==
                      u_QuarticEaseInOutElasticEQuadrati_018ce360._28_4_);
          if ((ushort)((ushort)(SUB161(auVar11 >> 7,0) & 1) |
                       (ushort)(SUB161(auVar11 >> 0xf,0) & 1) << 1 |
                       (ushort)(SUB161(auVar11 >> 0x17,0) & 1) << 2 |
                       (ushort)(SUB161(auVar11 >> 0x1f,0) & 1) << 3 |
                       (ushort)(SUB161(auVar11 >> 0x27,0) & 1) << 4 |
                       (ushort)(SUB161(auVar11 >> 0x2f,0) & 1) << 5 |
                       (ushort)(SUB161(auVar11 >> 0x37,0) & 1) << 6 |
                       (ushort)(SUB161(auVar11 >> 0x3f,0) & 1) << 7 |
                       (ushort)(SUB161(auVar11 >> 0x47,0) & 1) << 8 |
                       (ushort)(SUB161(auVar11 >> 0x4f,0) & 1) << 9 |
                       (ushort)(SUB161(auVar11 >> 0x57,0) & 1) << 10 |
                       (ushort)(SUB161(auVar11 >> 0x5f,0) & 1) << 0xb |
                       (ushort)((byte)(auVar11._12_4_ >> 7) & 1) << 0xc |
                       (ushort)((byte)(auVar11._12_4_ >> 0xf) & 1) << 0xd |
                       (ushort)((byte)(auVar11._12_4_ >> 0x17) & 1) << 0xe |
                      (ushort)(byte)(auVar11._12_4_ >> 0x1f) << 0xf) != 0xffff) break;
        }
        FUN_00eae9a0();
        uVar6 = 1;
        goto LAB_004a605b;
      }
      if (sVar2 == 0x43) {
        if (param_1 != &PTR_DAT_01b5de28) {
          auVar12._0_4_ =
               -(uint)(param_1[2] ==
                       (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._112_4_ &&
                      *(int *)((int)param_1 + 0x16) ==
                      u_QuarticEaseInOutElasticEQuadrati_018ce360._128_4_);
          auVar12._4_4_ =
               -(uint)(param_1[3] ==
                       (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._116_4_ &&
                      *(int *)((int)param_1 + 0x1a) ==
                      u_QuarticEaseInOutElasticEQuadrati_018ce360._132_4_);
          auVar12._8_4_ =
               -(uint)(param_1[4] ==
                       (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._120_4_ &&
                      *(int *)((int)param_1 + 0x1e) ==
                      u_QuarticEaseInOutElasticEQuadrati_018ce360._136_4_);
          auVar12._12_4_ =
               -(uint)(param_1[5] ==
                       (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._124_4_ &&
                      *(int *)((int)param_1 + 0x22) ==
                      u_QuarticEaseInOutElasticEQuadrati_018ce360._140_4_);
          if ((ushort)((ushort)(SUB161(auVar12 >> 7,0) & 1) |
                       (ushort)(SUB161(auVar12 >> 0xf,0) & 1) << 1 |
                       (ushort)(SUB161(auVar12 >> 0x17,0) & 1) << 2 |
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
                      (ushort)(byte)(auVar12._12_4_ >> 0x1f) << 0xf) != 0xffff) break;
        }
        FUN_00eae9a0();
        uVar6 = 1;
        goto LAB_004a605b;
      }
      if (sVar2 == 0x51) {
        if (param_1 != &PTR_DAT_01ba0098) {
          auVar13._0_4_ =
               -(uint)(param_1[2] == (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._48_4_
                      && *(int *)((int)param_1 + 0x16) ==
                         u_QuarticEaseInOutElasticEQuadrati_018ce360._144_4_);
          auVar13._4_4_ =
               -(uint)(param_1[3] == (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._52_4_
                      && *(int *)((int)param_1 + 0x1a) ==
                         u_QuarticEaseInOutElasticEQuadrati_018ce360._148_4_);
          auVar13._8_4_ =
               -(uint)(param_1[4] == (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._56_4_
                      && *(int *)((int)param_1 + 0x1e) ==
                         u_QuarticEaseInOutElasticEQuadrati_018ce360._152_4_);
          auVar13._12_4_ =
               -(uint)(param_1[5] == (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._60_4_
                      && *(int *)((int)param_1 + 0x22) ==
                         u_QuarticEaseInOutElasticEQuadrati_018ce360._156_4_);
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
                      (ushort)(byte)(auVar13._12_4_ >> 0x1f) << 0xf) != 0xffff) break;
        }
        FUN_00eae9a0();
        uVar6 = 1;
        goto LAB_004a605b;
      }
      break;
    case (undefined *)0x10:
      uVar1 = *(ushort *)((int)param_1 + 0xe);
      if (uVar1 < 0x6f) {
        if (uVar1 == 100) {
          if (param_1 != &PTR_DAT_01ba00f8) {
            auVar9._0_4_ = -(uint)(param_1[2] ==
                                   (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._48_4_
                                  && param_1[6] ==
                                     (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._64_4_
                                  );
            auVar9._4_4_ = -(uint)(param_1[3] ==
                                   (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._52_4_
                                  && param_1[7] ==
                                     (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._68_4_
                                  );
            auVar9._8_4_ = -(uint)(param_1[4] ==
                                   (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._56_4_
                                  && param_1[8] ==
                                     (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._72_4_
                                  );
            auVar9._12_4_ =
                 -(uint)(param_1[5] ==
                         (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._60_4_ &&
                        param_1[9] ==
                        (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._76_4_);
            if ((ushort)((ushort)(SUB161(auVar9 >> 7,0) & 1) |
                         (ushort)(SUB161(auVar9 >> 0xf,0) & 1) << 1 |
                         (ushort)(SUB161(auVar9 >> 0x17,0) & 1) << 2 |
                         (ushort)(SUB161(auVar9 >> 0x1f,0) & 1) << 3 |
                         (ushort)(SUB161(auVar9 >> 0x27,0) & 1) << 4 |
                         (ushort)(SUB161(auVar9 >> 0x2f,0) & 1) << 5 |
                         (ushort)(SUB161(auVar9 >> 0x37,0) & 1) << 6 |
                         (ushort)(SUB161(auVar9 >> 0x3f,0) & 1) << 7 |
                         (ushort)(SUB161(auVar9 >> 0x47,0) & 1) << 8 |
                         (ushort)(SUB161(auVar9 >> 0x4f,0) & 1) << 9 |
                         (ushort)(SUB161(auVar9 >> 0x57,0) & 1) << 10 |
                         (ushort)(SUB161(auVar9 >> 0x5f,0) & 1) << 0xb |
                         (ushort)((byte)(auVar9._12_4_ >> 7) & 1) << 0xc |
                         (ushort)((byte)(auVar9._12_4_ >> 0xf) & 1) << 0xd |
                         (ushort)((byte)(auVar9._12_4_ >> 0x17) & 1) << 0xe |
                        (ushort)(byte)(auVar9._12_4_ >> 0x1f) << 0xf) != 0xffff) break;
          }
          FUN_00eae9a0();
          uVar6 = 1;
          goto LAB_004a605b;
        }
        if (uVar1 == 0x6e) {
          if (param_1 != &PTR_DAT_01ba057c) {
            auVar10._0_4_ =
                 -(uint)(param_1[2] ==
                         (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._80_4_ &&
                        param_1[6] ==
                        (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._16_4_);
            auVar10._4_4_ =
                 -(uint)(param_1[3] ==
                         (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._84_4_ &&
                        param_1[7] ==
                        (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._20_4_);
            auVar10._8_4_ =
                 -(uint)(param_1[4] ==
                         (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._88_4_ &&
                        param_1[8] ==
                        (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._24_4_);
            auVar10._12_4_ =
                 -(uint)(param_1[5] ==
                         (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._92_4_ &&
                        param_1[9] ==
                        (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._28_4_);
            if ((ushort)((ushort)(SUB161(auVar10 >> 7,0) & 1) |
                         (ushort)(SUB161(auVar10 >> 0xf,0) & 1) << 1 |
                         (ushort)(SUB161(auVar10 >> 0x17,0) & 1) << 2 |
                         (ushort)(SUB161(auVar10 >> 0x1f,0) & 1) << 3 |
                         (ushort)(SUB161(auVar10 >> 0x27,0) & 1) << 4 |
                         (ushort)(SUB161(auVar10 >> 0x2f,0) & 1) << 5 |
                         (ushort)(SUB161(auVar10 >> 0x37,0) & 1) << 6 |
                         (ushort)(SUB161(auVar10 >> 0x3f,0) & 1) << 7 |
                         (ushort)(SUB161(auVar10 >> 0x47,0) & 1) << 8 |
                         (ushort)(SUB161(auVar10 >> 0x4f,0) & 1) << 9 |
                         (ushort)(SUB161(auVar10 >> 0x57,0) & 1) << 10 |
                         (ushort)(SUB161(auVar10 >> 0x5f,0) & 1) << 0xb |
                         (ushort)((byte)(auVar10._12_4_ >> 7) & 1) << 0xc |
                         (ushort)((byte)(auVar10._12_4_ >> 0xf) & 1) << 0xd |
                         (ushort)((byte)(auVar10._12_4_ >> 0x17) & 1) << 0xe |
                        (ushort)(byte)(auVar10._12_4_ >> 0x1f) << 0xf) != 0xffff) break;
          }
          FUN_00eae9a0();
          uVar6 = 1;
          goto LAB_004a605b;
        }
      }
      else {
        if (uVar1 == 0x72) {
          if (param_1 != &PTR_DAT_01ba02a8) {
            auVar7._0_4_ = -(uint)(param_1[2] ==
                                   (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._0_4_ &&
                                  param_1[6] ==
                                  (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._16_4_);
            auVar7._4_4_ = -(uint)(param_1[3] ==
                                   (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._4_4_ &&
                                  param_1[7] ==
                                  (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._20_4_);
            auVar7._8_4_ = -(uint)(param_1[4] ==
                                   (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._8_4_ &&
                                  param_1[8] ==
                                  (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._24_4_);
            auVar7._12_4_ =
                 -(uint)(param_1[5] ==
                         (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._12_4_ &&
                        param_1[9] ==
                        (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._28_4_);
            if ((ushort)((ushort)(SUB161(auVar7 >> 7,0) & 1) |
                         (ushort)(SUB161(auVar7 >> 0xf,0) & 1) << 1 |
                         (ushort)(SUB161(auVar7 >> 0x17,0) & 1) << 2 |
                         (ushort)(SUB161(auVar7 >> 0x1f,0) & 1) << 3 |
                         (ushort)(SUB161(auVar7 >> 0x27,0) & 1) << 4 |
                         (ushort)(SUB161(auVar7 >> 0x2f,0) & 1) << 5 |
                         (ushort)(SUB161(auVar7 >> 0x37,0) & 1) << 6 |
                         (ushort)(SUB161(auVar7 >> 0x3f,0) & 1) << 7 |
                         (ushort)(SUB161(auVar7 >> 0x47,0) & 1) << 8 |
                         (ushort)(SUB161(auVar7 >> 0x4f,0) & 1) << 9 |
                         (ushort)(SUB161(auVar7 >> 0x57,0) & 1) << 10 |
                         (ushort)(SUB161(auVar7 >> 0x5f,0) & 1) << 0xb |
                         (ushort)((byte)(auVar7._12_4_ >> 7) & 1) << 0xc |
                         (ushort)((byte)(auVar7._12_4_ >> 0xf) & 1) << 0xd |
                         (ushort)((byte)(auVar7._12_4_ >> 0x17) & 1) << 0xe |
                        (ushort)(byte)(auVar7._12_4_ >> 0x1f) << 0xf) != 0xffff) break;
          }
          FUN_00eae9a0();
          uVar6 = 1;
          goto LAB_004a605b;
        }
        if (uVar1 == 0x73) {
          if (param_1 != &PTR_DAT_01b6e314) {
            auVar8._0_4_ = -(uint)(param_1[2] ==
                                   (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._32_4_
                                  && param_1[6] ==
                                     (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._16_4_
                                  );
            auVar8._4_4_ = -(uint)(param_1[3] ==
                                   (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._36_4_
                                  && param_1[7] ==
                                     (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._20_4_
                                  );
            auVar8._8_4_ = -(uint)(param_1[4] ==
                                   (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._40_4_
                                  && param_1[8] ==
                                     (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._24_4_
                                  );
            auVar8._12_4_ =
                 -(uint)(param_1[5] ==
                         (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._44_4_ &&
                        param_1[9] ==
                        (undefined *)u_QuarticEaseInOutElasticEQuadrati_018ce360._28_4_);
            if ((ushort)((ushort)(SUB161(auVar8 >> 7,0) & 1) |
                         (ushort)(SUB161(auVar8 >> 0xf,0) & 1) << 1 |
                         (ushort)(SUB161(auVar8 >> 0x17,0) & 1) << 2 |
                         (ushort)(SUB161(auVar8 >> 0x1f,0) & 1) << 3 |
                         (ushort)(SUB161(auVar8 >> 0x27,0) & 1) << 4 |
                         (ushort)(SUB161(auVar8 >> 0x2f,0) & 1) << 5 |
                         (ushort)(SUB161(auVar8 >> 0x37,0) & 1) << 6 |
                         (ushort)(SUB161(auVar8 >> 0x3f,0) & 1) << 7 |
                         (ushort)(SUB161(auVar8 >> 0x47,0) & 1) << 8 |
                         (ushort)(SUB161(auVar8 >> 0x4f,0) & 1) << 9 |
                         (ushort)(SUB161(auVar8 >> 0x57,0) & 1) << 10 |
                         (ushort)(SUB161(auVar8 >> 0x5f,0) & 1) << 0xb |
                         (ushort)((byte)(auVar8._12_4_ >> 7) & 1) << 0xc |
                         (ushort)((byte)(auVar8._12_4_ >> 0xf) & 1) << 0xd |
                         (ushort)((byte)(auVar8._12_4_ >> 0x17) & 1) << 0xe |
                        (ushort)(byte)(auVar8._12_4_ >> 0x1f) << 0xf) != 0xffff) break;
          }
          FUN_00eae9a0();
          uVar6 = 1;
          goto LAB_004a605b;
        }
      }
      break;
    case (undefined *)0x11:
      if (puVar3 == (undefined *)0x0) {
LAB_004a606a:
                    /* WARNING: Subroutine does not return */
        FUN_009c2bf0();
      }
      if (*(short *)(param_1 + 2) == 0x43) {
        iVar5 = FUN_00905410();
        if (iVar5 != 0) {
          FUN_00eae9a0();
          uVar6 = 1;
          goto LAB_004a605b;
        }
      }
      else if ((*(short *)(param_1 + 2) == 0x45) && (iVar5 = FUN_00905410(), iVar5 != 0)) {
        FUN_00eae9a0();
        uVar6 = 1;
        goto LAB_004a605b;
      }
      break;
    case (undefined *)0x12:
      if (puVar3 == (undefined *)0x0) goto LAB_004a606a;
      if (*(short *)(param_1 + 2) == 0x45) {
        iVar5 = FUN_00905410();
        if (iVar5 != 0) {
          FUN_00eae9a0();
          uVar6 = 1;
          goto LAB_004a605b;
        }
      }
      else if ((*(short *)(param_1 + 2) == 0x51) && (iVar5 = FUN_00905410(), iVar5 != 0)) {
        FUN_00eae9a0();
        uVar6 = 1;
        goto LAB_004a605b;
      }
      break;
    case (undefined *)0x14:
      iVar5 = FUN_00905410();
      if (iVar5 != 0) {
        FUN_00eae9a0();
        uVar6 = 1;
        goto LAB_004a605b;
      }
    }
  }
  uVar6 = 0;
LAB_004a605b:
  FUN_00eaeca8();
  return uVar6;
}

