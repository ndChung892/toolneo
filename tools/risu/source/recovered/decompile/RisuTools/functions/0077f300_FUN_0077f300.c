/* Address: 0077f300 | Ghidra name: FUN_0077f300 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_0077f300(int param_1)

{
  undefined **ppuVar1;
  int iVar2;
  bool bVar3;
  undefined1 auVar4 [16];
  undefined1 auVar5 [16];
  int local_10;
  
  if (*(int *)(param_1 + 4) == 0) {
    local_10 = *(int *)(param_1 + 0x10);
    *(undefined4 *)(param_1 + 0x10) = 0;
    *(undefined4 *)(param_1 + 4) = 0xffffffff;
  }
  else {
    local_10 = FUN_0077a680(&PTR_DAT_01c0f488,5000,&PTR_DAT_01be778c);
    if ((*(uint *)(local_10 + 0x1c) & 0x1600000) == 0) {
      *(undefined4 *)(param_1 + 4) = 0;
      FUN_00eaeca8();
      FUN_00d944e0();
      FUN_00dfca00(&PTR_DAT_01557380);
      return;
    }
  }
  if ((*(uint *)(local_10 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  ppuVar1 = *(undefined ***)(local_10 + 0x20);
  if ((ppuVar1 != (undefined **)0x0) && (ppuVar1 != &PTR_DAT_01b910bc)) {
    if (ppuVar1[1] == (undefined *)0x9) {
      auVar4._0_4_ = -(uint)(ppuVar1[2] == _DAT_018d3580 &&
                            *(int *)((int)ppuVar1 + 10) == _DAT_018d3590);
      auVar4._4_4_ = -(uint)(ppuVar1[3] == _UNK_018d3584 &&
                            *(int *)((int)ppuVar1 + 0xe) == _UNK_018d3594);
      auVar4._8_4_ = -(uint)(ppuVar1[4] == _UNK_018d3588 &&
                            *(int *)((int)ppuVar1 + 0x12) == _UNK_018d3598);
      auVar4._12_4_ =
           -(uint)(ppuVar1[5] == _UNK_018d358c && *(int *)((int)ppuVar1 + 0x16) == _UNK_018d359c);
      if ((ushort)((ushort)(SUB161(auVar4 >> 7,0) & 1) | (ushort)(SUB161(auVar4 >> 0xf,0) & 1) << 1
                   | (ushort)(SUB161(auVar4 >> 0x17,0) & 1) << 2 |
                   (ushort)(SUB161(auVar4 >> 0x1f,0) & 1) << 3 |
                   (ushort)(SUB161(auVar4 >> 0x27,0) & 1) << 4 |
                   (ushort)(SUB161(auVar4 >> 0x2f,0) & 1) << 5 |
                   (ushort)(SUB161(auVar4 >> 0x37,0) & 1) << 6 |
                   (ushort)(SUB161(auVar4 >> 0x3f,0) & 1) << 7 |
                   (ushort)(SUB161(auVar4 >> 0x47,0) & 1) << 8 |
                   (ushort)(SUB161(auVar4 >> 0x4f,0) & 1) << 9 |
                   (ushort)(SUB161(auVar4 >> 0x57,0) & 1) << 10 |
                   (ushort)(SUB161(auVar4 >> 0x5f,0) & 1) << 0xb |
                   (ushort)((byte)(auVar4._12_4_ >> 7) & 1) << 0xc |
                   (ushort)((byte)(auVar4._12_4_ >> 0xf) & 1) << 0xd |
                   (ushort)((byte)(auVar4._12_4_ >> 0x17) & 1) << 0xe |
                  (ushort)(byte)(auVar4._12_4_ >> 0x1f) << 0xf) == 0xffff) goto LAB_0077f3ea;
    }
    if (ppuVar1 != &PTR_DAT_01b7bd80) {
      if (ppuVar1[1] == (undefined *)0xc) {
        auVar5._0_4_ = -(uint)(ppuVar1[2] == _DAT_018d35a0 && ppuVar1[4] == _DAT_018d35b0);
        auVar5._4_4_ = -(uint)(ppuVar1[3] == _UNK_018d35a4 && ppuVar1[5] == _UNK_018d35b4);
        auVar5._8_4_ = -(uint)(ppuVar1[4] == _UNK_018d35a8 && ppuVar1[6] == _UNK_018d35b8);
        auVar5._12_4_ = -(uint)(ppuVar1[5] == _UNK_018d35ac && ppuVar1[7] == _UNK_018d35bc);
        if ((ushort)((ushort)(SUB161(auVar5 >> 7,0) & 1) |
                     (ushort)(SUB161(auVar5 >> 0xf,0) & 1) << 1 |
                     (ushort)(SUB161(auVar5 >> 0x17,0) & 1) << 2 |
                     (ushort)(SUB161(auVar5 >> 0x1f,0) & 1) << 3 |
                     (ushort)(SUB161(auVar5 >> 0x27,0) & 1) << 4 |
                     (ushort)(SUB161(auVar5 >> 0x2f,0) & 1) << 5 |
                     (ushort)(SUB161(auVar5 >> 0x37,0) & 1) << 6 |
                     (ushort)(SUB161(auVar5 >> 0x3f,0) & 1) << 7 |
                     (ushort)(SUB161(auVar5 >> 0x47,0) & 1) << 8 |
                     (ushort)(SUB161(auVar5 >> 0x4f,0) & 1) << 9 |
                     (ushort)(SUB161(auVar5 >> 0x57,0) & 1) << 10 |
                     (ushort)(SUB161(auVar5 >> 0x5f,0) & 1) << 0xb |
                     (ushort)((byte)(auVar5._12_4_ >> 7) & 1) << 0xc |
                     (ushort)((byte)(auVar5._12_4_ >> 0xf) & 1) << 0xd |
                     (ushort)((byte)(auVar5._12_4_ >> 0x17) & 1) << 0xe |
                    (ushort)(byte)(auVar5._12_4_ >> 0x1f) << 0xf) == 0xffff) goto LAB_0077f3ea;
      }
      ppuVar1 = (undefined **)FUN_009097a0();
      if (ppuVar1 == &PTR_DAT_01bb3b70) {
        bVar3 = true;
      }
      else if ((ppuVar1 == (undefined **)0x0) || (ppuVar1[1] != (undefined *)0x4)) {
        bVar3 = false;
      }
      else {
        bVar3 = ppuVar1[2] == (undefined *)0x520054 && ppuVar1[3] == (undefined *)0x450055;
      }
      goto LAB_0077f48e;
    }
  }
LAB_0077f3ea:
  bVar3 = false;
LAB_0077f48e:
  *(undefined4 *)(param_1 + 4) = 0xfffffffe;
  if (*(int *)(param_1 + 0xc) == 0) {
    if (bVar3) {
      if (PTR_FUN_01c2211c != (undefined *)0x0) {
        FUN_00e8eaff();
      }
    }
    else if (PTR_FUN_01c2211c != (undefined *)0x0) {
      FUN_00e8eaff();
    }
    FUN_00eaed7c();
  }
  else {
    iVar2 = FUN_00b6e080();
    if (iVar2 == 0) {
                    /* WARNING: Subroutine does not return */
      FUN_00931e50();
    }
  }
  return;
}

