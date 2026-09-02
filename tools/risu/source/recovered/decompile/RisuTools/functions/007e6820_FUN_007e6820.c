/* Address: 007e6820 | Ghidra name: FUN_007e6820 */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void __fastcall FUN_007e6820(int *param_1)

{
  int iVar1;
  undefined **ppuVar2;
  undefined4 uVar3;
  int iVar4;
  int iVar5;
  undefined1 auVar6 [16];
  undefined1 auVar7 [16];
  undefined4 uVar8;
  int local_24;
  int iStack_20;
  int iStack_1c;
  int iStack_18;
  int local_14;
  
  local_24 = 0;
  iStack_20 = 0;
  iStack_1c = 0;
  iStack_18 = 0;
  local_14 = 0;
  iVar5 = *param_1;
  switch(param_1[1]) {
  case 0:
    local_14 = param_1[5];
    param_1[5] = 0;
    param_1[1] = -1;
    while( true ) {
      if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      iStack_18 = FUN_0077b730(&PTR_DAT_01be6b2c,&PTR_DAT_01b9b86c);
      if ((*(uint *)(iStack_18 + 0x1c) & 0x1600000) == 0) {
        param_1[1] = 1;
        FUN_00eaeca8();
        FUN_00da1200();
        FUN_00dfca00(&PTR_DAT_01557398);
        return;
      }
LAB_007e6b70:
      if ((*(uint *)(iStack_18 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      ppuVar2 = *(undefined ***)(iStack_18 + 0x20);
      if (((ppuVar2 != (undefined **)0x0) && (ppuVar2[1] != (undefined *)0x0)) &&
         (ppuVar2 != &PTR_DAT_01bd0158)) break;
LAB_007e6d58:
      param_1[2] = param_1[2] + 1;
LAB_007e6cfd:
      if (0xe < param_1[2]) goto LAB_007e6c10;
      local_14 = FUN_00975000(*(undefined4 *)(iVar5 + 0x1c));
      if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
        param_1[1] = 0;
        FUN_00eaeca8();
        FUN_00da1200();
        FUN_00dfc9c0();
        return;
      }
    }
    if (ppuVar2[1] == (undefined *)0xc) {
      auVar7._0_4_ = -(uint)(ppuVar2[2] == _DAT_018d6050 && ppuVar2[4] == _DAT_018d6060);
      auVar7._4_4_ = -(uint)(ppuVar2[3] == _UNK_018d6054 && ppuVar2[5] == _UNK_018d6064);
      auVar7._8_4_ = -(uint)(ppuVar2[4] == _UNK_018d6058 && ppuVar2[6] == _UNK_018d6068);
      auVar7._12_4_ = -(uint)(ppuVar2[5] == _UNK_018d605c && ppuVar2[7] == _UNK_018d606c);
      if ((ushort)((ushort)(SUB161(auVar7 >> 7,0) & 1) | (ushort)(SUB161(auVar7 >> 0xf,0) & 1) << 1
                   | (ushort)(SUB161(auVar7 >> 0x17,0) & 1) << 2 |
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
                  (ushort)(byte)(auVar7._12_4_ >> 0x1f) << 0xf) == 0xffff) goto LAB_007e6d58;
    }
    iVar4 = FUN_00905b10(0);
    if (iVar4 != 0) goto LAB_007e6d58;
    *(undefined1 *)(param_1 + 3) = 1;
LAB_007e6c10:
    if ((char)param_1[3] == '\0') {
      FUN_007876b0();
      goto LAB_007e6ebc;
    }
    local_14 = FUN_00975000(*(undefined4 *)(iVar5 + 0x1c));
    if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
      param_1[1] = 2;
      FUN_00eaeca8();
      FUN_00da1200();
      FUN_00dfc9c0();
      return;
    }
    break;
  case 1:
    iStack_18 = param_1[6];
    param_1[6] = 0;
    param_1[1] = -1;
    goto LAB_007e6b70;
  case 2:
    local_14 = param_1[5];
    param_1[5] = 0;
    param_1[1] = -1;
    break;
  case 3:
    iStack_18 = param_1[6];
    param_1[6] = 0;
    param_1[1] = -1;
    goto LAB_007e6a3d;
  case 4:
    local_14 = param_1[5];
    param_1[5] = 0;
    param_1[1] = -1;
    goto LAB_007e69b4;
  case 5:
    iStack_1c = param_1[7];
    param_1[7] = 0;
    param_1[1] = -1;
    goto LAB_007e68f3;
  case 6:
    iStack_20 = param_1[8];
    param_1[8] = 0;
    param_1[1] = -1;
    goto LAB_007e686b;
  default:
    FUN_007876b0();
    FUN_00787780();
    FUN_00787630();
    FUN_0077b7e0(0x3d3);
    *(undefined1 *)(param_1 + 3) = 0;
    param_1[2] = 0;
    goto LAB_007e6cfd;
  }
  if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  FUN_00787630();
  iStack_18 = FUN_0077b730(&PTR_DAT_01be6b2c,&PTR_DAT_01b9b86c);
  if ((*(uint *)(iStack_18 + 0x1c) & 0x1600000) == 0) {
    param_1[1] = 3;
    FUN_00eaeca8();
    FUN_00da1200();
    FUN_00dfca00(&PTR_DAT_01557398);
    return;
  }
LAB_007e6a3d:
  if ((*(uint *)(iStack_18 + 0x1c) & 0x11000000) != 0x1000000) {
    FUN_0099dbc0();
  }
  ppuVar2 = *(undefined ***)(iStack_18 + 0x20);
  if (((ppuVar2 == (undefined **)0x0) || (ppuVar2[1] == (undefined *)0x0)) ||
     (ppuVar2 == &PTR_DAT_01bd0158)) {
LAB_007e6ab8:
    FUN_007876b0();
    goto LAB_007e6ebc;
  }
  if (ppuVar2[1] == (undefined *)0xc) {
    auVar6._0_4_ = -(uint)(ppuVar2[2] == _DAT_018d6050 && ppuVar2[4] == _DAT_018d6060);
    auVar6._4_4_ = -(uint)(ppuVar2[3] == _UNK_018d6054 && ppuVar2[5] == _UNK_018d6064);
    auVar6._8_4_ = -(uint)(ppuVar2[4] == _UNK_018d6058 && ppuVar2[6] == _UNK_018d6068);
    auVar6._12_4_ = -(uint)(ppuVar2[5] == _UNK_018d605c && ppuVar2[7] == _UNK_018d606c);
    if ((ushort)((ushort)(SUB161(auVar6 >> 7,0) & 1) | (ushort)(SUB161(auVar6 >> 0xf,0) & 1) << 1 |
                 (ushort)(SUB161(auVar6 >> 0x17,0) & 1) << 2 |
                 (ushort)(SUB161(auVar6 >> 0x1f,0) & 1) << 3 |
                 (ushort)(SUB161(auVar6 >> 0x27,0) & 1) << 4 |
                 (ushort)(SUB161(auVar6 >> 0x2f,0) & 1) << 5 |
                 (ushort)(SUB161(auVar6 >> 0x37,0) & 1) << 6 |
                 (ushort)(SUB161(auVar6 >> 0x3f,0) & 1) << 7 |
                 (ushort)(SUB161(auVar6 >> 0x47,0) & 1) << 8 |
                 (ushort)(SUB161(auVar6 >> 0x4f,0) & 1) << 9 |
                 (ushort)(SUB161(auVar6 >> 0x57,0) & 1) << 10 |
                 (ushort)(SUB161(auVar6 >> 0x5f,0) & 1) << 0xb |
                 (ushort)((byte)(auVar6._12_4_ >> 7) & 1) << 0xc |
                 (ushort)((byte)(auVar6._12_4_ >> 0xf) & 1) << 0xd |
                 (ushort)((byte)(auVar6._12_4_ >> 0x17) & 1) << 0xe |
                (ushort)(byte)(auVar6._12_4_ >> 0x1f) << 0xf) == 0xffff) goto LAB_007e6ab8;
  }
  FUN_00a51650();
  iVar4 = FUN_00a51200();
  if (*(int *)(iVar4 + 0x1c) == 0) {
LAB_007e6e06:
    FUN_007876b0();
  }
  else {
    iVar4 = FUN_00a4f280();
    if (iVar4 == 0) {
                    /* WARNING: Subroutine does not return */
      FUN_00931d20();
    }
    iVar1 = iVar4 + 8;
    uVar3 = *(undefined4 *)(iVar4 + 4);
    iVar4 = iVar1;
    uVar8 = uVar3;
    FUN_00958ea0(iVar1,uVar3);
    iVar4 = FUN_00dd21c0(&local_24,iVar4,uVar8);
    if (iVar4 != 0) {
      if (iVar4 == 1) {
                    /* WARNING: Subroutine does not return */
        FUN_00dca280(iVar1,uVar3);
      }
                    /* WARNING: Subroutine does not return */
      FUN_00de72e0();
    }
    if (local_24 < 1) goto LAB_007e6e06;
    FUN_0077b520(&PTR_DAT_01bde7d0,&PTR_DAT_01b9b86c);
    local_14 = FUN_00975000(*(undefined4 *)(iVar5 + 0x1c));
    if ((*(uint *)(local_14 + 0x1c) & 0x1600000) == 0) {
      param_1[1] = 4;
      FUN_00eaeca8();
      FUN_00da1200();
      FUN_00dfc9c0();
      return;
    }
LAB_007e69b4:
    if ((*(uint *)(local_14 + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    FUN_00787630();
    iStack_1c = FUN_0077b060();
    if ((*(uint *)(iStack_1c + 0x1c) & 0x1600000) == 0) {
      param_1[1] = 5;
      FUN_00eaeca8();
      FUN_00da1200();
      FUN_00dfca00(&PTR_DAT_01569c68);
      return;
    }
LAB_007e68f3:
    if ((*(uint *)(iStack_1c + 0x1c) & 0x11000000) != 0x1000000) {
      FUN_0099dbc0();
    }
    iVar4 = *(int *)(*(int *)(iStack_1c + 0x20) + 8);
    if ((iVar4 == 0) || (iVar4 = FUN_00e51370(&PTR_PTR_0154a108,iVar4,0), iVar4 < 0)) {
      FUN_007876b0();
    }
    else {
      FUN_00787630();
      iStack_20 = FUN_0077b0a0(&PTR_DAT_01bb04a8);
      if ((*(uint *)(iStack_20 + 0x1c) & 0x1600000) == 0) {
        param_1[1] = 6;
        FUN_00eaeca8();
        FUN_00da1200();
        FUN_00dfca00(&PTR_DAT_01553b90);
        return;
      }
LAB_007e686b:
      if ((*(uint *)(iStack_20 + 0x1c) & 0x11000000) != 0x1000000) {
        FUN_0099dbc0();
      }
      if (*(int *)(iStack_20 + 0x20) != 0) {
        FUN_0077ab40(0,1,&PTR_DAT_01bb04a8);
        iVar5 = *(int *)(*(int *)(iVar5 + 4) + 0xb4);
        if (((*(byte *)(iVar5 + 0x34) & 1) == 0) || (*(char *)(iVar5 + 0x38) != '\x01')) {
          FUN_00b6cb10();
        }
      }
    }
  }
  FUN_007876b0();
LAB_007e6ebc:
  param_1[1] = -2;
  if (param_1[4] == 0) {
    if (PTR_FUN_01c22110 != (undefined *)0x0) {
      FUN_00e8eaee();
    }
    FUN_00eaeca8();
  }
  else {
    iVar5 = FUN_00c0a790(0);
    if (iVar5 == 0) {
                    /* WARNING: Subroutine does not return */
      FUN_00931e50();
    }
  }
  return;
}

