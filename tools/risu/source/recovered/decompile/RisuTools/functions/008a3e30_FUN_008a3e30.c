/* Address: 008a3e30 | Ghidra name: FUN_008a3e30 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_008a3e30(int param_1)

{
  undefined *puVar1;
  undefined **ppuVar2;
  undefined4 *puVar3;
  int *piVar4;
  undefined4 uVar5;
  int iVar6;
  undefined4 uVar7;
  int iVar8;
  undefined1 auVar9 [16];
  undefined1 auVar10 [16];
  undefined1 auVar11 [16];
  int local_18;
  
  if (*(int *)(param_1 + 0x2c) == 0) {
    local_18 = *(int *)(param_1 + 0x38);
    *(undefined4 *)(param_1 + 0x38) = 0;
    *(undefined4 *)(param_1 + 0x3c) = 0;
    *(undefined4 *)(param_1 + 0x2c) = 0xffffffff;
LAB_008a3e64:
    if ((*(uint *)(local_18 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
LAB_008a444c:
    uVar7 = FUN_008a34d0();
    FUN_00906aa0(uVar7);
    FUN_00eaeca8();
LAB_008a446c:
    if (*(char *)(param_1 + 0x31) == '\0') {
      iVar8 = FUN_00eaeae1();
      FUN_008a34d0();
      FUN_00eaebca();
      *(undefined ***)(iVar8 + 0xc) = &PTR_DAT_01b47a08;
      FUN_00eaebef();
      *(undefined ***)(iVar8 + 0x14) = &PTR_DAT_01b47a08;
      FUN_008a34d0();
      FUN_00eaebca();
      FUN_00907040();
      uVar7 = FUN_008a34d0();
    }
    else {
      iVar8 = FUN_00eaeae1();
      FUN_008a34d0();
      FUN_00eaebca();
      *(undefined ***)(iVar8 + 0xc) = &PTR_DAT_01b47a08;
      FUN_00eaebef();
      *(undefined ***)(iVar8 + 0x14) = &PTR_DAT_01b47bdc;
      FUN_00eaebef();
      *(undefined ***)(iVar8 + 0x1c) = &PTR_DAT_01b47a08;
      FUN_00eaebef();
      *(undefined ***)(iVar8 + 0x24) = &PTR_DAT_01b47a08;
      FUN_008a34d0();
      FUN_00eaebca();
      FUN_00907040();
      uVar7 = FUN_008a34d0();
    }
    FUN_008a6120(*(int *)(param_1 + 0x18) != 0 | *(byte *)(param_1 + 0x30) |
                 *(byte *)(param_1 + 0x31),1,uVar7);
    if (*(int *)(param_1 + 0x18) != 0) {
      FUN_008a6120(*(byte *)(param_1 + 0x30) | *(byte *)(param_1 + 0x31),1,*(int *)(param_1 + 0x18))
      ;
    }
    if (*(char *)(param_1 + 0x30) != '\0') {
      FUN_008a6120(*(undefined1 *)(param_1 + 0x31),0,*(undefined4 *)(param_1 + 0x10));
    }
    if (*(char *)(param_1 + 0x31) != '\0') {
      FUN_008a6120(1,0,*(undefined4 *)(param_1 + 0x1c));
      FUN_008a6120(1,0,&PTR_DAT_01b439b0);
      FUN_008a6120(0,1,*(undefined4 *)(param_1 + 0x20));
    }
    iVar6 = *(int *)(param_1 + 0xc);
    iVar8 = FUN_00977000();
    if (*(int *)(*(int *)(iVar6 + 4) + 4) + *(int *)(iVar6 + 0x10) < 0x169) {
      FUN_00e8fb7e();
      FUN_00eaec5e();
    }
  }
  else {
    FUN_00890cf0();
    FUN_00eaeca8();
    iVar8 = FUN_00d13860();
    if (iVar8 != 0) {
      FUN_00eaecdd();
    }
    else {
      *(undefined4 *)(param_1 + 0x10) = 0;
    }
    *(bool *)(param_1 + 0x30) = iVar8 != 0;
    if (*(char *)(param_1 + 0x30) == '\0') {
      *(undefined ***)(param_1 + 0x10) = &PTR_DAT_01b8cee8;
LAB_008a3ed9:
      iVar8 = FUN_00d13860();
      if (iVar8 == 0) {
        *(undefined4 *)(param_1 + 0x14) = 0;
      }
      else {
        FUN_00eaecdd();
        iVar8 = FUN_00d13860();
        if (iVar8 == 0) {
          *(undefined4 *)(param_1 + 0x18) = 0;
        }
        else {
          FUN_00eaecdd();
        }
        puVar3 = (undefined4 *)FUN_00d13860();
        if (puVar3 != (undefined4 *)0x0) {
          uVar7 = *puVar3;
          piVar4 = (int *)FUN_00d13860();
          if ((piVar4 == (int *)0x0) ||
             ((ppuVar2 = (undefined **)*piVar4, ppuVar2 != &PTR_DAT_01bf1d6c &&
              (((ppuVar2 == (undefined **)0x0 || (ppuVar2[1] != (undefined *)0x4)) ||
               (ppuVar2[2] != (undefined *)0x720074 || ppuVar2[3] != (undefined *)0x650075)))))) {
            iVar8 = FUN_00df4fc0();
            if (iVar8 == 0) {
              uVar5 = FUN_008cfce0();
              FUN_008a6120(1,0,uVar5);
            }
            else {
              FUN_008a6120(1,1,*(undefined4 *)(*(int *)(param_1 + 4) + 8));
            }
          }
          else {
            uVar5 = *(undefined4 *)(param_1 + 0xc);
            FUN_00906aa0(uVar7);
            uVar5 = FUN_008a34d0(uVar5);
            FUN_008a6120(1,1,uVar5);
            FUN_008a6120(1,0,ppuVar2);
          }
          FUN_008a6120(1,1,uVar7);
          FUN_008a6120(1,1,*(undefined4 *)(param_1 + 0x14));
          uVar7 = FUN_00a007b0();
          FUN_008a6120(1,1,uVar7);
          *(undefined ***)(param_1 + 0x1c) = &PTR_DAT_01be1b24;
          iVar8 = FUN_00d13860();
          *(bool *)(param_1 + 0x31) = iVar8 != 0;
          if (*(char *)(param_1 + 0x31) != '\0') {
            piVar4 = (int *)FUN_00d13860();
            if (piVar4 == (int *)0x0) {
LAB_008a463b:
                    /* WARNING: Subroutine does not return */
              FUN_00e51fb0();
            }
            iVar8 = FUN_00909bb0(4,*(undefined4 *)(*piVar4 + 4),0);
            if (iVar8 != -1) {
              piVar4 = (int *)FUN_00d13860();
              if (piVar4 == (int *)0x0) goto LAB_008a463b;
              iVar6 = FUN_00909bb0(4,*(undefined4 *)(*piVar4 + 4),0);
              if (iVar6 == iVar8) {
                piVar4 = (int *)FUN_00d13860();
                if (piVar4 == (int *)0x0) goto LAB_008a463b;
                iVar8 = FUN_00909bb0(4,*(int *)(*piVar4 + 4) - (iVar8 + 8),iVar8 + 8);
                if (iVar8 == -1) {
                  *(undefined ***)(param_1 + 0x1c) = &PTR_DAT_01be1b3c;
                }
              }
            }
          }
          FUN_008a34b0();
          FUN_00eaeca8();
          iVar8 = FUN_00eaeae1();
          FUN_00eaebef();
          *(undefined ***)(iVar8 + 0xc) = &PTR_DAT_01b47a08;
          FUN_00eaec5e();
          *(undefined ***)(iVar8 + 0x14) = &PTR_DAT_01b47a08;
          FUN_008e2390();
          FUN_00eaebca();
          FUN_00907040();
          FUN_00eaeca8();
          iVar8 = *(int *)(param_1 + 0x10);
          if ((3 < *(int *)(iVar8 + 4)) &&
             (iVar8 = iVar8 + -8 + *(int *)(iVar8 + 4) * 2,
             (*(uint *)(iVar8 + 0xc) | 0x200020) == 0x730073 &&
             (*(uint *)(iVar8 + 8) | 0x200020) == 0x650073)) {
            iVar8 = FUN_00eaeae1();
            FUN_008a34d0();
            FUN_00eaebca();
            *(undefined ***)(iVar8 + 0xc) = &PTR_DAT_01b47a08;
            FUN_00eaebef();
            *(undefined ***)(iVar8 + 0x14) = &PTR_DAT_01b47a08;
            FUN_00eaebef();
            FUN_00907040();
            FUN_00eaeca8();
          }
          uVar7 = FUN_00a007b0();
          FUN_00906aa0(uVar7);
          FUN_00eaeca8();
          ppuVar2 = *(undefined ***)(param_1 + 0x1c);
          if (ppuVar2 == &PTR_DAT_01be1b3c) {
LAB_008a43d9:
            if (*(int *)(*(int *)(param_1 + 8) + 0x14) != 0) {
              local_18 = FUN_00896800(0);
              if ((*(uint *)(local_18 + 0x1c) & 0x1600000) == 0) {
                *(undefined4 *)(param_1 + 0x2c) = 0;
                FUN_00eaecdd();
                *(undefined4 *)(param_1 + 0x3c) = 0;
                FUN_00da8a60(&PTR_DAT_01546fc0);
                FUN_00e05320(&PTR_DAT_0155746c);
                return;
              }
              goto LAB_008a3e64;
            }
            goto LAB_008a444c;
          }
          if ((ppuVar2 != (undefined **)0x0) && (ppuVar2[1] == (undefined *)0x8)) {
            auVar11._0_4_ = -(uint)(ppuVar2[2] == _DAT_018d93c0);
            auVar11._4_4_ = -(uint)(ppuVar2[3] == _UNK_018d93c4);
            auVar11._8_4_ = -(uint)(ppuVar2[4] == _UNK_018d93c8);
            auVar11._12_4_ = -(uint)(ppuVar2[5] == _UNK_018d93cc);
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
                        (ushort)(byte)(auVar11._12_4_ >> 0x1f) << 0xf) == 0xffff) goto LAB_008a43d9;
          }
          goto LAB_008a446c;
        }
      }
    }
    else {
      ppuVar2 = *(undefined ***)(param_1 + 0x10);
      if (((ppuVar2 == &PTR_DAT_01ba5388) ||
          ((((puVar1 = ppuVar2[1], puVar1 == (undefined *)0x7 &&
             (*(short *)(ppuVar2 + 5) == 0x36 &&
              ((((uint)ppuVar2[2] | 0x200020) == 0x680073 && ((uint)ppuVar2[3] | 0x20) == 0x2d0061)
              && ppuVar2[4] == (undefined *)0x350032))) || (ppuVar2 == &PTR_DAT_01b8cee8)) ||
           ((puVar1 == (undefined *)0x3 &&
            (*(short *)(ppuVar2 + 3) == 0x35 && ((uint)ppuVar2[2] | 0x200020) == 0x64006d)))))) ||
         (ppuVar2 == &PTR_DAT_01ba53a4)) goto LAB_008a3ed9;
      if (puVar1 == (undefined *)0xc) {
        auVar9._0_4_ = -(uint)(((uint)ppuVar2[2] | _DAT_018d9360) == u_sha_256__018d9370._0_4_ &&
                              ((uint)ppuVar2[4] | ram0x018d9380) == u_256_sess_018d9388._8_4_);
        auVar9._4_4_ = -(uint)(((uint)ppuVar2[3] | _UNK_018d9364) == u_sha_256__018d9370._4_4_ &&
                              ((uint)ppuVar2[5] | _UNK_018d9384) == u_256_sess_018d9388._12_4_);
        auVar9._8_4_ = -(uint)(((uint)ppuVar2[4] | _UNK_018d9368) == u_sha_256__018d9370._8_4_ &&
                              ((uint)ppuVar2[6] | u_256_sess_018d9388._0_4_) ==
                              u_256_sess_018d9388._16_4_);
        auVar9._12_4_ =
             -(uint)(((uint)ppuVar2[5] | _UNK_018d936c) == u_sha_256__018d9370._12_4_ &&
                    ((uint)ppuVar2[7] | u_256_sess_018d9388._4_4_) == u_256_sess_018d9388._20_4_);
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
                    (ushort)(byte)(auVar9._12_4_ >> 0x1f) << 0xf) == 0xffff) goto LAB_008a3ed9;
      }
      if (ppuVar2 == &PTR_DAT_01b8cefc) goto LAB_008a3ed9;
      if (puVar1 == (undefined *)0x8) {
        auVar10._0_4_ = -(uint)(((uint)ppuVar2[2] | u_256_sess_018d9388._24_4_) == _DAT_018d93b0);
        auVar10._4_4_ = -(uint)(((uint)ppuVar2[3] | u_256_sess_018d9388._28_4_) == _UNK_018d93b4);
        auVar10._8_4_ = -(uint)(((uint)ppuVar2[4] | _UNK_018d93a8) == _UNK_018d93b8);
        auVar10._12_4_ = -(uint)(((uint)ppuVar2[5] | _UNK_018d93ac) == _UNK_018d93bc);
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
                    (ushort)(byte)(auVar10._12_4_ >> 0x1f) << 0xf) == 0xffff) goto LAB_008a3ed9;
      }
    }
    iVar8 = 0;
  }
  *(undefined4 *)(param_1 + 0x2c) = 0xfffffffe;
  *(undefined4 *)(param_1 + 0xc) = 0;
  *(undefined4 *)(param_1 + 0x10) = 0;
  *(undefined4 *)(param_1 + 0x14) = 0;
  *(undefined4 *)(param_1 + 0x18) = 0;
  *(undefined4 *)(param_1 + 0x1c) = 0;
  *(undefined4 *)(param_1 + 0x20) = 0;
  *(undefined4 *)(param_1 + 0x24) = 0;
  *(undefined4 *)(param_1 + 0x28) = 0;
  if (*(int *)(param_1 + 0x34) == 0) {
    if (iVar8 == 0) {
      if (PTR_DAT_01c23d48 != (undefined *)0x0) {
        FUN_00e8f4c2();
      }
    }
    else {
      iVar8 = FUN_00eae9a0();
      *(undefined4 *)(iVar8 + 0x1c) = 0x1000000;
      FUN_00eaec14();
    }
    FUN_00eaeca8();
  }
  else {
    iVar8 = FUN_00cc8af0();
    if (iVar8 == 0) {
                    /* WARNING: Subroutine does not return */
      FUN_00931e50();
    }
  }
  return;
}

