/* Address: 009a7d60 | Ghidra name: FUN_009a7d60 */

/* WARNING: Removing unreachable block (ram,0x009a7e5f) */
/* WARNING: Removing unreachable block (ram,0x009a8184) */
/* WARNING: Removing unreachable block (ram,0x009a815d) */
/* WARNING: Removing unreachable block (ram,0x009a81a9) */
/* WARNING: Removing unreachable block (ram,0x009a80d1) */
/* WARNING: Removing unreachable block (ram,0x009a8117) */
/* WARNING: Removing unreachable block (ram,0x009a818f) */
/* WARNING: Removing unreachable block (ram,0x009a81a7) */
/* WARNING: Type propagation algorithm not settling */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined4 __fastcall FUN_009a7d60(undefined4 param_1,int param_2)

{
  bool bVar1;
  bool bVar2;
  bool bVar3;
  bool bVar4;
  int iVar5;
  undefined4 uVar6;
  undefined1 auVar7 [16];
  undefined1 auVar8 [16];
  undefined1 auVar9 [16];
  undefined1 auVar10 [16];
  undefined4 uStack_24;
  undefined4 local_20;
  undefined4 uStack_1c;
  int iStack_18;
  int iStack_14;
  
  uStack_24 = 0;
  local_20 = 0;
  uStack_1c = 0;
  iStack_18 = 0;
  iStack_14 = 0;
  iVar5 = FUN_009a87c0(&iStack_18);
  if ((((iVar5 != 0) && (iStack_18 == 3)) && (iStack_14 != 0)) && (*(int *)(iStack_14 + 4) != 0)) {
    uStack_1c = 0;
    local_20 = 0;
    uStack_24 = 0;
    uVar6 = 0;
    bVar4 = false;
    bVar3 = false;
    bVar2 = false;
    bVar1 = false;
    iVar5 = FUN_009a87c0(&iStack_18);
    while (iVar5 != 0) {
      if (iStack_18 == 4) {
        FUN_00eaeca8();
        FUN_00eaecdd();
        FUN_00eaed47();
        FUN_00eaeca8();
        *(undefined4 *)(param_2 + 0x10) = uVar6;
        return 1;
      }
      if (iStack_18 != 2) {
        return 0;
      }
      iVar5 = FUN_009a87c0(&iStack_18);
      if (iVar5 == 0) {
        return 0;
      }
      if (iStack_18 != 3) {
        return 0;
      }
      iVar5 = FUN_009a87c0(&iStack_18);
      if (iVar5 == 0) {
        return 0;
      }
      if (iStack_18 != 1) {
        return 0;
      }
      iVar5 = FUN_009a87c0(&iStack_18);
      if (iVar5 == 0) {
        return 0;
      }
      if (iStack_18 != 3) {
        return 0;
      }
      if ((_DAT_00000004 == 7) &&
         ((_DAT_00000014 | 0x20) == 0x6e &&
          ((CONCAT22(uRam00000012,uRam00000010) | 0x200020) == 0x6f0069 &&
          ((CONCAT22(_DAT_0000000e,_DAT_0000000c) | 0x200020) == 0x730072 &&
          (CONCAT22(uRam0000000a,_DAT_00000008) | 0x200020) == 0x650076)))) {
        if (bVar4) {
          return 0;
        }
        bVar4 = true;
        iVar5 = FUN_009a82e0();
joined_r0x009a823c:
        if (iVar5 == 0) {
          return 0;
        }
      }
      else {
        if ((_DAT_00000004 == 7) &&
           ((_DAT_00000014 | 0x20) == 0x65 &&
            ((CONCAT22(uRam00000012,uRam00000010) | 0x200020) == 0x720075 &&
            ((CONCAT22(_DAT_0000000e,_DAT_0000000c) | 0x200020) == 0x74006c &&
            (CONCAT22(uRam0000000a,_DAT_00000008) | 0x200020) == 0x750063)))) {
          if (bVar3) {
            return 0;
          }
          bVar3 = true;
          iVar5 = FUN_009a84f0();
          goto joined_r0x009a823c;
        }
        if (_DAT_00000004 == 0xe) {
          auVar7._0_4_ = -(uint)((CONCAT22(uRam0000000a,_DAT_00000008) | _DAT_018dbb10) ==
                                 _DAT_018dbb20 &&
                                (_DAT_018dbb10 | CONCAT22(uRam00000016,_DAT_00000014)) ==
                                _DAT_018dbb30);
          auVar7._4_4_ = -(uint)((CONCAT22(_DAT_0000000e,_DAT_0000000c) | _UNK_018dbb14) ==
                                 _UNK_018dbb24 &&
                                (_UNK_018dbb14 | CONCAT22(uRam0000001a,uRam00000018)) ==
                                _UNK_018dbb34);
          auVar7._8_4_ = -(uint)((CONCAT22(uRam00000012,uRam00000010) | _UNK_018dbb18) ==
                                 _UNK_018dbb28 &&
                                (_UNK_018dbb18 | CONCAT22(uRam0000001e,uRam0000001c)) ==
                                _UNK_018dbb38);
          auVar7._12_4_ =
               -(uint)((CONCAT22(uRam00000016,_DAT_00000014) | _UNK_018dbb1c) == _UNK_018dbb2c &&
                      (_UNK_018dbb1c | uRam00000020) == _UNK_018dbb3c);
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
                      (ushort)(byte)(auVar7._12_4_ >> 0x1f) << 0xf) == 0xffff) {
            if (bVar2) {
              return 0;
            }
            bVar2 = true;
            iVar5 = FUN_009a8560(&uStack_24);
            goto joined_r0x009a823c;
          }
        }
        if (_DAT_00000004 == 9) {
          auVar8._0_4_ = -(uint)((CONCAT22(uRam0000000a,_DAT_00000008) | _DAT_018dbb10) ==
                                 _DAT_018dbb20 &&
                                (CONCAT22(_DAT_0000000c,uRam0000000a) | _DAT_018dbb10) ==
                                _DAT_018dbb40);
          auVar8._4_4_ = -(uint)((CONCAT22(_DAT_0000000e,_DAT_0000000c) | _UNK_018dbb14) ==
                                 _UNK_018dbb24 &&
                                (CONCAT22(uRam00000010,_DAT_0000000e) | _UNK_018dbb14) ==
                                _UNK_018dbb44);
          auVar8._8_4_ = -(uint)((CONCAT22(uRam00000012,uRam00000010) | _UNK_018dbb18) ==
                                 _UNK_018dbb28 &&
                                (CONCAT22(_DAT_00000014,uRam00000012) | _UNK_018dbb18) ==
                                _UNK_018dbb48);
          auVar8._12_4_ =
               -(uint)((CONCAT22(uRam00000016,_DAT_00000014) | _UNK_018dbb1c) == _UNK_018dbb2c &&
                      (CONCAT22(uRam00000018,uRam00000016) | _UNK_018dbb1c) == _UNK_018dbb4c);
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
                      (ushort)(byte)(auVar8._12_4_ >> 0x1f) << 0xf) != 0xffff) goto LAB_009a7fdf;
          if (bVar2) {
            return 0;
          }
          bVar2 = true;
          iVar5 = FUN_009a8560(&uStack_24);
          if (iVar5 == 0) {
            return 0;
          }
          uVar6 = 1;
        }
        else {
LAB_009a7fdf:
          iVar5 = FUN_009052e0(5);
          if (iVar5 != 0) {
            if (bVar1) {
              return 0;
            }
            bVar1 = true;
            iVar5 = FUN_009a8620();
            goto joined_r0x009a823c;
          }
          if (_DAT_00000004 == 0xc) {
            auVar9._0_4_ = -(uint)((CONCAT22(uRam0000000a,_DAT_00000008) | _DAT_018dbb10) ==
                                   _DAT_018dbb50 &&
                                  (CONCAT22(uRam00000012,uRam00000010) | _DAT_018dbb10) ==
                                  _DAT_018dbb60);
            auVar9._4_4_ = -(uint)((CONCAT22(_DAT_0000000e,_DAT_0000000c) | _UNK_018dbb14) ==
                                   _UNK_018dbb54 &&
                                  (CONCAT22(uRam00000016,_DAT_00000014) | _UNK_018dbb14) ==
                                  _UNK_018dbb64);
            auVar9._8_4_ = -(uint)((CONCAT22(uRam00000012,uRam00000010) | _UNK_018dbb18) ==
                                   _UNK_018dbb58 &&
                                  (CONCAT22(uRam0000001a,uRam00000018) | _UNK_018dbb18) ==
                                  _UNK_018dbb68);
            auVar9._12_4_ =
                 -(uint)((CONCAT22(uRam00000016,_DAT_00000014) | _UNK_018dbb1c) == _UNK_018dbb5c &&
                        (CONCAT22(uRam0000001e,uRam0000001c) | _UNK_018dbb1c) == _UNK_018dbb6c);
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
                        (ushort)(byte)(auVar9._12_4_ >> 0x1f) << 0xf) == 0xffff) {
              return 0;
            }
          }
          if (_DAT_00000004 == 0xb) {
            auVar10._0_4_ =
                 -(uint)((CONCAT22(uRam0000000a,_DAT_00000008) | _DAT_018dbb10) == _DAT_018dbb70 &&
                        (CONCAT22(uRam00000010,_DAT_0000000e) | _DAT_018dbb10) == _DAT_018dbb80);
            auVar10._4_4_ =
                 -(uint)((CONCAT22(_DAT_0000000e,_DAT_0000000c) | _UNK_018dbb14) == _UNK_018dbb74 &&
                        (CONCAT22(_DAT_00000014,uRam00000012) | _UNK_018dbb14) == _UNK_018dbb84);
            auVar10._8_4_ =
                 -(uint)((CONCAT22(uRam00000012,uRam00000010) | _UNK_018dbb18) == _UNK_018dbb78 &&
                        (CONCAT22(uRam00000018,uRam00000016) | _UNK_018dbb18) == _UNK_018dbb88);
            auVar10._12_4_ =
                 -(uint)((CONCAT22(uRam00000016,_DAT_00000014) | _UNK_018dbb1c) == _UNK_018dbb7c &&
                        (CONCAT22(uRam0000001c,uRam0000001a) | _UNK_018dbb1c) == _UNK_018dbb8c);
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
                        (ushort)(byte)(auVar10._12_4_ >> 0x1f) << 0xf) == 0xffff) {
              return 0;
            }
          }
        }
      }
      iVar5 = FUN_009a87c0(&iStack_18);
    }
  }
  return 0;
}

